data {
  int lambda;
}

generated quantities {
  int <lower=0> samples = poisson_rng(lambda);
}
