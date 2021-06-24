-- 코드를 입력하세요
SELECT 
    ins.ANIMAL_ID "ANIMAL_ID",
    ins.NAME "NAME"
FROM ANIMAL_INS ins
INNER JOIN ANIMAL_OUTS outs
ON ins.ANIMAL_ID = outs.ANIMAL_ID
ORDER BY
    Abs(DATEDIFF(outs.datetime, ins.datetime)) desc
LIMIT 2;