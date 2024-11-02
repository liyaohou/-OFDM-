`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////                                                                      
//     ���Ʒ�ʽ    K_MOD
//     BPSK        1       //�������Ƽ���,һ�����Ŵ���1bit
//     QPSK        1/��2		//�������Ƽ���,һ�����Ŵ���2bit
//     16QAM       1/��10   //16�����������,һ�����Ŵ���4bit
//     64QAM       1/��42	//64�����������,һ�����Ŵ���6bit

//     				16QAM�����
//     b0b1   	  Re/I       b2b3        Im/Q    //
//     00          -3          00          -3
//     01          -1          01          -1
//     11          1           11          1
//     10          3           10          3 

//     d = (I + jQ) * K(mod) ��K��ʾ��һ������Ŀ����ʹ����ӳ�䱣����ͬ��ƽ�����ʣ�

//ͨ�����Ʒ�ʽ��ͬ����������������1��2��4��6���طֳ�һ�飬
//������һ��6���ؼĴ����У��ȵ��������ݴﵽһ��ʱ��ͨ����������ӳ�䷽ʽ��
//��ӳ�䲢��һ���õ����Ƶ�I��Q��·���ݡ�������8λ��������ʽ�����������ʽΪ��
//1λ����λ��һλ����λ��6λС��λ�������Բ�����ʽ��ʾ��                                                               
/////////////////////////////////////////////////////////////////////////////////// 

module maping(    
																			input               clk             ,  
																			input               rst_n           ,  
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TDATA" *)	input               map_din     	,   
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TVALID" *)	input               map_din_vld		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TREADY" *)	input				map_din_rdy		,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TID" *)		input       [1:0]   map_din_Map_Type,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TDATA" *)	output      [15:0]  map_dout     	,//��λ��һλ����λ��һλ����λ����λС��λ����8λΪ�鲿����8λΪʵ��
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TVALID" *)	output reg   		map_dout_vld	,    
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_map TREADY" *)	output          	map_dout_rdy    ,
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_map TUSER" *)	output reg  [5:0]   map_dout_Index   //������  
);

wire					wr_en			;
wire					rd_en			;
reg						full			;

reg			[2:0]		cnt_Max			;
wire		[2:0]		cnt				;	
wire					cnt_last		;

reg			[5:0]		map_din_r		;
reg			[7:0]		map_dout_Re		;
reg			[7:0]		map_dout_Im		;

//---------------------------------valid-ready����---------------------------------//
assign	wr_en	 = map_dout_rdy & map_din_vld ;//���������ֳɹ�����ʼ��������
assign	rd_en	 = map_din_rdy & map_dout_vld ;//���������ֳɹ�����ʼ���
assign	map_dout_rdy = ~full;

always @(posedge clk or negedge rst_n)	
	if(!rst_n)
		map_dout_vld <= 1'b0;
	else if(rd_en)
		map_dout_vld <= 1'b0;
	else if(full)
		map_dout_vld <= 1'b1;

	
//������ϣ��Ĵ���״̬Ϊ�������ζ�ȡ֮����
always @(posedge clk or negedge rst_n)
	if(!rst_n)
		full <= 1'b0;
	else if(rd_en)
		full <= 1'b0;
	else if(cnt_last & wr_en)
		full <= 1'b1;

//---------------------------�������ݻ���---------------------------//
always@( * ) begin
   case(map_din_Map_Type)
        2'b00:cnt_Max = 1-1; //BPSK
        2'b01:cnt_Max = 2-1; //QPSK
        2'b10:cnt_Max = 4-1; //16-QAM
        2'b11:cnt_Max = 6-1; //64-QAM
        default:cnt_Max =4-1;
   endcase
end	
	
counter_in #(.CNT_NUM('d6),
		.ADD(1'b1))
u_counter(
.clk		(clk				),	
.rst_n		(rst_n				),
.En_cnt		(wr_en				), 
.cnt_din	(cnt_Max			),     
.cnt		(cnt				),	
.cnt_last	(cnt_last			)
);
	
always@(posedge clk or negedge rst_n ) begin
    if(!rst_n) begin 
        map_din_r <= 0;  
    end  
    else if( wr_en ) begin 
        case(map_din_Map_Type)
        2'b00: 
            case(cnt)
            0: map_din_r[0] <= map_din;
            default:;
            endcase 
        2'b01:
            case(cnt)
            0: map_din_r[0] <= map_din;
            1: map_din_r[1] <= map_din;
            default:;
            endcase 
        2'b10:
            case(cnt)
            0: map_din_r[0] <= map_din;
            1: map_din_r[1] <= map_din;
            2: map_din_r[2] <= map_din;
            3: map_din_r[3] <= map_din;
            default:;
            endcase 
        2'b11:
            case(cnt)
            0: map_din_r[0] <= map_din;
            1: map_din_r[1] <= map_din;
            2: map_din_r[2] <= map_din;
            3: map_din_r[3] <= map_din;
            4: map_din_r[4] <= map_din;
            5: map_din_r[5] <= map_din;
            default:;
            endcase 
        default:;
        endcase
    end
end
//---------------------------ӳ�����---------------------------//	
assign	map_dout = {map_dout_Im, map_dout_Re};

always@(posedge clk or negedge rst_n ) begin
   if(!rst_n) begin 
       map_dout_Re  <= 0;
       map_dout_Im  <= 0;
       map_dout_Index <= 6'b111_111;  
   end
   else if(map_dout_Index == 6'd47)
			map_dout_Index <= 6'b111_111;
   else if( full & ~rd_en) begin 
       case(map_din_Map_Type) 
           2'b00: begin    //Bpsk
               case(map_din_r[0])
                   1'b0: map_dout_Re <= 8'b1100_0000; // -1
                   1'b1: map_dout_Re <= 8'b0100_0000; //1
               default:map_dout_Re <= 0;
               endcase
               map_dout_Im <= 8'b00000000;
               map_dout_Index <= map_dout_Index + 1;
           end
           2'b01: begin        //Qpsk
               case(map_din_r[0])
                   1'b0: map_dout_Re <= 8'b1101_0011;  //-1 * 1/��2
                   1'b1: map_dout_Re <= 8'b0010_1101;  //1 * 1/��2    
               default:map_dout_Re <= 0;
               endcase
               case(map_din_r[1])
                   1'b0: map_dout_Im <= 8'b1101_0011;
                   1'b1: map_dout_Im <= 8'b0010_1101; 
               default: map_dout_Im <= 0;
               endcase
               map_dout_Index <= map_dout_Index + 1;
           end
           2'b10: begin       //16-qam
               case(map_din_r[1:0])
                   2'b00: map_dout_Re <= 8'b1100_0011; //-3 * 1/��10      
                   2'b10: map_dout_Re <= 8'b1110_1100;//-1* 1/��10  
                   2'b11: map_dout_Re <= 8'b0001_0100;//1* 1/��10  
                   2'b01: map_dout_Re <= 8'b0011_1101;//3* 1/��10  
               default:map_dout_Re <= 0;
               endcase
               case(map_din_r[3:2])
                   2'b00: map_dout_Im <= 8'b1100_0011;
                   2'b10: map_dout_Im <= 8'b1110_1100;
                   2'b11: map_dout_Im <= 8'b0001_0100;
                   2'b01: map_dout_Im <= 8'b0011_1101;
               default: map_dout_Im <= 0;
               endcase
               map_dout_Index <= map_dout_Index + 1;
           end
           2'b11: begin    //64-qam
               case(map_din_r[2:0])
                   3'b000: map_dout_Re <= 8'b1011_1011; //-7 * 1/��42
                   3'b001: map_dout_Re <= 8'b1100_1111; //-5*1/��42
                   3'b011: map_dout_Re <= 8'b1110_0011; //-3*1/��42
                   3'b010: map_dout_Re <= 8'b1111_0111; //-1*1/��42
                   3'b110: map_dout_Re <= 8'b0100_0101; //7*1/��42
                   3'b111: map_dout_Re <= 8'b0011_0001;//5*1/��42
                   3'b101: map_dout_Re <= 8'b0001_1101;//3*1/��42
                   3'b100: map_dout_Re <= 8'b0000_1001;//1*1/��42
               default:map_dout_Re <= 0;
               endcase
               case(map_din_r[5:3])
                   3'b000: map_dout_Im <= 8'b1011_1011; //-7 * 1/��42
                   3'b001: map_dout_Im <= 8'b1100_1111; //-5*1/��42
                   3'b011: map_dout_Im <= 8'b1110_0011; //-3*1/��42
                   3'b010: map_dout_Im <= 8'b1111_0111; //-1*1/��42
                   3'b110: map_dout_Im <= 8'b0100_0101; //7*1/��42
                   3'b111: map_dout_Im <= 8'b0011_0001;//5*1/��42
                   3'b101: map_dout_Im <= 8'b0001_1101;//3*1/��42
                   3'b100: map_dout_Im <= 8'b0000_1001;//1*1/��42
               default: map_dout_Im <= 0;
               endcase
               map_dout_Index <= map_dout_Index + 1;
           end
           default:;
       endcase
   end
end	
endmodule
