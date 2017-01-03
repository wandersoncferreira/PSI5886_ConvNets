from keras.models import Sequential
from keras.layers import Dense, Activation


modelo = Sequential()
modelo.add(Dense(output_dim=10, input_dim=20))
modelo.add(Activation("tanh"))
modelo.add(Dense(output_dim=1))
modelo.add(Activation("linear"))
modelo.compile(loss='mean_square_error', optimizer="rmsprop")
