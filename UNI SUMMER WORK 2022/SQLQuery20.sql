
--get type and desrciption of fault WHERE fault typy contains LETTERS 'SERVER'

SELECT * FROM FAULT

SELECT "type", "description" FROM FAULT WHERE "type" LIKE '%server%';



