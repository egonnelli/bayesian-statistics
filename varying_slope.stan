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
	real b_union[J]; // year j slopes
	real b_hisp; //
	real b_black; //
	real mu_b; // prior on beta
	real<lower=0> sigma_y; // prior sigma of y in year j
	real<lower=0> sigma_b; // hyperparameter sigma of beta
}

model{
	
}

generated quantities{

}
