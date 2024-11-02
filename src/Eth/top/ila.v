  `ifdef ILA
    ila_0 u_ila_0(
    	 .clk		    (pll_clk_1_clk_out1)
        ,.probe0		(workClockArea_axisTxRateCtrl_io_axiOut_valid)
        ,.probe1		(workClockArea_axisTxRateCtrl_io_axiOut_payload_last)
        ,.probe2		(workClockArea_axisTxRateCtrl_io_axiOut_payload_data)
        // ,.probe3		(rx_eth_payload_axis_tvalid)
        // ,.probe4		(rx_eth_payload_axis_tready)
        // ,.probe5		(rx_eth_payload_axis_tdata)
        // ,.probe6		(rx_eth_payload_axis_tlast)
        // ,.probe7		(tx_udp_dest_port)
        // ,.probe8		(tx_udp_length)
        // ,.probe9		(rx_udp_ip_flags)
        // ,.probe10		(rx_fifo_udp_payload_axis_tvalid)
        // ,.probe11		(rx_udp_payload_axis_tready)
        // ,.probe12		(rx_fifo_udp_payload_axis_tdata)
        // ,.probe13		(rx_fifo_udp_payload_axis_tlast)
        // ,.probe14		(16'd0)
    );
`endif

`ifdef ILA
    ila_1 u_ila_1(
    	 .clk		    (clk_ref_i)
        ,.probe0		(ddr3_cs_n_o)
        ,.probe1		(ddr3_ras_n_o)
        ,.probe2		(ddr3_cas_n_o)
        ,.probe3		(ddr3_we_n_o)
        ,.probe4		(dfi_wrdata_en_i)
        ,.probe5		(dfi_rddata_valid_o)
        ,.probe6		(dfi_rddata_o)
        ,.probe7		(dfi_wrdata_i)
        // ,.probe8		(ddr3_addr_o)
        // ,.probe9		(16'd0)
    );
`endif