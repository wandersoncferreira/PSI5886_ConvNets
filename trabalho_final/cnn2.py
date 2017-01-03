from keras.layers import Activation
from keras.layers.convolutional import Convolution2D, MaxPooling2D
from keras.layers import Flatten, Dense
from keras.layers.core import Dropout

dropout_rate=0.3

modelo = Sequential()

def keras_add(m,op):
	m.add(op)
	l = m.layers[-1]

keras_add(modelo,Convolution2D(32, 2, 2,
	border_mode='valid', input_shape=(28, 28, 1)))
keras_add(modelo,Activation('relu'))

keras_add(modelo,Convolution2D(8, 12, 12))
keras_add(modelo,Activation('relu'))

keras_add(modelo,Convolution2D(16, 8, 8))
keras_add(modelo,Activation('relu'))

keras_add(modelo,MaxPooling2D(pool_size=(2, 2)))

keras_add(modelo,Convolution2D(32, 2, 2))
keras_add(modelo,Activation('relu'))

keras_add(modelo,Flatten())
keras_add(modelo,Dense(100))
keras_add(modelo,Dropout(dropout_rate))
keras_add(modelo,Activation('relu'))

keras_add(modelo,Dense(numero_classes))
keras_add(modelo,Dropout(dropout_rate))
keras_add(modelo,Activation('softmax'))
