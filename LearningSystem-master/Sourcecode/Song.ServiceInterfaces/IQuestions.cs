using System;
using System.Collections.Generic;
using System.Text;
using Song.Entities;
using System.Data;
using NPOI.HSSF.UserModel;
using WeiSha.Data;

namespace Song.ServiceInterfaces
{
    /// <summary>
    /// 试题管理
    /// </summary>
    public interface IQuestions : WeiSha.Core.IBusinessInterface
    {
        #region 试题管理
        /// <summary>
        /// 添加试题
        /// </summary>
        /// <param name="entity">业务实体</param>
        long QuesAdd(Questions entity);       
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="entity">业务实体</param>
        void QuesSave(Questions entity);
        /// <summary>
        /// 批量导入试题时用此方法
        /// </summary>
        /// <param name="entity">考试实体</param>
        /// <param name="ansItem">答案实体</param>
        /// <returns></returns>
        void QuesInput(Questions entity, List<Song.Entities.QuesAnswer> ansItem);
        /// <summary>
        /// 删除，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        void QuesDelete(long identify);
        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="ids"></param>
        void QuesDelete(string[] ids);
        /// <summary>
        /// 批量删除
        /// </summary>
        /// <param name="idarray"></param>
        void QuesDelete(long[] idarray);
        /// <summary>
        /// 修改试题的某些项
        /// </summary>
        /// <param name="qusid">试题id</param>
        /// <param name="fiels"></param>
        /// <param name="objs"></param>
        /// <returns></returns>
        bool QuesUpdate(long qusid, Field[] fiels, object[] objs);
        /// <summary>
        /// 获取单一实体对象，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        /// <returns></returns>
        Questions QuesSingle(long identify);
        /// <summary>
        ///  获取单一实体对象，按主键ID；
        /// </summary>
        /// <param name="identify"></param>
        /// <param name="cache">是否来自缓存</param>
        /// <returns></returns>
        Questions QuesSingle(long identify,bool cache);
        /// <summary>
        /// 获取单一实体对象，按UID
        /// </summary>
        /// <param name="uid">全局唯一id</param>
        /// <returns></returns>
        Questions QuesSingle(string uid);
        /// <summary>
        /// 获取单一实体对象，按题干
        /// </summary>
        /// <param name="title"></param>
        /// <param name="type">题型的数字标识</param>
        /// <returns></returns>
        Questions QuesSingle(string title, int type);
        /// <summary>
        /// 当前试题的答案
        /// </summary>
        /// <param name="qus">试题对象</param>
        /// <param name="isCorrect">是否取正确答案，如果为Null取所有答案，如果为true取正确答案</param>
        /// <returns></returns>
        QuesAnswer[] QuestionsAnswer(Questions qus, bool? isCorrect);
        /// <summary>
        /// 获取某个课程或章节试题
        /// </summary>
        /// <param name="type">试题类型</param>
        /// <param name="isUse">是否展示</param>
        /// <param name="count">取多少条，小于1取所有</param>
        /// <returns></returns>
        Questions[] QuesCount(int type, bool? isUse, int count);
        /// <summary>
        /// 获取某个课程或章节试题
        /// </summary>
        /// <param name="orgid">机构id</param>
        /// <param name="sbjid">专业id</param>
        /// <param name="couid">课程id</param>
        /// <param name="olid">章节id</param>
        /// <param name="type">试题类型</param>
        /// <param name="diff">难度等级</param>
        /// <param name="isUse"></param>
        /// <param name="index">起始索引</param>
        /// <param name="count">取多少条</param>
        /// <returns></returns>
        Questions[] QuesCount(int orgid, long  sbjid, long couid, long olid, int type, int diff, bool? isUse, int index, int count);
        /// <summary>
        /// 获取简化的某个课程或章节试题
        /// </summary>
        /// <param name="orgid">机构id</param>
        /// <param name="sbjid">专业id</param>
        /// <param name="couid">课程id</param>
        /// <param name="olid">章节id</param>
        /// <param name="type">试题类型</param>
        /// <param name="diff">难度等级</param>
        /// <param name="isUse"></param>
        /// <param name="fields">要取值的字段</param>
        /// <param name="count">取多少条</param>
        /// <returns></returns>
        Questions[] QuesSimplify(int orgid, long sbjid, long couid, long olid, int type, int diff, bool? isUse, Field[] fields, int count);
        int QuesOfCount(int orgid, long  sbjid, long couid, long olid, int type, int diff, bool? isUse);
        /// <summary>
        /// 获取随机试题
        /// </summary>
        /// <param name="orgid">机构id</param>
        /// <param name="sbjid">专业id</param>
        /// <param name="couid">课程id</param>
        /// <param name="olid">章节id</param>
        /// <param name="type">试题类型</param>
        /// <param name="diff1">难度范围</param>
        /// <param name="diff2">难度范围</param>
        /// <param name="isUse">是否允许</param>
        /// <param name="count">取的数量</param>
        /// <returns></returns>
        Questions[] QuesRandom(int orgid, long  sbjid, long couid, long olid, int type, int diff1, int diff2, bool? isUse, int count);
        /// <summary>
        /// 获取随机试题
        /// </summary>
        /// <param name="type">试题类型</param>
        /// <param name="sbjId">所属学科</param>
        /// <param name="couid"></param>
        /// <param name="diff1">难度等级区间的最小等级</param>
        /// <param name="diff2">难度等级的最大等级</param>
        /// <param name="isUse"></param>
        /// <param name="count"></param>
        /// <returns></returns>
        Questions[] QuesRandom(int type, long  sbjid, long couid, int diff1, int diff2, bool? isUse, int count);
        /// <summary>
        /// 分页获取所有的试题；
        /// </summary>
        /// <param name="orgid"></param>
        /// <param name="type">试题类型</param>
        /// <param name="isUse">是否显示</param>
        /// <param name="diff">试题难度</param>
        /// <param name="searTxt">查询字符</param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        Questions[] QuesPager(int orgid, int type, bool? isUse, int diff, string searTxt, int size, int index, out int countSum);
        /// <summary>
        /// 分页获取所有的试题；
        /// </summary>
        /// <param name="orgid">所属机构id</param>
        /// <param name="type">试题类型</param>
        /// <param name="sbjid"></param>
        /// <param name="couid">课程Id</param>
        /// <param name="olid">章节id</param>
        /// <param name="isUse"></param>
        /// <param name="isError"></param>
        /// <param name="isWrong"></param>
        /// <param name="diff">难度等</param>
        /// <param name="searTxt"></param>
        /// <param name="size"></param>
        /// <param name="index"></param>
        /// <param name="countSum"></param>
        /// <returns></returns>
        Questions[] QuesPager(int orgid, int type, long sbjid, long couid, long olid, bool? isUse, bool? isError, bool? isWrong, int diff, string searTxt, int size, int index, out int countSum);
        /// <summary>
        /// 导出试题
        /// </summary>
        /// <param name="orgid">所属机构</param>
        /// <param name="type">试题类型，如单选，多选等,如1,2这样的字符串来表示</param>
        /// <param name="sbjid">专业id</param>
        /// <param name="couid">课程id</param>
        /// <param name="olid">章节id</param>
        /// <param name="diff">难度等级，如1,2这样的字符串</param>
        /// <param name="isError">是否包括错误的试题，如果为空，则不作判断</param>
        /// <param name="isWrong">是否包括学员反馈的试题，如果为空，则不作判断</param>
        /// <returns></returns>
        HSSFWorkbook QuestionsExport(int orgid, string type, long sbjid, long couid, long olid, string diff, bool? isError, bool? isWrong);
        /// <summary>
        /// 导出试题,生成文件
        /// </summary>
        /// <param name="path">导出文件的路径（服务器端）</param>
        /// <param name="orgid"></param>
        /// <param name="type"></param>
        /// <param name="sbjId"></param>
        /// <param name="couid"></param>
        /// <param name="olid"></param>
        /// <param name="diff"></param>
        /// <param name="isError"></param>
        /// <param name="isWrong"></param>       
        /// <returns></returns>
        string QuestionsExport4Excel(string path, int orgid, string type, long sbjid, long couid, long olid, string diff, bool? isError, bool? isWrong);
        #endregion

        #region 题型管理（试题分类）
        /// <summary>
        /// 添加试题
        /// </summary>
        /// <param name="entity">业务实体</param>
        int TypeAdd(QuesTypes entity);
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="entity">业务实体</param>
        void TypeSave(QuesTypes entity);
        /// <summary>
        /// 删除，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        void TypeDelete(int identify);
        /// <summary>
        /// 清理课程下的试题分类
        /// </summary>
        /// <param name="couid">课程id</param>
        void TypeClear(long couid);
        /// <summary>
        /// 获取单一实体对象，按主键ID；
        /// </summary>
        /// <param name="identify">实体的主键</param>
        /// <returns></returns>
        QuesTypes TypeSingle(int identify);
        /// <summary>
        /// 获取某个学科的所有试题分类
        /// </summary>
        /// <param name="couid">课程id</param>
        /// <param name="isUse">是否展示</param>
        /// <param name="count">取多少条，小于1取所有</param>
        /// <returns></returns>
        QuesTypes[] TypeCount(long couid, bool? isUse, int count);
        /// <summary>
        /// 将当前项目向上移动；仅在当前对象的同层移动，即同一父节点下的对象这前移动；
        /// </summary>
        /// <param name="id"></param>
        /// <returns>如果已经处于顶端，则返回false；移动成功，返回true</returns>
        bool TypeRemoveUp(int id);
        /// <summary>
        /// 将当前项目向下移动；仅在当前对象的同层移动，即同一父节点下的对象这前移动；
        /// </summary>
        /// <param name="id"></param>
        /// <returns>如果已经处于顶端，则返回false；移动成功，返回true</returns>
        bool TypeRemoveDown(int id);
        #endregion

        #region 试题答案或选项
        /// <summary>
        /// 将试题的答题选项转换为xml字符串
        /// </summary>
        /// <param name="ans"></param>
        /// <returns></returns>
        string AnswerToItems(Song.Entities.QuesAnswer[] ans);
        /// <summary>
        /// 将答题选项的xml字符串，转换为QuesAnswer对象数组
        /// </summary>
        /// <param name="qus"></param>
        /// <param name="isCorrect">是否返回正确的选项，null返回全部，true只返回正确的答案，false只返回错误</param>
        /// <returns></returns>
        Song.Entities.QuesAnswer[] ItemsToAnswer(Questions qus, bool? isCorrect);
        /// <summary>
        /// 将答题选项的xml字符串，转换为QuesAnswer对象数组
        /// </summary>
        /// <param name="xml"></param>
        /// <returns></returns>
        Song.Entities.QuesAnswer ItemToAnswer(string xml);
        /// <summary>
        /// 计算当前试题的得分
        /// </summary>
        /// <param name="id">试题的ID</param>
        /// <param name="ans">答案，选择题为id，判断题为数字，填空或简答为字符</param>
        /// <param name="num">该题的分数</param>
        /// <returns>正确返回true</returns>
        bool ClacQues(long qid, string ans);
        #endregion       

        #region 试题练习的记录
        /// <summary>
        /// 记录试题练习记录
        /// </summary>
        /// <param name="acc"></param>
        /// <param name="orgid"></param>
        /// <param name="couid"></param>
        /// <param name="olid"></param>
        /// <param name="json"></param>
        /// <param name="sum">试题数</param>
        /// <param name="answer">答题数</param>
        /// <param name="correct">正确数</param>
        /// <param name="wrong">错误数</param>
        /// <param name="rate">正确率</param>
        /// <returns></returns>
        bool ExerciseLogSave(Accounts acc, int orgid, long couid, long olid, string json, int sum, int answer, int correct, int wrong,double rate);
        /// <summary>
        /// 获取试题练习记录
        /// </summary>
        /// <param name="acid"></param>
        /// <param name="couid"></param>
        /// <param name="olid"></param>
        /// <returns></returns>
        LogForStudentExercise ExerciseLogGet(int acid, long couid, long olid);
        /// <summary>
        /// 删除试题练习记录
        /// </summary>
        /// <param name="acid"></param>
        /// <param name="couid"></param>
        /// <param name="olid"></param>
        /// <returns></returns>
        bool ExerciseLogDel(int acid, long couid, long olid);
        
        #endregion
    }
}
