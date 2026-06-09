module	counter_mod_60	(
	
	input			clk_i,
	input			rst_n,
	output	reg	[3:0]	cnt_10,
	output	reg	[2:0]	cnt_6

);
	
	wire		en_6;



	always	@(posedge	clk_i	or	negedge	rst_n)begin
		if(!rst_n)
			cnt_10	<=	4'b0;
		else if(cnt_10	==	4'd9)
			cnt_10	<=	4'b0;
		else
			cnt_10	<=	4'b1	+	cnt_10;
		
	end
	
	
	always	@(posedge	clk_i	or	negedge	rst_n)begin
		if(!rst_n)
			en_6	<=	1'b0;
		else if(cnt_10	==	4'd9)
			en_6	<=	1'b0;
		else
			en_6	<=	1'b0;
	end


	always	@(posedge	clk_i	or	negedge	rst_n)begin
		if(!rst_n)
			cnt_6	<=	3'b0;
		else if(en_6	==	1'b1)begin
			if(cnt_6	==	3'd5)
				cnt_6	<=	3'b0;
			else
				cnt_6	<=	3'b1	+	cnt_6;
		end
	end


endmodule
