SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE (GENOTYPE & 2) = 0 AND ((GENOTYPE & 1) > 0 OR (GENOTYPE & 4) > 0)

## &연산: 정수를 2진수로 바꿔서 비트로 AND연산 수행 ex) (5 & 3) => (101 & 011) => 001 => 1
