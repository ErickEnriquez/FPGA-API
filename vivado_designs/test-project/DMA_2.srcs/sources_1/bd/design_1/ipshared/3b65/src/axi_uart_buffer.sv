`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2020 03:18:19 AM
// Design Name: 
// Module Name: AXI_UART_buffer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Full Disclaimer, this module was written by someone very new to Verilog, so I would
// assume that it is not very robust.

// This module aims to buffer an AXI master device communication to the Xilinx
// AXI UART 16550 IP by delaying the master/slave *VALID signals while the UART tx/rx
// interrupts are high/low, respectively, so that neither peripheral misses a transaction.

// Right now with my limited understanding of AXI, I am unable to perform an interrupt read within
// this module to determine the type of interrupt, and will thus be setting the UART to send them
// exclusively.  
//////////////////////////////////////////////////////////////////////////////////


/*
UART interrupts of interest:
Transmitter Holding Register Empty -> high when transmitter FIFO is empty || cleared by reading IIR or writing into Transmitter holding reg
Received Data Available -> high when the Receiver FIFIO trigger level is reached || cleared when Receiver FIFO drops below trigger level
*/
module axi_uart_buffer(

    // Ports from AXI Master
    //input logic [31:0] m_axi_araddr,
    //input logic [2:0] m_axi_arprot,
    //output logic m_axi_arready,
    input logic m_axi_arvalid,
    
    //input logic [31:0] m_axi_awaddr,
    //input logic [2:0] m_axi_awprot,
    //output logic m_axi_awready,
    input logic m_axi_awvalid,
    
    //input logic m_axi_bready,
    //output logic [1:0] m_axi_bresp,
    //output logic m_axi_bvalid,
    
    //output logic [31:0] m_axi_rdata,
    //input logic m_axi_rready,
    //output logic [1:0] m_axi_rresp,
    output logic m_axi_rvalid,
    
    //input logic [31:0] m_axi_wdata,
    //output logic m_axi_wready,
    //input logic [3:0] m_axi_wstrb,
    input logic m_axi_wvalid,
     
    
    //Sinlge AXI clock
    //input logic axi_aclk,
    
    //AXI Slave Ports
    //output logic [12:0] s_axi_araddr,
    //input logic s_axi_arready,
    output logic s_axi_arvalid,
    
    //output logic [12:0] s_axi_awaddr,
    //input logic s_axi_awready,
    output logic s_axi_awvalid,
    
    //output logic s_axi_bready,
    //input logic [1:0] s_axi_bresp,
    //input logic s_axi_bvalid,
    
    //input logic [31:0] s_axi_rdata,
    //output logic s_axi_rready,
    //input logic [1:0] s_axi_rresp,
    input logic s_axi_rvalid,
    
    //output logic [31:0] s_axi_wdata,
    //input logic s_axi_wready,
    //output logic [3:0] s_axi_wstrb,
    output logic s_axi_wvalid,
    
    //Interrupts from the axi_uart16550 module
    input logic uart_ip2intc_irpt
    );

    
    //starting functionality will just be to buffer transfers one cycle
    
    always_comb begin

        
        //write: only allow transactions when interrupt line is high (empty tx FIFO)
        s_axi_awvalid <= m_axi_awvalid && uart_ip2intc_irpt;
        s_axi_wvalid <= m_axi_wvalid && uart_ip2intc_irpt;

        //read: only allow read transactions when interrupt line is low (full rx FIFIO)
        s_axi_arvalid <= m_axi_arvalid && !uart_ip2intc_irpt;
        m_axi_rvalid <= s_axi_rvalid && !uart_ip2intc_irpt;  

    
    end
endmodule
