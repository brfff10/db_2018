--Obtener los 5 premios nobel mas recientes
SELECT PRIZE_YEAR, PRIZE_NAME FROM EJERCICIOU2.PRIZES PZ
    WHERE ROWNUM <= 5
    ORDER BY PZ.PRIZE_YEAR DESC;

--Obtener los ultimos 10 premios nobel de fisica
SELECT PZ.PRIZE_YEAR, PZ.PRIZE_NAME, CAT.CATEGORY 
    FROM EJERCICIOU2.PRIZES PZ
    INNER JOIN EJERCICIOU2.CATEGORIES CAT ON PZ.CATEGORY_ID = CAT.CAATEGORY_ID
        WHERE ROWNUM <= 10 
        ORDER BY PZ.PRIZE_YEAR DESC;

--obtener las ultimas personas que han ganado mas de un premio


--obtener el campo/lenguaje con mas premios nobel


--obtener los premios ganados desde 1980 al 1998 en quimica


--obtener el premio nobel ganado en menos ocaciones


--obtener e pais con mas premios nobel


--obtener los premios nobel compartidos (mas de 1 ganador en la misma categoria y ano)


--obtener el promedio de edad de todos los ganadores al momento en que ganan su premio

