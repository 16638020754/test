
/*获取所有表的主键数据类型
	用于判断哪些表的主键不是长整型
*/

-- 采用游标遍历所有表
declare cursor_obj  cursor scroll
for select name from sysobjects where type='U'
open cursor_obj
declare @tbname nvarchar(500),@primary nvarchar(500),@type nvarchar(500), @count int,@tatol int 
select @count=0,@tatol=0
fetch First from cursor_obj into @tbname
while @@fetch_status=0  
 begin    
	--获取表的主键
    set @primary=(SELECT distinct	COLUMN_NAME=stuff((
		                SELECT '|'+COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
		                where TABLE_NAME =@tbname FOR XML path('') ), 1, 1, '') 
                FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
                where TABLE_NAME =@tbname )
     --获取主键的数据类型
     set @type=(SELECT t.name AS data_type
				FROM sys.indexes AS i
				INNER JOIN sys.index_columns AS ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
				INNER JOIN sys.columns AS c ON ic.object_id = c.object_id AND ic.column_id = c.column_id
				INNER JOIN sys.types AS t ON c.system_type_id = t.system_type_id
				WHERE i.is_primary_key = 1 AND i.object_id = OBJECT_ID(@tbname))
	 if @type != 'bigint'
	 begin
		 set @count=@count+1
		 print CONVERT(nvarchar(20),@count)+'. '+@tbname + '：'+@primary + '('+@type+')'
     end
     --print @type
   
   fetch next from cursor_obj into @tbname  --移动游标
 end   
 --print @tatol
--关闭并释放游标
close cursor_obj
deallocate cursor_obj