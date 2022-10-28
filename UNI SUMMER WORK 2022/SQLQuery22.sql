


SELECT a.skill_id, b.qualification
FROM SKILL a
FULL OUTER JOIN STAFF_EXPERTISE b ON a.skill_id=b.skill_id
WHERE b.qualification IS NULL
ORDER BY a.skill_id ASC;





-- 3) (a)


-- gets the staff id and the number of qualifications they have 


-- counts the number of qualifictaions per staff memebr using the staff id as unique identifier,
-- grouping by staff id groups the unique idenitifier and the having clause performs a where like critiera but based on the grouped data 
-- the subqry is then linked with an inner join to only match on the data results its returns to the tec staff table to get access to the 
-- staff memnebers name, a full outer join here ignores tge matched inner criteria and tried to diaply all results from the rigtht table (tec staff) 
-- meaning the count criteria was pointless, inner matched only what the subqry returned. alaias AS clauses were used to rename columns for reabaility


SELECT "NumberOfQaulifications", "name", "TEC_STAFF".staff_id FROM (

SELECT COUNT(qualification) AS "NumberOfQaulifications", "staff_id" AS "STAFF_ID"
FROM STAFF_EXPERTISE
GROUP BY "STAFF_ID"
HAVING COUNT(qualification) > 1 

) AS subqry
INNER JOIN TEC_STAFF ON subqry."STAFF_ID"=TEC_STAFF."staff_id";
