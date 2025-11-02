SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD IN('CS', 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME

## DATE_FORMAT(변환할 날짜, 포맷문자)를 통해 특정 날짜를 사용자가 원하는 형태로 변경 가능
## %Y=년도(2021), %y=년도(21), %d=일(01,19), %e=일(1,19), %T=시간(12:30:00), %r=시간(12:30:00 AM), %H=24시간(01, 14, 18), %l=12시간(01, 02, 06), %m=월(01, 02, 11), %c=월(1, 8), %M=월(January, August), %b=월(Jan, Aug), %W=요일(Wednesday, friday), %a=요일(Wed, Fri), %i=분(00), %S=초(00)
