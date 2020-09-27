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
	real a;
	real b_union[J];
	real b_hisp;
	real b_black;
	real mu_b;
	real<lower=0> sigma_y;
	real<lower=0> sigma_b;
}

model{
	
}

generated quantities{

}
