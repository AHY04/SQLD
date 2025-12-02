SELECT LEFT(PRODUCT_CODE,2) AS CATEGORY, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY

## LEFT(문자열,길이)함수를 사용해 왼쪽부터 원하는 길이만큼 잘라낼 수 있음, RIGHT(문자열,길이)함수는 오른쪽부터
## SUBSTRING(문자열,시작위치,길이)함수로 문자열을 일정한 영역만큼 잘라낼 수 있음
