--Create Database youtube_db;

--Use youtube_db; 
-- right click youtube_db --> Tasks --> Import Flat file --> select the formatted using python excel file

/*
Data cleaning steps
- Remove the unnnecessary columns by selecting only the required columns
- Extract the youtube channel names from the first column
- Renhame the column names
*/

--SELECT [channel_name]
--      , NOMBRE
--      ,[total_subscribers]
--      ,[total_views]
--      ,[total_videos]

--  FROM [youtube_db].[dbo].[Top_youtubers_2024]

--CHARINDEX
--select CHARINDEX ('nice','I went to a nice park') as positon_of_n_in_nice
--select CHARINDEX ('@',NOMBRE) NOMBRE from [youtube_db].[dbo].[Top_youtubers_2024]

--SUBSTRING
--select SUBSTRING (NOMBRE,1, CHARINDEX('@',NOMBRE) -1)  from [youtube_db].[dbo].[Top_youtubers_2024]
/*
Create View view_youtubers_2024 as 
select CAST(SUBSTRING (NOMBRE,1, CHARINDEX('@',NOMBRE) -1) as VARCHAR(100)) as Channel_name
	  ,[total_subscribers]
      ,[total_views]
      ,[total_videos]		
from [youtube_db].[dbo].[Top_youtubers_2024]
*/
