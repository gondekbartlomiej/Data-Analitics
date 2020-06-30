data {
  int M; //number of years analyzed
  real beta; //beta coefficient for exponential distribution
}

generated quantities {
  real lambda = exponential_rng(beta);
  int y_sim[M];
  for (k in 1:M) {
    y_sim[k] = poisson_rng(lambda);
  }
}
