using System;
using System.Collections.Generic;
using System.Text;
using Song.Entities;
using System.Data;
using WeiSha.Data;

namespace Song.ServiceInterfaces
{
    /// <summary>
    /// 试卷的管理
    /// </summary>
    public interface ITestPaper : WeiSha.Core.IBusinessInterface
    {
        #region 试卷管理
        /// <summary>
        /// 添加试卷
        /// </summary>
        /// <param name="entity">试卷对象</param>
        long PaperAdd(TestPaper entity);
        /// <summary>
        /// 修改试卷
        /// </summary>
        /// <param name="entity">业务实体</param>
        void PaperSave(TestPaper entity);
        /// <summary>
        /// 修改试卷的某些项
        /// </summary>
        /// <param name="id">试卷的id</param>
        /// <param name="fiels"></param>
        /// <param name="objs"></param>
        /// <returns></returns>
        bool PaperUpdate(long id, Field[] fiels, object[] objs);
        /// <summary>
        /// 删除试卷，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        void PaperDelete(long identify);
        /// <summary>
        /// 获取单一试卷实体对象，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        /// <returns></returns>
        TestPaper PaperSingle(long identify);
        TestPaper PaperSingle(string name);
        /// <summary>
        /// 获取某个课程的结课考试
        /// </summary>
        /// <param name="couid">课程id</param>
        /// <param name="use"></param>
        /// <returns></returns>
        TestPaper FinalPaper(long couid,bool? use);
        /// <summary>
        /// 获取试卷
        /// </summary>
        /// <param name="orgid">机构id</param>
        /// <param name="sbjid">学科id</param>
        /// <param name="couid">课程id</param>
        /// <param name="diff"></param>
        /// <param name="isUse"></param>
        /// <param name="count"></param>
        /// <returns></returns>
        TestPaper[] PaperCount(int orgid, long sbjid, long couid, int diff, bool? isUse, int count);
        TestPaper[] PaperCount(string search, int orgid, long sbjid, long couid, int diff, bool? isUse, int count);
        /// <summary>
        /// 计算有多少个试卷
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="sbjid"></param>
        /// <param name="couid"></param>
        /// <param name="diff"></param>
        /// <param name="isUse"></param>
        /// <returns></returns>
        int PaperOfCount(int orgid, long sbjid, long couid, int diff, bool? isUse);       
        /// <summary>
        /// 分页获取试卷
        /// </summary>
        /// <param name="orgid">机构id</param>
        /// <param name="sbjid">学科id</param>
        /// <param name="couid"></param>
        /// <param name="diff">难度等级</param>
        /// <param name="isUse">是否使用</param>
        /// <param name="sear">标题检索</param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        TestPaper[] PaperPager(int orgid, long sbjid, long couid, int diff, bool? isUse, string sear, int size, int index, out int countSum);

        #endregion

        #region 试卷的试题项
        /// <summary>
        /// 按课程抽题时，试卷各题型占比与分数
        /// </summary>
        /// <param name="tp">试卷对象</param>
        /// <returns></returns>
        List<TestPaperItem> GetItemForAll(TestPaper tp);
        /// <summary>
        /// 按章节抽题时，各题型占比
        /// </summary>
        /// <param name="tp">试卷对象</param>
        /// <returns></returns>
        List<TestPaperItem> GetItemForOlPercent(TestPaper tp);
        /// <summary>
        /// 按章节抽题时，各章节题型数量
        /// </summary>
        /// <param name="tp">试卷对象</param>
        /// <param name="olid">章节id，如果小于1，则取所有</param>
        /// <returns></returns>
        List<TestPaperItem> GetItemForOlCount(TestPaper tp, long olid);
        /// <summary>
        /// 返回试卷的大项，不管是按课程，还是按章节
        /// </summary>
        /// <param name="tp"></param>
        /// <returns></returns>
        List<TestPaperItem> GetItemForAny(TestPaper tp);
        #endregion

        #region 出卷
        /// <summary>
        /// 出卷，输出试卷内容
        /// </summary>
        /// <param name="tp">试卷对象</param>
        /// <returns></returns>
        Dictionary<TestPaperItem, Questions[]> Putout(TestPaper tp);
        #endregion

        #region 试卷测试的答题
        /// <summary>
        /// 添加测试成绩,返回得分
        /// </summary>
        /// <param name="entity"></param>
        /// <param name="force">强制计算，默认是在客户端计算过成线的，这里强制再计算</param>
        /// <returns>返回得分</returns>
        float ResultsAdd(TestResults entity,bool force);
        /// <summary>
        /// 修改测试成绩,返回得分
        /// </summary>
        /// <param name="entity">业务实体</param>
        /// <param name="force">强制计算，默认是在客户端计算过成线的，这里强制再计算</param>
        /// <returns>返回得分</returns>
        float ResultsSave(TestResults entity, bool force);
        /// <summary>
        /// 计算成绩，根据成绩id
        /// </summary>
        /// <param name="trid"></param>
        /// <returns></returns>
        float ResultsCalc(int trid);
        /// <summary>
        /// 当前考试的及格率
        /// </summary>
        /// <param name="identify"></param>
        /// <returns></returns>
        float ResultsPassrate(long identify);
        /// <summary>
        /// 参考人次
        /// </summary>
        /// <param name="identify"></param>
        /// <returns></returns>
        int ResultsPersontime(long identify);
        /// <summary>
        /// 计算该试卷的所有测试的平均分
        /// </summary>
        /// <param name="identify"></param>
        /// <returns></returns>
        float ResultsAverage(long identify);
        /// <summary>
        /// 计算该试卷的所有测试的最高分
        /// </summary>
        /// <param name="identify">试卷id</param>
        /// <returns></returns>
        TestResults ResultsHighest(long identify);
        /// <summary>
        /// 计算该试卷的某个学员的最高分
        /// </summary>
        /// <param name="tpid">试卷id</param>
        /// <param name="stid">学员id</param>
        /// <returns></returns>
        float ResultsHighest(long tpid,int stid);
        /// <summary>
        /// 计算该试卷的所有测试的最低分
        /// </summary>
        /// <param name="identify"></param>
        /// <returns></returns>
        TestResults ResultsLowest(long identify);
        /// <summary>
        /// 删除测试成绩，按主键ID；
        /// </summary>
        /// <param name="identify">成绩id</param>
        void ResultsDelete(int identify);
        /// <summary>
        /// 清空某个试卷的某个学员的所有测试成绩
        /// </summary>
        /// <param name="acid">学员id</param>
        /// <param name="tpid">试卷id</param>
        int ResultsClear(int acid, long tpid);
        /// <summary>
        /// 获取单一实体对象，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        /// <returns></returns>
        TestResults ResultsSingle(int identify);
        /// <summary>
        /// 获取某员工的测试成绩
        /// </summary>
        /// <param name="stid"></param>
        /// <param name="couid"></param>
        /// <param name="search"></param>
        /// <param name="count"></param>
        /// <returns></returns>
        TestResults[] ResultsCount(int stid, long couid, string search, int count);
        /// <summary>
        /// 获取某员工的测试成绩
        /// </summary>
        /// <param name="stid"></param>
        /// <param name="tpid"></param>    
        /// <returns></returns>
        TestResults[] ResultsCount(int stid, long tpid);
        /// <summary>
        /// 分页获取测试成绩
        /// </summary>
        /// <param name="stid"></param>
        /// <param name="sbjid"></param>
        /// <param name="couid"></param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        TestResults[] ResultsPager(int stid, long sbjid, long couid, int size, int index, out int countSum);
        TestResults[] ResultsPager(int stid, long tpid, string tpname, long couid, long sbjid, int orgid,
            string acc, string cardid, float score_min, float score_max, DateTime? time_min, DateTime? time_max,
            int size, int index, out int countSum);
        /// <summary>
        /// 按试卷分页返回测试成绩
        /// </summary>
        /// <param name="stid">学员id</param>
        /// <param name="tpid">试卷id</param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        TestResults[] ResultsPager(int stid, long tpid, int size, int index, out int countSum);
        #endregion
    }
}
