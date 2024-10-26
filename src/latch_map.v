module \$_DLATCH_P_ (input E, input D, output Q);
  sg13g2_dlhq_1 _TECHMAP_DLATCH_P (
    .D(D),
    .Q(Q),
    .GATE(E)
  );
endmodule

module \$_DLATCH_N_ (input E, input D, output Q);
  sg13g2_dllrq_1 _TECHMAP_DLATCH_N (
    .D(D),
    .Q(Q),
    .GATE_N(E),
    .RESET_B(1'b1)
  );
endmodule

module \$_DLATCH_PN0_ (input E, input R, input D, output Q);
  sg13g2_dlhrq_1 _TECHMAP_DLATCH_PN0 (
    .D(D),
    .Q(Q),
    .GATE(E),
    .RESET_B(R)
  );
endmodule

module \$_DLATCH_NN0_ (input E, input R, input D, output Q);
  sg13g2_dllrq_1 _TECHMAP_DLATCH_NN0 (
    .D(D),
    .Q(Q),
    .GATE_N(E),
    .RESET_B(R)
  );
endmodule

module \$_DLATCH_PP0_ (input E, input R, input D, output Q);

  wire D_N;
  wire Q_N;

  assign D_N = !D;

  sg13g2_dlhrq_1 _TECHMAP_DLATCH_PP0 (
    .D(D_N),
    .Q(Q_N),
    .GATE(E),
    .RESET_B(R)
  );
  
  assign Q = !Q_N;
  
endmodule

module \$_DLATCH_NP0_ (input E, input R, input D, output Q);

  wire D_N;
  wire Q_N;
  
  assign D_N = !D;

  sg13g2_dllrq_1 _TECHMAP_DLATCH_NP0 (
    .D(D_N),
    .Q(Q_N),
    .GATE_N(E),
    .RESET_B(R)
  );
  
  assign Q = !Q_N;
  
endmodule
