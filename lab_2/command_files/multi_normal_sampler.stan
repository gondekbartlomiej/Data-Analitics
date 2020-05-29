data {
  int N;
  vector[N] mu;
  matrix[N, N] L;
  matrix[N, N] diag_T;
}

generated quantities {
  vector[N] samples = multi_normal_rng(mu, L*diag_T*diag_T*(L'));
}
