﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using Song.Entities;
using Song.ServiceInterfaces;
using Song.ViewData.Attri;
using WeiSha.Core;
using System.Reflection;
using pili_sdk;
using Newtonsoft.Json.Linq;

namespace Song.ViewData.Methods
{
    /// <summary>
    /// 直播
    /// </summary>
    public class Live : ViewMethod, IViewAPI
    {
        #region 七牛云直播的配置管理
        /// <summary>
        /// 记录直播的各种设置项
        /// </summary>
        /// <param name="letter"></param>
        [HttpPut, HttpGet,HttpPost]
        [Admin]
        public int Setup(Letter letter)
        {
            try
            {
                //记录key
                string akey = letter.GetParameter("AccessKey").String;
                string skey = letter.GetParameter("SecretKey").String;
                if (string.IsNullOrWhiteSpace(akey) || akey.Trim() == "") throw new Exception("AccessKey不可为空");
                if (string.IsNullOrWhiteSpace(skey) || skey.Trim() == "") throw new Exception("SecretKey不可为空");
                Business.Do<ILive>().SetupKey(akey, skey);
                //直播空间
                string space = letter.GetParameter("LiveSpace").String;
                Business.Do<ILive>().SetupLiveSpace(space);
                ////播放域名
                //string rtmp = letter.GetParameter("rtmp").String;
                //string hls = letter.GetParameter("hls").String;
                //string hdl = letter.GetParameter("hdl").String;
                //Business.Do<ILive>().SetupLive(rtmp, hls, hdl);
                ////推流域名
                //Business.Do<ILive>().SetupPublish(letter.GetParameter("Publish").String);

                //HDL直播播放域名，是否启用HTTPS
                Business.Do<ILive>().SetupProtocol(letter.GetParameter("Protocol").String);
                //直播截图的域名
                Business.Do<ILive>().SetupSnapshot(letter.GetParameter("Snapshot").String);
                //点播域名
                Business.Do<ILive>().SetupVod(letter.GetParameter("Vod").String);

                Business.Do<ISystemPara>().Refresh();
                Business.Do<ILive>().Initialization();
                return 1;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }        
        /// <summary>
        /// 获取设置项
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [SuperAdmin]
        public Dictionary<string, string> GetSetup()
        {
            Dictionary<string, string> dic = new Dictionary<string, string>();
            object obj = Business.Do<ILive>();
            Type type = obj.GetType();
            foreach (PropertyInfo pi in type.GetProperties())
            {
                if (pi.Name.StartsWith("Get"))
                {
                    string key = pi.Name.Substring(3);
                    object objResult = pi.GetValue(obj, null);
                    dic.Add(key, objResult == null ? "" : objResult.ToString());
                }
            }
            return dic;
        }
        /// <summary>
        /// 测试链接是否通过
        /// </summary>
        /// <param name="ak">accesskey密钥</param>
        /// <param name="sk">secretkey密钥</param>
        /// <param name="hubname">直播空间名</param>
        /// <returns></returns>
        public bool Test(string ak, string sk, string hubname)
        {
            try
            {
                return Business.Do<ILive>().Test(ak, sk, hubname);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        /// <summary>
        /// 获取七牛云直播流的流信息
        /// </summary>
        /// <param name="name">直播流名称</param>
        /// <returns></returns>
        public pili_sdk.pili.Stream GetStream(string name)
        {
            return pili_sdk.Pili.API<pili_sdk.IStream>().GetForTitle(name);
        }
        /// <summary>
        /// 七牛云直播流的流信息
        /// </summary>
        /// <param name="name">直播流名称</param>
        /// <returns>"liveid":直播流id,"title":直播流名称,"publish":推流地址,"playhls":网页播放地址, "playrtmp":客户端播放地址,"cover":封面</returns>
        public JObject StreamInfo(string name)
        {
            //直播截图的域名
            string snapshot = Business.Do<ILive>().GetSnapshot;
            string proto = Business.Do<ILive>().GetProtocol;    //协议，http还是https
            //直播流
            pili_sdk.pili.Stream stream = Pili.API<IStream>().GetForTitle(name);
            //推流地址
            string publist = string.Format("rtmp://{0}/{1}/{2}", stream.PublishRtmpHost, stream.HubName, stream.Title);
            //播放地址               
            string playhls = string.Format("{0}://{1}/{2}/{3}.m3u8", proto, stream.LiveHlsHost, stream.HubName, stream.Title);
            string playrtmp = string.Format("rtmp://{0}/{1}/{2}.m3u8", stream.PlayRtmpHost, stream.HubName, stream.Title);
            //封面地址
            string cover = string.Empty;
            if (!string.IsNullOrWhiteSpace(snapshot))
                cover = string.Format("http://{0}/{1}/{2}.jpg", snapshot, stream.HubName, stream.Title);

            JObject jo = new JObject();
            jo.Add("liveid", stream.StreamID);
            jo.Add("title", stream.Title);
            jo.Add("publish", publist);
            jo.Add("playhls", playhls);
            jo.Add("playrtmp", playrtmp);
            jo.Add("cover", cover);       
            return jo;
        }
    }
}
