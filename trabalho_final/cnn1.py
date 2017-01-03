from keras.layers import Activation, Dense, Flatten
from keras.layers.convolutional import Convolution2D
from keras.layers.convolutional import MaxPooling2D

num_filtros = 32
num_conv = 6
num_pool = 4

modelo = Sequential() # instaciar o modelo

modelo.add(Convolution2D(num_filtros, num_conv, num_conv,
                         border_mode='valid',
                         input_shape=(28, 28, 1)))
modelo.add(Activation('relu'))

# adicao da segunda camada convolucional
modelo.add(Convolution2D(num_filtros, num_conv, num_conv))
modelo.add(MaxPooling2D(pool_size=(num_pool, num_pool)))

# camada que transforma ('comprime') a saida em um array 1D
modelo.add(Flatten())

modelo.add(Dense(100, activation='relu'))
modelo.add(Dense(numero_classes_categoricas),
           activation='softmax')
