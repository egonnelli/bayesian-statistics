data {
  int<lower=0> N; // number of obs
  int<lower=0> J; // Number of years
  vector[N] y; // outcome data (log wage)
  int year[N]; //year ID variable
}
parameters {
  real a[J]; // year j intercept
  real mu_a; // prior on alpha
  real<lower=0> sigma_y; // prior sigma of y in year j
  real<lower=0> sigma_a; // hyperparameter sigma of alpha
}
model {
  a ~ normal(mu_a, sigma_a);    
  for (n in 1:N)
    y[n] ~ normal(a[year[n]], sigma_y);
}
