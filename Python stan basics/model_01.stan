data {
  int n;
  int y1[n];
  int y2[n];
}

parameters {
  real<lower=0, upper=1> theta1;
  real<lower=0, upper=1> theta2;
}

model {
  theta1 ~ beta(1,1);
  theta2 ~ beta(1,1);
  y1 ~ bernoulli(theta1);
  y2 ~ bernoulli(theta2);
}

generated quantities {
  real Delta_theta;
  Delta_theta = theta1 - theta2;
}
