data {
  real alpha;
  real beta;
}

generated quantities {
  real <lower=0> samples = inv_gamma_rng(alpha, beta);
}

