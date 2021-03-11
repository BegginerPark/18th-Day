x <- c(1,2,3,4,5)/4
x
round(x, 0)     # 소수점 첫째 자리에서 반올림
floor(x)        # 소수점 이하를 내림
ceiling(x)      # 소수점 이하를 올림
trunc(x)        # 소수점 아래 값 버림
abs(-10)        # 절대값
10  
log(10,base = 2)# 밑이 2인 로그
sqrt(10)        # 제곱근
exp(10)         # 지수로 변환

x <- c(1,2,3,4,5)
sum(X)          # 합계
mean(x)         # 평균
median(x)       # 중앙값
max(x)          # 최댓값
min(x)          # 최솟값
range(x)        # 범위
sd(x)           # 표준편차
var(x)          #분산


#####################################################

plot(iris$Petal.Length)
plot(iris$Petal.Length,iris$Petal.Width)
plot(iris$Petal.Length,iris$Petal.Width, main = "iris data", xlab = "Petal Lenght", ylab = "Petal Width", col = iris$Species)
# 그래프의 이름을 붙이고 x 축과 y축의 이름을 정하고 각 데이터의 종류에 맞게 색을 입혀준다.

# pairs()함수: 행렬 산점도 그리기

pairs(~ Sepal.Width + Sepal.Length + Petal.Width + Petal.Length, data = iris, col = iris$Species)

# hist() 함수: 히스토그램 그리기

hist(iris$Sepal.Width, freq = FALSE) # 밀도를 확인 하기 위해서 freq = FALSE 의 값을 추가 하였다.

# barplot(): 막대 그래프 그리기
# 품종별 꽃잎 길이의 평균을 구함
x <- aggregate(Petal.Length ~ Species, iris, mean)
barplot(x$Petal.Length, names = x$Species) # 막대 그래프 이름으로 품종 지정 막대 그래프에 이름을 붙여주는 방법이다.

# pie() 함수: 파이 차트 그리기
x <- aggregate(Petal.Length ~ Species, iris, sum) # 품종별로 꽃잎 길이 합산
pie(x$Petal.Length, labels = x$Species) # 품종 이름을 붙여 파이 그래프를 그림. 파이 차트의 각 각에 이름을 붙여 주는 방법

# plot() 함수 o 옵션: 선 그래프 그리기
x <- tapply(iris$Petal.Length, iris$Petal.Width, mean) # iris$Petal.Width를 그룹으로 iris$Petal.Length 평균을 구함
x

plot(x, type = 'o') # type = 'o' 옵션을 추가하여 선 선 그래프를 그렸다. 

# boxplot() 함수 : 상자 그림 그리기
# 상자 그림 은 최댓값, 최솟값, 중앙값, 사분윗, 이상치 등을 알아 보기 쉽게 나타내는 그래프 이다.
# 1사분위수 = 25%, 2사분위수 = 중앙값, 3사분위수 = 75% 이며 그 외에 1사분위 이전이나 3사 분위 이후의 값들은 이상치라고 한다.
# 이상치는 <25%, >75% 이다.

boxplot(iris$Sepal.Width)
# 결과 값에서 1사분위가 2.3의 위치, 중앙값이 3.0의 위치, 3사분위가 4.0의 위치에 있으며 2.0 과 4.0 이후의 값이 이상치 인것을 알 수 있다.

plot(women)
head(women)
head(swiss)
plot(swiss)
pairs(swiss, col = swiss$Education)
hist(swiss$Education, freq = FALSE)
head(iris)
x <- aggregate(Fertility ~ Infant.Mortality, swiss, mean)
barplot(x$Education, name = x$names)