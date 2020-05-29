data {
  real nu;
  real mu;
  real sigma;
}

generated quantities {
  real samples = student_t_rng(nu, mu, sigma);
}