import pandas as pd

# 데이터 파일 열기
data = pd.read_csv('gpascore.csv')

# 데이터 전처리하기
#print(data.isnull().sum())
data = data.dropna()

# y 입력값 만들기 (일명 label)
y데이터 = data['admit'].values
#print(y데이터)

# x 입력값 만들기 
x데이터  = []
# x = [[380, 3.1, 0], [??, ??, ?], []]

for i, rows in data.iterrows():
    #print(rows['gre'])
    #print(rows['gpa'])
    #print(rows['rank'])

    #print(rows['gre'], rows['gpa'], rows['gpa'])
    
    #[rows['gre'], rows['gpa'], rows['gpa']]

    # x데이터.append()[rows['gre'], rows['gpa'], rows['gpa']]
    x데이터.append([rows['gre'], rows['gpa'], rows['rank']])

#print(x데이터)

import numpy as np
import tensorflow as tf

# 1. 딥러닝 model 디자인하기
model = tf.keras.models.Sequential([
    tf.keras.layers.Dense(64, activation = 'tanh'),
    tf.keras.layers.Dense(128, activation = 'tanh'),
    tf.keras.layers.Dense(1, activation='sigmoid'),
])

# 2. model compile하기
model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])

# 3. model 학습(fit)시키기
# w 값을 찾아주세요
# model.fit(x데이터, y데이터, epochs=10)
# model.fit(np.array(x데이터), np.array(y데이터), epochs=10)
model.fit(np.array(x데이터), np.array(y데이터), epochs=1000)

# 4. 학습시킨 모델로 예측해보기
# 제가 GRE 성적이 700 학점 3.7 Rank4 제 합격확률은요?
# 아까 만든 model로 y값 예측해주세요~
#예측값 = model.predict([[750,3.70,3],[400,2.2,1]])
#print(예측값)

# 예측할 데이터를 numpy 배열로 변환합니다.
data = np.array([[750, 3.70, 3], [400, 2.2, 1]])

# 모델을 사용하여 예측을 수행합니다.
예측값 = model.predict(data)
print(예측값)

