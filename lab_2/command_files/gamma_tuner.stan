functions {
  // Difference between Gamma probability and target probability
  
  vector gamma_delta(vector params, vector x, real[] x_r, int[] x_i) {
    vector[2] deltas;
    deltas[1] = gamma_cdf(x[1], exp(params[1]), exp(params[2]))- 0.01;
    deltas[2] = gamma_cdf(x[2], exp(params[1]), exp(params[2]))- 0.99;
    return deltas;
  }
}

data {
  vector[2] parameters_guess; // Initial guess of Gamma distribution parameters
  vector[2] theta;   // Target quantiles
}

transformed data {

  vector[2] y;
  real x_r[0];
  int x_i[0];

  // Find Gaussian standard deviation that ensures 99% probabilty below 15
  y = algebra_solver(gamma_delta, parameters_guess, theta, x_r, x_i);

}

generated quantities {
  real alpha = exp(y[1]);
  real beta = exp(y[2]);
}
