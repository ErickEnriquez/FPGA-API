#
# Created by 
#   realTimeFpga.exe  on Mon Jan  6 15:52:56 2020
# (c) Xilinx, Inc.
#
# define clock c0_sys_clk_p
create_clock -period 3.332000 -waveform {0.000000 1.666000} -name c0_sys_clk_p [get_xlnx_outside_genome_mod_pin 0 1157]
# define clock mmcm_clkout0
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 148 2489] -master_clock c0_sys_clk_p -multiply_by 1 -name mmcm_clkout0 [get_xlnx_outside_genome_inst_pin 148 2490] -add
# define clock mmcm_clkout1
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 148 2489] -master_clock c0_sys_clk_p -edges {1 2 3} -edge_shift {0.000000 3.332000 6.664000} -name mmcm_clkout1 [get_xlnx_outside_genome_inst_pin 148 2491] -add
# define clock mmcm_clkout2
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 148 2489] -master_clock c0_sys_clk_p -multiply_by 1 -name mmcm_clkout2 [get_xlnx_outside_genome_inst_pin 148 2492] -add
# define clock mmcm_clkout3
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 148 2489] -master_clock c0_sys_clk_p -multiply_by 1 -name mmcm_clkout3 [get_xlnx_outside_genome_inst_pin 148 2493] -add
# define clock mmcm_clkout4
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 148 2489] -master_clock c0_sys_clk_p -multiply_by 1 -name mmcm_clkout4 [get_xlnx_outside_genome_inst_pin 148 2494] -add
# define clock mmcm_clkout5
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 148 2489] -master_clock c0_sys_clk_p -edges {1 2 3} -edge_shift {0.000000 4.998000 9.996000} -name mmcm_clkout5 [get_xlnx_outside_genome_inst_pin 148 2495] -add
# define clock mmcm_clkout6
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 148 2489] -master_clock c0_sys_clk_p -edges {1 2 3} -edge_shift {0.000000 1.666000 3.332000} -name mmcm_clkout6 [get_xlnx_outside_genome_inst_pin 148 2496] -add
# define clock pll_fb_0
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 11] -master_clock mmcm_clkout0 -edges {1 2 3} -edge_shift {0.833000 0.833000 0.833000} -name pll_fb_0 [get_xlnx_outside_genome_inst_pin 6 12] -add
# define clock pll_clk[0]
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 11] -master_clock mmcm_clkout0 -multiply_by 8 -name pll_clk[0] [get_xlnx_outside_genome_inst_pin 6 13] -add
# define clock pll_fb_1
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 14] -master_clock mmcm_clkout0 -edges {1 2 3} -edge_shift {0.833000 0.833000 0.833000} -name pll_fb_1 [get_xlnx_outside_genome_inst_pin 6 15] -add
# define clock pll_clk[1]
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 14] -master_clock mmcm_clkout0 -multiply_by 8 -name pll_clk[1] [get_xlnx_outside_genome_inst_pin 6 16] -add
# define clock pll_fb_2
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 17] -master_clock mmcm_clkout0 -edges {1 2 3} -edge_shift {0.833000 0.833000 0.833000} -name pll_fb_2 [get_xlnx_outside_genome_inst_pin 6 18] -add
# define clock pll_clk[2]
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 17] -master_clock mmcm_clkout0 -multiply_by 8 -name pll_clk[2] [get_xlnx_outside_genome_inst_pin 6 19] -add
# define clock pll_clk[0]_DIV
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 13] -master_clock pll_clk[0] -divide_by 8 -name pll_clk[0]_DIV [list [get_xlnx_outside_genome_inst_pin 132 2696] [get_xlnx_outside_genome_inst_pin 132 2695] [get_xlnx_outside_genome_inst_pin 132 2694] [get_xlnx_outside_genome_inst_pin 132 2693] [get_xlnx_outside_genome_inst_pin 132 2692] [get_xlnx_outside_genome_inst_pin 132 2691] [get_xlnx_outside_genome_inst_pin 132 2690] [get_xlnx_outside_genome_inst_pin 132 2689] [get_xlnx_outside_genome_inst_pin 132 2688] [get_xlnx_outside_genome_inst_pin 132 2687] [get_xlnx_outside_genome_inst_pin 132 2686] [get_xlnx_outside_genome_inst_pin 132 2685] [get_xlnx_outside_genome_inst_pin 132 2684] [get_xlnx_outside_genome_inst_pin 132 2683] [get_xlnx_outside_genome_inst_pin 132 2682] [get_xlnx_outside_genome_inst_pin 132 2681] [get_xlnx_outside_genome_inst_pin 132 2680] [get_xlnx_outside_genome_inst_pin 132 2679] [get_xlnx_outside_genome_inst_pin 132 2678] [get_xlnx_outside_genome_inst_pin 132 2677] [get_xlnx_outside_genome_inst_pin 132 2676] [get_xlnx_outside_genome_inst_pin 132 2675] [get_xlnx_outside_genome_inst_pin 132 2674] [get_xlnx_outside_genome_inst_pin 132 2673] [get_xlnx_outside_genome_inst_pin 132 2672] [get_xlnx_outside_genome_inst_pin 132 2671] [get_xlnx_outside_genome_inst_pin 132 2670] [get_xlnx_outside_genome_inst_pin 132 2669] [get_xlnx_outside_genome_inst_pin 132 2668] [get_xlnx_outside_genome_inst_pin 132 2667] [get_xlnx_outside_genome_inst_pin 132 2666] [get_xlnx_outside_genome_inst_pin 132 2665] [get_xlnx_outside_genome_inst_pin 132 2664] [get_xlnx_outside_genome_inst_pin 132 2663] [get_xlnx_outside_genome_inst_pin 132 2662] [get_xlnx_outside_genome_inst_pin 132 2661] [get_xlnx_outside_genome_inst_pin 132 2660] [get_xlnx_outside_genome_inst_pin 132 2659] [get_xlnx_outside_genome_inst_pin 132 2658] [get_xlnx_outside_genome_inst_pin 132 2657] [get_xlnx_outside_genome_inst_pin 132 2656] [get_xlnx_outside_genome_inst_pin 132 2655] [get_xlnx_outside_genome_inst_pin 132 2654] [get_xlnx_outside_genome_inst_pin 132 2653] [get_xlnx_outside_genome_inst_pin 132 2652] [get_xlnx_outside_genome_inst_pin 132 2651] [get_xlnx_outside_genome_inst_pin 132 2650] [get_xlnx_outside_genome_inst_pin 132 2649] [get_xlnx_outside_genome_inst_pin 132 2648] [get_xlnx_outside_genome_inst_pin 132 2647] [get_xlnx_outside_genome_inst_pin 132 2646] [get_xlnx_outside_genome_inst_pin 132 2645] [get_xlnx_outside_genome_inst_pin 132 2644] [get_xlnx_outside_genome_inst_pin 132 2643] [get_xlnx_outside_genome_inst_pin 132 2642] [get_xlnx_outside_genome_inst_pin 132 2641]] -add
# define clock pll_clk[1]_DIV
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 16] -master_clock pll_clk[1] -divide_by 8 -name pll_clk[1]_DIV [list [get_xlnx_outside_genome_inst_pin 132 2752] [get_xlnx_outside_genome_inst_pin 132 2751] [get_xlnx_outside_genome_inst_pin 132 2750] [get_xlnx_outside_genome_inst_pin 132 2749] [get_xlnx_outside_genome_inst_pin 132 2748] [get_xlnx_outside_genome_inst_pin 132 2747] [get_xlnx_outside_genome_inst_pin 132 2746] [get_xlnx_outside_genome_inst_pin 132 2745] [get_xlnx_outside_genome_inst_pin 132 2744] [get_xlnx_outside_genome_inst_pin 132 2743] [get_xlnx_outside_genome_inst_pin 132 2742] [get_xlnx_outside_genome_inst_pin 132 2741] [get_xlnx_outside_genome_inst_pin 132 2740] [get_xlnx_outside_genome_inst_pin 132 2739] [get_xlnx_outside_genome_inst_pin 132 2738] [get_xlnx_outside_genome_inst_pin 132 2737] [get_xlnx_outside_genome_inst_pin 132 2736] [get_xlnx_outside_genome_inst_pin 132 2735] [get_xlnx_outside_genome_inst_pin 132 2734] [get_xlnx_outside_genome_inst_pin 132 2733] [get_xlnx_outside_genome_inst_pin 132 2732] [get_xlnx_outside_genome_inst_pin 132 2731] [get_xlnx_outside_genome_inst_pin 132 2730] [get_xlnx_outside_genome_inst_pin 132 2729] [get_xlnx_outside_genome_inst_pin 132 2728] [get_xlnx_outside_genome_inst_pin 132 2727] [get_xlnx_outside_genome_inst_pin 132 2726] [get_xlnx_outside_genome_inst_pin 132 2725] [get_xlnx_outside_genome_inst_pin 132 2724] [get_xlnx_outside_genome_inst_pin 132 2723] [get_xlnx_outside_genome_inst_pin 132 2722] [get_xlnx_outside_genome_inst_pin 132 2721] [get_xlnx_outside_genome_inst_pin 132 2720] [get_xlnx_outside_genome_inst_pin 132 2719] [get_xlnx_outside_genome_inst_pin 132 2718] [get_xlnx_outside_genome_inst_pin 132 2717] [get_xlnx_outside_genome_inst_pin 132 2716] [get_xlnx_outside_genome_inst_pin 132 2715] [get_xlnx_outside_genome_inst_pin 132 2714] [get_xlnx_outside_genome_inst_pin 132 2713] [get_xlnx_outside_genome_inst_pin 132 2712] [get_xlnx_outside_genome_inst_pin 132 2711] [get_xlnx_outside_genome_inst_pin 132 2710] [get_xlnx_outside_genome_inst_pin 132 2709] [get_xlnx_outside_genome_inst_pin 132 2708] [get_xlnx_outside_genome_inst_pin 132 2707] [get_xlnx_outside_genome_inst_pin 132 2706] [get_xlnx_outside_genome_inst_pin 132 2705] [get_xlnx_outside_genome_inst_pin 132 2704] [get_xlnx_outside_genome_inst_pin 132 2703] [get_xlnx_outside_genome_inst_pin 132 2702] [get_xlnx_outside_genome_inst_pin 132 2701] [get_xlnx_outside_genome_inst_pin 132 2700] [get_xlnx_outside_genome_inst_pin 132 2699] [get_xlnx_outside_genome_inst_pin 132 2698] [get_xlnx_outside_genome_inst_pin 132 2697]] -add
# define clock pll_clk[2]_DIV
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 6 19] -master_clock pll_clk[2] -divide_by 8 -name pll_clk[2]_DIV [list [get_xlnx_outside_genome_inst_pin 132 2780] [get_xlnx_outside_genome_inst_pin 132 2779] [get_xlnx_outside_genome_inst_pin 132 2778] [get_xlnx_outside_genome_inst_pin 132 2777] [get_xlnx_outside_genome_inst_pin 132 2776] [get_xlnx_outside_genome_inst_pin 132 2775] [get_xlnx_outside_genome_inst_pin 132 2774] [get_xlnx_outside_genome_inst_pin 132 2773] [get_xlnx_outside_genome_inst_pin 132 2772] [get_xlnx_outside_genome_inst_pin 132 2771] [get_xlnx_outside_genome_inst_pin 132 2770] [get_xlnx_outside_genome_inst_pin 132 2769] [get_xlnx_outside_genome_inst_pin 132 2768] [get_xlnx_outside_genome_inst_pin 132 2767] [get_xlnx_outside_genome_inst_pin 132 2766] [get_xlnx_outside_genome_inst_pin 132 2765] [get_xlnx_outside_genome_inst_pin 132 2764] [get_xlnx_outside_genome_inst_pin 132 2763] [get_xlnx_outside_genome_inst_pin 132 2762] [get_xlnx_outside_genome_inst_pin 132 2761] [get_xlnx_outside_genome_inst_pin 132 2760] [get_xlnx_outside_genome_inst_pin 132 2759] [get_xlnx_outside_genome_inst_pin 132 2758] [get_xlnx_outside_genome_inst_pin 132 2757] [get_xlnx_outside_genome_inst_pin 132 2756] [get_xlnx_outside_genome_inst_pin 132 2755] [get_xlnx_outside_genome_inst_pin 132 2754] [get_xlnx_outside_genome_inst_pin 132 2753]] -add
# define clock pll_clk[0]_FIFO_WRCLK_OUT
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2781] -master_clock pll_clk[0] -divide_by 4 -name pll_clk[0]_FIFO_WRCLK_OUT [get_xlnx_outside_genome_inst_pin 132 2782] -add
# define clock pll_clk[0]_FIFO_WRCLK_OUT_1
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2783] -master_clock pll_clk[0] -divide_by 4 -name pll_clk[0]_FIFO_WRCLK_OUT_1 [get_xlnx_outside_genome_inst_pin 132 2784] -add
# define clock pll_clk[0]_FIFO_WRCLK_OUT_2
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2785] -master_clock pll_clk[0] -divide_by 4 -name pll_clk[0]_FIFO_WRCLK_OUT_2 [get_xlnx_outside_genome_inst_pin 132 2786] -add
# define clock pll_clk[0]_FIFO_WRCLK_OUT_3
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2787] -master_clock pll_clk[0] -divide_by 4 -name pll_clk[0]_FIFO_WRCLK_OUT_3 [get_xlnx_outside_genome_inst_pin 132 2788] -add
# define clock pll_clk[0]_FIFO_WRCLK_OUT_4
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2789] -master_clock pll_clk[0] -divide_by 4 -name pll_clk[0]_FIFO_WRCLK_OUT_4 [get_xlnx_outside_genome_inst_pin 132 2790] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2791] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT [get_xlnx_outside_genome_inst_pin 132 2792] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT_1
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2793] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT_1 [get_xlnx_outside_genome_inst_pin 132 2794] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT_2
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2795] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT_2 [get_xlnx_outside_genome_inst_pin 132 2796] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT_3
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2797] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT_3 [get_xlnx_outside_genome_inst_pin 132 2798] -add
# define clock pll_clk[2]_FIFO_WRCLK_OUT
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2799] -master_clock pll_clk[2] -divide_by 4 -name pll_clk[2]_FIFO_WRCLK_OUT [get_xlnx_outside_genome_inst_pin 132 2800] -add
# define clock pll_clk[2]_FIFO_WRCLK_OUT_1
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2801] -master_clock pll_clk[2] -divide_by 4 -name pll_clk[2]_FIFO_WRCLK_OUT_1 [get_xlnx_outside_genome_inst_pin 132 2802] -add
# define clock pll_clk[0]_FIFO_WRCLK_OUT_5
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2803] -master_clock pll_clk[0] -divide_by 4 -name pll_clk[0]_FIFO_WRCLK_OUT_5 [get_xlnx_outside_genome_inst_pin 132 2804] -add
# define clock pll_clk[0]_FIFO_WRCLK_OUT_6
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2805] -master_clock pll_clk[0] -divide_by 4 -name pll_clk[0]_FIFO_WRCLK_OUT_6 [get_xlnx_outside_genome_inst_pin 132 2806] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT_4
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2807] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT_4 [get_xlnx_outside_genome_inst_pin 132 2808] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT_5
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2809] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT_5 [get_xlnx_outside_genome_inst_pin 132 2810] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT_6
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2811] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT_6 [get_xlnx_outside_genome_inst_pin 132 2812] -add
# define clock pll_clk[1]_FIFO_WRCLK_OUT_7
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2813] -master_clock pll_clk[1] -divide_by 4 -name pll_clk[1]_FIFO_WRCLK_OUT_7 [get_xlnx_outside_genome_inst_pin 132 2814] -add
# define clock pll_clk[2]_FIFO_WRCLK_OUT_2
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2815] -master_clock pll_clk[2] -divide_by 4 -name pll_clk[2]_FIFO_WRCLK_OUT_2 [get_xlnx_outside_genome_inst_pin 132 2816] -add
# define clock pll_clk[2]_FIFO_WRCLK_OUT_3
create_generated_clock -source [get_xlnx_outside_genome_inst_pin 132 2817] -master_clock pll_clk[2] -divide_by 4 -name pll_clk[2]_FIFO_WRCLK_OUT_3 [get_xlnx_outside_genome_inst_pin 132 2818] -add
# define clock constraints c0_sys_clk_p
# define clock constraints mmcm_clkout0
# define clock constraints mmcm_clkout1
# define clock constraints mmcm_clkout2
# define clock constraints mmcm_clkout3
# define clock constraints mmcm_clkout4
# define clock constraints mmcm_clkout5
# define clock constraints mmcm_clkout6
# define clock constraints pll_fb_0
# define clock constraints pll_clk[0]
# define clock constraints pll_fb_1
# define clock constraints pll_clk[1]
# define clock constraints pll_fb_2
# define clock constraints pll_clk[2]
# define clock constraints pll_clk[0]_DIV
# define clock constraints pll_clk[1]_DIV
# define clock constraints pll_clk[2]_DIV
# define clock constraints pll_clk[0]_FIFO_WRCLK_OUT
# define clock constraints pll_clk[0]_FIFO_WRCLK_OUT_1
# define clock constraints pll_clk[0]_FIFO_WRCLK_OUT_2
# define clock constraints pll_clk[0]_FIFO_WRCLK_OUT_3
# define clock constraints pll_clk[0]_FIFO_WRCLK_OUT_4
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT_1
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT_2
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT_3
# define clock constraints pll_clk[2]_FIFO_WRCLK_OUT
# define clock constraints pll_clk[2]_FIFO_WRCLK_OUT_1
# define clock constraints pll_clk[0]_FIFO_WRCLK_OUT_5
# define clock constraints pll_clk[0]_FIFO_WRCLK_OUT_6
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT_4
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT_5
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT_6
# define clock constraints pll_clk[1]_FIFO_WRCLK_OUT_7
# define clock constraints pll_clk[2]_FIFO_WRCLK_OUT_2
# define clock constraints pll_clk[2]_FIFO_WRCLK_OUT_3
# exception 0
set_false_path -through [get_xlnx_outside_genome_inst_pin 146 2858]
# exception 1
set_false_path -to [list [get_xlnx_outside_genome_inst_pin 146 2860] [get_xlnx_outside_genome_inst_pin 146 2859]]
# exception 2
set_false_path -through [get_xlnx_outside_genome_inst_pin 146 2861]
# exception 3
set_false_path -through [get_xlnx_outside_genome_inst_pin 146 2862]
# exception 4
set_multicycle_path -setup -from [get_xlnx_outside_genome_inst_pin 145 5576] 8
# exception 5
set_false_path -from [get_xlnx_outside_genome_inst_pin 148 2483]  -to [get_xlnx_outside_genome_inst_pin 148 2484]
# exception 6
set_false_path -from [get_xlnx_outside_genome_inst_pin 148 2483]  -to [get_xlnx_outside_genome_inst_pin 148 2485]
# exception 7
set_false_path -from [get_xlnx_outside_genome_inst_pin 148 2483]  -to [get_xlnx_outside_genome_inst_pin 148 2486]
# exception 8
set_false_path -from [get_xlnx_outside_genome_inst_pin 148 2487]  -to [get_xlnx_outside_genome_inst_pin 148 2484]
# exception 9
set_false_path -from [get_xlnx_outside_genome_inst_pin 148 2488]  -to [get_xlnx_outside_genome_inst_pin 148 2486]
# exception 10
set_false_path -from [get_xlnx_outside_genome_inst_pin 148 2487]  -to [get_xlnx_outside_genome_inst_pin 148 2485]
