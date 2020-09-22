data{
	int<lower=1> N; // number of obs
	int<lower=0> J; // number of years
	vector[N] y; // outcome data (log wage)
	int<lower=0,upper=1> x_union[N]; // input data (union)
	int<lower=0,upper=1> x_black[N]; // input data (black ethn)
	int<lower=0,upper=1> x_hisp[N]; // input data (hisp ethn)
	int year[N]; // yer ID variable
}

parameters{
	real a[J] // year J intercept
	real b_union_yes; // beta slope for union data
	real b_hips; // beta slope for hisp data
	real b_black; // beta slope for black data
	real mu_a; // pior on alpha
	real<lower=0> sigma_y; // pior sigma of y in year j
	real<lower=0> sigma_a; // hyperparameter sigma of alpha
}

model{
	a ~ normal(mu_a, sigma_a);
	for (n in 1:N){
		y[n] ~ normal(a[year[n]] + b_union_yes * x_union[n] + b_black * x_black[n] + b_hips * x_hisp[n], sigma_y );
	}
}

generated quantities{
	vector[N] log_lik; 
	vector[N] y_hat;

	for (i in 1:N){
		y_hat[i] = normal_rng(a[year[i]] + b_union_yes * x_unon[i] + b_black * x_black[i] + b_hisp * x_hisp[i], sigma_y);
		log_lik[i] = normal_lpdf( y[i] |  ); 

	}
}
