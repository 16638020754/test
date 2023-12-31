using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using Song.Entities;
using WeiSha.Data;

namespace Song.ServiceInterfaces
{
    /// <summary>
    /// 友情链接的管理
    /// </summary>
    public interface ILinks : WeiSha.Core.IBusinessInterface
    {
        #region 友情链接项
        /// <summary>
        /// 添加友情链接
        /// </summary>
        /// <param name="entity">业务实体</param>
        void LinksAdd(Links entity);
        /// <summary>
        /// 申请友链接（外网申请的交换连接）
        /// </summary>
        /// <param name="entity"></param>
        void LinksApply(Links entity);
        /// <summary>
        /// 通过审核（对外网申请的交换连接进行审核）
        /// </summary>
        /// <param name="identify"></param>
        void LinksVerify(Links entity);
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="entity">业务实体</param>
        void LinksSave(Links entity);
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entity">业务实体</param>
        void LinksDelete(Links entity);
        /// <summary>
        /// 删除，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        void LinksDelete(int identify);
        /// <summary>
        /// 删除，按链接项名称
        /// </summary>
        /// <param name="name">链接项名称</param>
        void LinksDelete(int orgid, string name);
        /// <summary>
        /// 获取单一实体对象，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        /// <returns></returns>
        Links LinksSingle(int identify);
        /// <summary>
        /// 获取单一实体对象，按链接项名称
        /// </summary>
        /// <param name="ttl">链接项名称</param>
        /// <returns></returns>
        Links LinksSingle(int orgid, string ttl);
        /// <summary>
        /// 获取同一分类下的最大排序号；
        /// </summary>
        /// <param name="sortId">分类Id</param>
        /// <returns></returns>
        int LinksMaxTaxis(int orgid, int sortId);
        /// 获取某个院系的所有链接项；
        /// </summary>
        /// <param name="isShow">是否显示</param>
        /// <returns></returns>
        Links[] GetLinksAll(int orgid, bool? isShow);
        /// <summary>
        /// 取成情链接
        /// </summary>
        /// <param name="sortId">分类Id，如果为空则取所有</param>
        /// <param name="isShow">是否显示</param>
        /// <param name="isUse">是否使用</param>
        /// <param name="count">取多少条记录，如果小于等于0，则取所有</param>
        /// <returns></returns>
        Links[] GetLinks(int orgid, int sortId, bool? isShow, bool? isUse, int count);
        Links[] GetLinks(int orgid, string sortName, bool? isShow, bool? isUse, int count);
        /// <summary>
        /// 分页获取所有的链接项；
        /// </summary>
        /// <param name="sortId">分类id</param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        Links[] GetLinksPager(int orgid, int sortId, int size, int index, out int countSum);
        /// <summary>
        /// 分页获取所有链接项
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="sortId">分类id</param>
        /// <param name="isUse">是否使用</param>
        /// <param name="isShow">是否显示</param>
        /// <param name="name">按链接名称检索</param>
        /// <param name="link">按链接地址检索</param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        Links[] GetLinksPager(int orgid, int sortId, bool? isUse, bool? isShow, string name,string link, int size, int index, out int countSum);

        /// <summary>
        /// 分页获取所有的链接项；
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="isShow">是否显示</param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        Links[] GetLinksPager(int orgid, bool? isShow, int size, int index, out int countSum);
        #endregion

        #region 友情链接分类项
        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="entity">业务实体</param>
        int SortAdd(LinksSort entity);
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="entity">业务实体</param>
        void SortSave(LinksSort entity);
        /// <summary>
        /// 修改属性
        /// </summary>
        /// <param name="id"></param>
        /// <param name="fiels"></param>
        /// <param name="objs"></param>
        void SortUpdate(int id, Field[] fiels, object[] objs);
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="entity">业务实体</param>
        void SortDelete(LinksSort entity);
        /// <summary>
        /// 删除，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        void SortDelete(int identify);
        /// <summary>
        /// 删除，按分类名称
        /// </summary>
        /// <param name="name">分类名称</param>
        void SortDelete(string name);
        /// <summary>
        /// 获取单一实体对象，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        /// <returns></returns>
        LinksSort SortSingle(int identify);
        /// <summary>
        /// 获取单一实体对象，按分类名称
        /// </summary>
        /// <param name="name">分类名称</param>
        /// <returns></returns>
        LinksSort SortSingle(string name);
        /// <summary>
        /// 获取同一父级下的最大排序号；
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="parentId">父Id</param>
        /// <returns></returns>
        int SortMaxTaxis(int orgid, int parentId);
        /// <summary>
        /// 获取对象；即所有分类；
        /// </summary>
        /// <returns></returns>
        LinksSort[] SortAll(int orgid, bool? isUse, bool? isShow);
        /// <summary>
        /// 取指定条数的友情链接分类
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="isUse"></param>
        /// <param name="isShow"></param>
        /// <param name="count"></param>
        /// <returns></returns>
        LinksSort[] SortCount(int orgid, bool? isUse, bool? isShow, int count);
        /// <summary>
        /// 当前链接分类下，有多少条链接记录
        /// </summary>
        /// <param name="lsid">链接分类id</param>
        /// <param name="isUse">是否启用</param>
        /// <param name="isShow">是否显示</param>
        /// <returns></returns>
        int SortOfCount(int lsid, bool? isUse, bool? isShow);
        /// <summary>
        /// 分页获取
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="isUse"></param>
        /// <param name="isShow"></param>
        /// <param name="searTxt"></param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        LinksSort[] SortPager(int orgid, bool? isUse, bool? isShow, string searTxt, int size, int index, out int countSum);
        /// <summary>
        /// 当前对象名称是否重名
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="entity">业务实体</param>
        /// <returns></returns>
        bool SortIsExist(int orgid, LinksSort entity);
        /// <summary>
        /// 更改链接分类的排序
        /// </summary>
        /// <param name="items">链接分类的实体数组</param>
        /// <returns></returns>
        bool SortUpdateTaxis(Song.Entities.LinksSort[] items);

        #endregion
    }
}
