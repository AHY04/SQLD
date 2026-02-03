SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
WHERE (CATEGORY, PRICE) IN (SELECT CATEGORY, MAX(PRICE)
                            FROM FOOD_PRODUCT
                            WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
                            GROUP BY CATEGORY)
ORDER BY MAX_PRICE DESC

## 서브쿼리를 사용하지 않고 바로 GROUP BY를 사용하면 카테고리 별 가장 비싼 가격은 집계되지만, PRODUCT_NAME에 임의의 값이 출력됨
## SELECT절에 바로 윈도우함수를 사용하면 가장 비싼 가격은 출력되지만, 행을 줄이지는 않으므로 모든 PRODUCT_NAME이 가장 비싼 가격으로 출력됨
