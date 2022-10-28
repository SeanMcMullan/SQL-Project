/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [skill_id]
      ,[staff_id]
      ,[qualification]
      ,[qual_date]
  FROM [FaultService].[dbo].[STAFF_EXPERTISE]

  