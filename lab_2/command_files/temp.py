import numpy as np
import scipy as sp
import scipy.linalg as la

A = np.array([[1, 2, 3],
              [2, 1, 2],
              [3, 2, 1]])

L = la.cholesky(A)
