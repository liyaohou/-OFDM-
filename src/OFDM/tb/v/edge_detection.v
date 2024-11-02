`timescale 1ns / 1ps

module edge_detection(
	input		clk			,
	input		edge_din	,
	output		edge_pluse
    );
	
parameter	POSEDGE = 1'b1;//1为上升沿检测，0为下降沿检测
reg			edge_din_r;	

always @(posedge clk)
	edge_din_r <= edge_din;

assign edge_pluse = POSEDGE  ? (~edge_din_r & edge_din) : edge_din_r & ~edge_din;
	
endmodule
