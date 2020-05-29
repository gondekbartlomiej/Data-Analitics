data {
  real mu;
  real sigma;
}

generated quantities {
  real samples = normal_rng(mu, sigma);
}