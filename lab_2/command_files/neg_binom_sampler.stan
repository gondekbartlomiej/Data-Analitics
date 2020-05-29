data {
  real mu;
  real phi;
}

generated quantities {
  real samples = neg_binomial_2_rng(mu, phi);
}
