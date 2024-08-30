`define		zero_word		32'd0
//opcode
`define		lui				7'b0110111
`define		auipc			7'b0010111
`define		jal				7'b1101111
`define		jalr			7'b1100111
`define		B_type			7'b1100011
`define		load			7'b0000011
`define		store			7'b0100011
`define		I_type			7'b0010011
`define		R_type			7'b0110011

//funct3
`define     add_funct3      3'b000
`define     sub_funct3      3'b000
`define     sll_funct3      3'b001
`define     slt_funct3      3'b010
`define     sltu_funct3     3'b011
`define     xor_funct3      3'b100
`define     srl_funct3      3'b101
`define     sra_funct3      3'b101
`define     or_funct3       3'b110
`define     and_funct3      3'b111

`define     lb_funct3       3'b000
`define     lh_funct3       3'b001
`define     lw_funct3       3'b010
`define     lbu_funct3      3'b100
`define     lhu_funct3      3'b101
`define     jalr_funct3     3'b000
`define     addi_funct3     3'b000
`define     slti_funct3     3'b010
`define     sltiu_funct3    3'b011
`define     xori_funct3     3'b100
`define     ori_funct3      3'b110
`define     andi_funct3     3'b111
`define     slli_funct3     3'b001
`define     srli_funct3     3'b101
`define     srai_funct3     3'b101

`define     sb_funct3       3'b000
`define     sh_funct3       3'b001
`define     sw_funct3       3'b010

`define     beq_funct3      3'b000
`define     bne_funct3      3'b001
`define     blt_funct3      3'b100
`define     bge_funct3      3'b101
`define     bltu_funct3     3'b110
`define     bgeu_funct3     3'b111

//funct7
`define		add_funct7		7'b0000000
`define		sub_funct7		7'b0100000
`define		sll_funct7		7'b0000000
`define		slt_funct7		7'b0000000
`define		sltu_funct7		7'b0000000
`define		xor_funct7		7'b0000000
`define		srl_funct7		7'b0000000
`define		sra_funct7		7'b0100000
`define		or_funct7		7'b0000000
`define		and_funct7		7'b0000000
`define		slli_funct7		7'b0000000
`define		srli_funct7		7'b0000000
`define		srai_funct7		7'b0100000

