data {
  int<lower=0> J;
  vector[J] y;
  vector<lower=0>[J] sigma;
}

parameters {
  vector[J] theta;
  real mu;
  real<lower=0> tau;
}

model {
  mu ~ normal(0,5);
  tau ~ cauchy(0,5);
  theta ~ normal(mu, tau);
  y ~ normal(theta, sigma);
}

