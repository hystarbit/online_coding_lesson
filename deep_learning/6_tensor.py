import tensorflow as tf
print("Tensorflow version:",tf.__version__)

# 기본 텐서 만들기
# 그냥 숫자, 리스트 담는 곳임 끝
텐서 = tf.constant([3,4,5])
print(텐서)

텐서2 = tf.constant([6,7,8])
print(텐서 + 텐서2)

텐서3 = tf.constant([[1,2],
                   [3,4]])

print(tf.add(텐서,텐서2))
print(텐서 / 텐서2)

# 0만 담긴 텐서
텐서4 = tf.zeros(10)
텐서4 = tf.zeros([2,2])
텐서4 = tf.zeros([2,2,3])
print(텐서4)

# tensor의 shape
print(텐서.shape)
print(텐서3.shape)


텐서3 = tf.constant([[1,2,3],
                   [4,5,6]])
print(텐서3.shape)

# tensor의 datatype
print(텐서)
텐서 = tf.constant([3,4,5], tf.float32)
print(텐서)
#tf.cast()

# weight 저장하고 싶으면 Variable 만들기 
w = tf.Variable(1.0)
print(w)
print(w.numpy())
w.assign(2)
print(w)