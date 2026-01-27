SELECT DISTINCT(B.ID) AS ID, B.EMAIL, B.FIRST_NAME, B.LAST_NAME
FROM SKILLCODES A JOIN DEVELOPERS B ON (B.SKILL_CODE & A.CODE > 0)
WHERE A.NAME IN ('C#', 'Python')
ORDER BY ID

## SKILL_CODE가 예를 들어 400이라면, 이 값은 2진수로 b’110010000’이 되고, 특정 스킬 CODE 값과 AND 연산을 했을 때 0보다 크면 해당 스킬을 포함하고 있다는 의미가 됨
## 예) 400 & 256 = 256 > 0 이면 Python 포함
