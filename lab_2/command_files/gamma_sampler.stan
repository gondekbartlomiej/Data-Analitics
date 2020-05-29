data {
  real alpha;
  real beta;
}

generated quantities {
  real <lower=0> samples = gamma_rng(alpha, beta);
}
