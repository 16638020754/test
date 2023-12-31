﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Song.ViewData
{
    /// <summary>
    /// 异常处理
    /// </summary>
    public class VExcept : System.Exception
    {

        private int _state = 0;
        /// <summary>
        /// 状态码
        /// </summary>
        public int State
        {
            get
            {
                return _state;
            }
            set
            {
                _state = value;
            }
        }
        private VExcept(string message, int state) : base(message)
        {
            this.State = state;
        }

        /// <summary>
        /// 校验类，初始状态码为10000
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static VExcept Verify(string msg, int state)
        {
            VExcept we = new VExcept(msg, state);
            we.State = 1000 + state;
            return we;
        }
        /// <summary>
        /// 登录校验，初始状态码为20000
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static VExcept Login(string msg, int state)
        {
            VExcept we = new VExcept(msg, state);
            we.State = 2000 + state;
            return we;
        }
        /// <summary>
        /// 系统类错误
        /// </summary>
        /// <param name="msg"></param>
        /// <param name="state"></param>
        /// <returns></returns>
        public static VExcept System(string msg, int state)
        {
            return new VExcept(msg, 9000 + state);
        }
    }
}
