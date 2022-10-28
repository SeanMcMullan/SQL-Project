/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [skill_id]
      ,[area]
      ,[level]
      ,[training_course]
  FROM [FaultService].[dbo].[SKILL]

  