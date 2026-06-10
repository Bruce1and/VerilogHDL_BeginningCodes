module	counter_mod_60	(
	
	input			clk_i,
	input			rst_n,
	input		[2:0]	en_sec_six,
	input		[2:0]	en_min_six,
	output	reg	[3:0]	cnt_sec_ten,
	output	reg	[2:0]	cnt_sec_six,
	output	reg	[3:0]	cnt_min_ten,
	output	reg	[2:0]	cnt_min_six,
	output	reg	[2:0]	cnt_hour_fiv,
	output	reg	[1:0]	cnt_hour_two

);

	reg	en_min 	= (cnt_sec_six = 3'd5);
	reg	en_hour	= (cnt_min_six = 3'd5);

