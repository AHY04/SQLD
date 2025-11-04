SELECT HISTORY_ID, CAR_ID, DATE_FORMAT(START_DATE, '%Y-%m-%d'), DATE_FORMAT(END_DATE, '%Y-%m-%d'), case when (DATEDIFF(end_date, start_date)+1) >= 30 then '장기 대여' else '단기 대여' end as RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE LIKE '2022-09%'
ORDER BY HISTORY_ID DESC

## DATEDIFF(날짜1,날짜2) 함수를 통해 두 날짜 사이의 일수 차이를 구할 수 있음(시간 무시)
