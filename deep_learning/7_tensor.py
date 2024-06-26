import tensorflow as tf

키 = [170,180,175,160]
신발 = [260,270,265,255]

키 = 170
신발 = 260

# 문제: 키로 신발사이즈를 추론해보자
# 신발 = 키 * a + b 

a = tf.Variable(0.1)
b = tf.Variable(0.2)

# a, b 경사하강법으로 구하기
# 경사하강법 도와주는 고마운 친구
opt = tf.keras.optimizers.Adam(learning_rate = 0.1)
#print(opt)

# 손실 함수를 정의합니다
def 손실함수():
    #return (실제값 - 예측값)^2
    #return tf.square(실제값-예측값)
    예측값 = 키 * a + b
    return tf.square(260 - 예측값)

# tensorflow 1.x
# 경사하강 1번 해줌 == a,b,를 1번 수정해줌
# opt.minimize(손실함수(), var_list=[a,b])
# 원하는 만큼 경사하강 반복하셈
# for i in range(300):
#     opt.minimize(손실함수, var_list=[a,b])
#     print(a,b)


# tensorflow 2.x
# 최적화 루프
# with tf.GradientTape() as tape:
#     loss = 손실함수()

# 손실 함수의 기울기를 계산합니다.
# gradients = tape.gradient(loss, [a, b])

# 최적화 변수를 업데이트합니다.
# opt.apply_gradients(zip(gradients, [a, b]))

for i in range(300):
    with tf.GradientTape() as tape:
        loss = 손실함수()
    gradients = tape.gradient(loss, [a, b])
    opt.apply_gradients(zip(gradients, [a, b]))
    print(a.numpy(),b.numpy())

