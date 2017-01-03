img = np.zeros((28,28))
for a in xrange(28):
  for b in xrange(28):
    img[a][b] = X_treino[0][a,b]
    for i in xrange(len(modelo.layers)):
      m0 = modelo.layers[i]
      name = m0.name
      if "convolution" not in name:
        continue    
      ws = m0.get_weights()

      flt = np.zeros((np.shape(ws[0])[0],np.shape(ws[0])[1]))
      fig=plt.figure(figsize=(8,8))
      for oz in xrange(np.shape(ws[0])[2]):
        for z in xrange(np.shape(ws[0])[3]):
          ax = fig.add_subplot(6, 6, z+1)
          sa = np.shape(ws[0])[0]
          sb = np.shape(ws[0])[1]
          for a in xrange(sa):
            for b in xrange(sb):
              flt[a][b] = ws[0][a,b,oz,z]
              plt.xticks(np.array([]))
              plt.yticks(np.array([]))
              plt.tight_layout()        
              ax.imshow(flt,interpolation='nearest', cmap=plt.cm.gray) 
