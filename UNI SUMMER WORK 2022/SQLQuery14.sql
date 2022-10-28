CREATE VIEW Under_Five
AS SELECT horse_name, owner_name
	FROM HORSE
	WHERE age< 5