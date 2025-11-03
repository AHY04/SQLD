SELECT CONCAT(LENGTH, 'cm') AS MAX_LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC
LIMIT 1

##concat함수로 문자열을 이어붙이기 -> 가장 큰 길이가 맨위로 오도록 내림차순으로 정렬 -> limit로 맨위에 있는 값(=가장 큰 길이) 하나만 출력
