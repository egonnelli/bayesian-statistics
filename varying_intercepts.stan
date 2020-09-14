data{
	int<lower=1> N; // number of obs
	int<lower=0> J; // number of years
	vector[N] y; // outcome data (log wage)
	int<lower=0,upper=1> x_union[N]; //
	int<lower=0,upper=1> x_black[N]; //
	int<lower=0,upper=1> x_hisp[N]; //
	int year[N]; //
}