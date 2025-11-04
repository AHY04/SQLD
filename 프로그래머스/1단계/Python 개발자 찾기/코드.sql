SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE 'Python' IN (SKILL_1, SKILL_2, SKILL_3)
ORDER BY ID

## 보통 열 IN (값1, 값2)이런 식으로 쓰이지만 값 IN (열1, 열2)이런 식으로도 사용 가능(MYSQL에서는 허용됨)
