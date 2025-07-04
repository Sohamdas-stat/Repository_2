data {
  int<lower=0> N;
  vector[N] x;
  vector[N] y;
}

parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}

model {
  alpha ~ normal(0, 10);
  beta ~ normal(0, 10);
  sigma ~ normal(0,10);
  
  y ~ normal(alpha + beta *x, sigma);
}

generated quantities {
  vector[N] y_sim;
  for(i in 1:N)
    y_sim[i] = normal_rng(alpha + beta * x[i], sigma);
}