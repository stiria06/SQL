-- https://programmers.co.kr/learn/courses/30/lessons/59043
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS a
    WHERE EXISTS (SELECT ANIMAL_ID, NAME FROM ANIMAL_OUTS b
        WHERE (a.ANIMAL_ID = b.ANIMAL_ID
            AND a.DATETIME > b.DATETIME))
    ORDER BY DATETIME;
