**************************
Nick Williams
Applied Regresion II
Mailman Dept. of Biostats
Homework 2
*************************;

data hw2; 
	input year status; 
	datalines; 
	0.4 1
	1.2 1
	1.2 0
	3.4 0
	4.3 1
	5.0 1
	5.0 1
	5.1 1
	6.1 0
	7.1 1
; 
run; 

proc lifetest data = hw2 method = KM
                conftype = loglog outsurv = hw2_conf
			    stderr plots = survival(cl); 
	time year*status(0); 
run; 

proc print data = hw2_conf; 
run; 








