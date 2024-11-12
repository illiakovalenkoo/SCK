/* Generated by Yosys 0.34 (git sha1 4a1b5599258, gcc 13.2.1 -march=x86-64 -mtune=generic -O2 -fno-plt -fexceptions -fstack-clash-protection -fcf-protection -ffile-prefix-map=/build/yosys/src=/usr/src/debug/yosys -fPIC -Os) */

module arith_unit_26_rtl(i_op, i_arg_A, i_arg_B, i_clk, i_reset, o_result, o_status);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire ERROR;
  wire NOT_EVEN_1;
  wire ONES;
  wire OVERFLOW;
  wire [31:0] i;
  input [3:0] i_arg_A;
  wire [3:0] i_arg_A;
  input [3:0] i_arg_B;
  wire [3:0] i_arg_B;
  input i_clk;
  wire i_clk;
  input [1:0] i_op;
  wire [1:0] i_op;
  input i_reset;
  wire i_reset;
  output [3:0] o_result;
  reg [3:0] o_result;
  output [3:0] o_status;
  reg [3:0] o_status;
  wire [3:0] s_result;
  assign _080_ = ~i_arg_B[2];
  assign _081_ = ~i_arg_B[1];
  assign _082_ = ~i_arg_B[3];
  assign _083_ = ~i_arg_A[3];
  assign _084_ = ~i_arg_A[2];
  assign _085_ = ~i_arg_B[0];
  assign _086_ = ~i_arg_A[1];
  assign _087_ = ~i_arg_A[0];
  assign _088_ = ~i_op[0];
  assign _089_ = ~i_op[1];
  assign _090_ = _088_ & _089_;
  assign _091_ = i_op[0] | i_op[1];
  assign _092_ = i_arg_B[0] | i_arg_A[1];
  assign _093_ = i_arg_B[0] & _087_;
  assign _094_ = _085_ | i_arg_A[0];
  assign _095_ = _082_ & _092_;
  assign _096_ = _094_ & _095_;
  assign _097_ = _080_ & i_arg_B[1];
  assign _098_ = _096_ & _097_;
  assign _099_ = _080_ & _081_;
  assign _100_ = i_arg_B[1] | i_arg_B[0];
  assign _101_ = _085_ & _099_;
  assign _102_ = i_arg_B[3] | _101_;
  assign _103_ = i_arg_A[3] & _102_;
  assign _104_ = _082_ & i_arg_A[2];
  assign _105_ = i_arg_B[0] & _104_;
  assign _106_ = _099_ & _105_;
  assign _107_ = _103_ | _106_;
  assign _108_ = _098_ | _107_;
  assign _109_ = _090_ & _108_;
  assign _110_ = i_arg_B[2] & _084_;
  assign _111_ = _080_ | i_arg_A[2];
  assign _112_ = i_arg_B[2] | i_arg_A[2];
  assign _113_ = i_arg_B[2] & i_arg_A[2];
  assign _114_ = i_arg_B[2] ^ i_arg_A[2];
  assign _115_ = ~_114_;
  assign _116_ = i_arg_B[1] & _086_;
  assign _117_ = _081_ | i_arg_A[1];
  assign _118_ = _085_ & i_arg_A[0];
  assign _119_ = i_arg_B[0] | _087_;
  assign _120_ = _081_ & i_arg_A[1];
  assign _121_ = i_arg_B[1] | _086_;
  assign _122_ = _118_ | _120_;
  assign _123_ = _117_ & _118_;
  assign _124_ = _116_ | _119_;
  assign _125_ = _115_ & _121_;
  assign _126_ = _114_ | _120_;
  assign _127_ = _124_ & _125_;
  assign _128_ = _123_ | _126_;
  assign _129_ = _111_ & _128_;
  assign _130_ = _110_ | _127_;
  assign _131_ = _093_ | _116_;
  assign _132_ = _114_ | _131_;
  assign _133_ = _122_ | _132_;
  assign _134_ = _130_ & _133_;
  assign _135_ = i_op[0] & _089_;
  assign _136_ = ~_135_;
  assign _137_ = i_arg_B[3] & _083_;
  assign _138_ = _135_ & _137_;
  assign _139_ = _134_ & _138_;
  assign _140_ = i_op[0] & i_op[1];
  assign _141_ = i_arg_A[3] & _140_;
  assign _142_ = i_arg_B[2] & i_arg_B[1];
  assign _143_ = i_arg_B[0] & _142_;
  assign _144_ = ~_143_;
  assign _145_ = i_arg_A[1] | i_arg_A[0];
  assign _146_ = i_arg_A[2] | _145_;
  assign _147_ = ~_146_;
  assign _148_ = _088_ & i_op[1];
  assign _149_ = _146_ & _148_;
  assign _150_ = _144_ & _149_;
  assign _151_ = _082_ ^ i_arg_A[3];
  assign _152_ = _150_ & _151_;
  assign _153_ = _141_ | _152_;
  assign _154_ = _139_ | _153_;
  assign s_result[3] = _109_ | _154_;
  assign _155_ = i_arg_B[3] & _084_;
  assign _156_ = _082_ | i_arg_A[2];
  assign _157_ = _134_ & _155_;
  assign _158_ = _083_ & i_arg_A[2];
  assign _159_ = _128_ & _158_;
  assign _000_ = _157_ | _159_;
  assign _001_ = _135_ & _000_;
  assign _002_ = i_arg_A[2] & _101_;
  assign _003_ = _080_ & _100_;
  assign _004_ = _122_ & _003_;
  assign _005_ = i_arg_B[3] | _004_;
  assign _006_ = _002_ | _005_;
  assign _007_ = _090_ & _156_;
  assign _008_ = _006_ & _007_;
  assign _009_ = i_arg_B[1] & i_arg_A[2];
  assign _010_ = ~_009_;
  assign _011_ = _080_ | i_arg_B[0];
  assign _012_ = ~_011_;
  assign _013_ = _009_ & _012_;
  assign _014_ = _010_ | _011_;
  assign _015_ = _149_ & _013_;
  assign _016_ = i_arg_A[3] & _145_;
  assign _017_ = i_arg_A[2] ^ _016_;
  assign _018_ = _140_ & _017_;
  assign _019_ = _015_ | _018_;
  assign _020_ = _008_ | _019_;
  assign s_result[2] = _001_ | _020_;
  assign _021_ = i_arg_B[3] & _134_;
  assign _022_ = i_arg_A[1] | _021_;
  assign _023_ = _083_ & _129_;
  assign _024_ = _086_ | _023_;
  assign _025_ = _135_ & _024_;
  assign _026_ = _022_ & _025_;
  assign _027_ = i_arg_B[3] & i_arg_A[1];
  assign _028_ = _096_ & _099_;
  assign _029_ = _027_ | _028_;
  assign _030_ = _090_ & _029_;
  assign _031_ = i_arg_A[3] & i_arg_A[0];
  assign _032_ = i_arg_A[1] & _031_;
  assign _033_ = ~_032_;
  assign _034_ = i_arg_A[1] | _031_;
  assign _035_ = _140_ & _034_;
  assign _036_ = _033_ & _035_;
  assign _037_ = _009_ & _011_;
  assign _038_ = _113_ | _142_;
  assign _039_ = _092_ & _038_;
  assign _040_ = ~_039_;
  assign _041_ = _037_ | _040_;
  assign _042_ = ~_041_;
  assign _043_ = _150_ & _042_;
  assign _044_ = _036_ | _043_;
  assign _045_ = _030_ | _044_;
  assign s_result[1] = _026_ | _045_;
  assign _046_ = i_arg_A[0] & i_op[0];
  assign _047_ = _089_ | _046_;
  assign _048_ = _087_ & _021_;
  assign _049_ = i_arg_A[0] & _023_;
  assign _050_ = _136_ | _049_;
  assign _051_ = _048_ | _050_;
  assign _052_ = _047_ & _051_;
  assign _053_ = i_arg_B[0] | _041_;
  assign _054_ = i_arg_B[0] | i_arg_A[0];
  assign _055_ = i_arg_B[1] | _054_;
  assign _056_ = i_arg_A[1] & _055_;
  assign _057_ = _053_ & _056_;
  assign _058_ = _113_ & _014_;
  assign _059_ = _041_ & _058_;
  assign _060_ = i_arg_B[1] & _054_;
  assign _061_ = _059_ | _060_;
  assign _062_ = _057_ | _061_;
  assign _063_ = _112_ & _150_;
  assign _064_ = _062_ & _063_;
  assign _065_ = _052_ | _064_;
  assign _066_ = i_arg_A[0] & _102_;
  assign _067_ = _091_ | _066_;
  assign s_result[0] = _065_ & _067_;
  assign OVERFLOW = _141_ & _147_;
  assign _068_ = _143_ & _149_;
  assign _069_ = OVERFLOW | _068_;
  assign _070_ = ~_069_;
  assign _071_ = _082_ | _091_;
  assign _072_ = _101_ | _071_;
  assign _073_ = _070_ & _072_;
  assign ERROR = ~_073_;
  assign _074_ = s_result[1] & s_result[0];
  assign _075_ = s_result[1] ^ s_result[0];
  assign _076_ = s_result[3] & s_result[2];
  assign _077_ = s_result[3] ^ s_result[2];
  assign _078_ = _075_ ^ _077_;
  assign NOT_EVEN_1 = _073_ & _078_;
  assign _079_ = _073_ & _076_;
  assign ONES = _074_ & _079_;
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_result[0] <= 1'h0;
    else o_result[0] <= s_result[0];
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_result[1] <= 1'h0;
    else o_result[1] <= s_result[1];
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_result[2] <= 1'h0;
    else o_result[2] <= s_result[2];
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_result[3] <= 1'h0;
    else o_result[3] <= s_result[3];
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_status[0] <= 1'h0;
    else o_status[0] <= OVERFLOW;
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_status[1] <= 1'h0;
    else o_status[1] <= ONES;
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_status[2] <= 1'h0;
    else o_status[2] <= NOT_EVEN_1;
  always @(posedge i_clk, negedge i_reset)
    if (!i_reset) o_status[3] <= 1'h0;
    else o_status[3] <= ERROR;
  assign i = 32'd4;
endmodule


