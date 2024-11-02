clc;
close all;
PATH = 'D:/FPGA/OFDM_802.11a_my/TX/matlab/OFDM_802_11a_TX/';

FPGA_dac_dout = readlines([PATH,'dac_data_out.txt'],'EmptyLineRule','skip')';
display(FPGA_dac_dout);
FPGA_Im_dac_dout = extractBefore(FPGA_dac_dout,9);
FPGA_Re_dac_dout = extractAfter(FPGA_dac_dout,8);
display(FPGA_Re_dac_dout);
display(FPGA_Im_dac_dout);
q = quantizer('fixed','round','saturate',[8,6]);
FPGA_Re_dac_dout = bin2num(q,FPGA_Re_dac_dout);
FPGA_Im_dac_dout = bin2num(q,FPGA_Im_dac_dout);
FPGA_Re_dac_dout = cell2mat(FPGA_Re_dac_dout);
FPGA_Im_dac_dout = cell2mat(FPGA_Im_dac_dout);
FPGA_dac_dout = FPGA_Re_dac_dout + 1j*FPGA_Im_dac_dout;

preamble_out  = preamble_out  / max(abs(preamble_out ));
FPGA_dac_dout = FPGA_dac_dout /max(abs(FPGA_dac_dout));%归一化
display(preamble_out );
display(FPGA_dac_dout);
figure;
subplot(2,1,1);
plot(real(preamble_out ));title('Matlab仿真输出实部');
subplot(2,1,2);
plot(real(FPGA_dac_dout));title('FPGA仿真输出后实部');
figure;
subplot(2,1,1);
plot(imag(preamble_out ));title('Matlab仿真输出后虚部');
subplot(2,1,2);
plot(imag(FPGA_dac_dout));title('FPGA仿真输出后虚部');