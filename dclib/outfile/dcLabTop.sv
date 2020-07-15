/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP5-2
// Date      : Wed Jul 15 09:20:06 2020
/////////////////////////////////////////////////////////////


module pid_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  ADFM2LM U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(DIFF[7]) );
  ADFM2LM U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(carry[7]), .S(
        DIFF[6]) );
  ADFM2LM U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(carry[6]), .S(
        DIFF[5]) );
  ADFM2LM U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  ADFM2LM U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  ADFM2LM U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  ADFM2LM U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  CKND2M4LM U1 ( .A(n1), .B(n2), .Z(carry[1]) );
  XNR2M2LM U2 ( .A(B_not[0]), .B(A[0]), .Z(DIFF[0]) );
  CKINVM4LM U3 ( .A(B_not[0]), .Z(n1) );
  CKINVM4LM U4 ( .A(A[0]), .Z(n2) );
  CKINVM1LM U5 ( .A(B[7]), .Z(B_not[7]) );
  CKINVM1LM U6 ( .A(B[6]), .Z(B_not[6]) );
  CKINVM1LM U7 ( .A(B[5]), .Z(B_not[5]) );
  CKINVM1LM U8 ( .A(B[4]), .Z(B_not[4]) );
  CKINVM1LM U9 ( .A(B[3]), .Z(B_not[3]) );
  CKINVM1LM U10 ( .A(B[2]), .Z(B_not[2]) );
  CKINVM1LM U11 ( .A(B[1]), .Z(B_not[1]) );
  CKINVM1LM U12 ( .A(B[0]), .Z(B_not[0]) );
endmodule


module pid_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  ADFM2LM U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .S(SUM[7]) );
  ADFM2LM U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2LM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2LM U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2LM U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2LM U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2LM U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  CKINVM4LM U1 ( .A(A[0]), .Z(n1) );
  XNR2M2LM U2 ( .A(n1), .B(B[0]), .Z(SUM[0]) );
  CKND2M4LM U3 ( .A(B[0]), .B(A[0]), .Z(n2) );
  CKINVM4LM U4 ( .A(n2), .Z(carry[1]) );
endmodule


module pid_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [8:0] carry;
  wire   [7:0] B_not;

  ADFM2LM U2_7 ( .A(A[7]), .B(B_not[7]), .CI(carry[7]), .S(DIFF[7]) );
  ADFM2LM U2_6 ( .A(A[6]), .B(B_not[6]), .CI(carry[6]), .CO(carry[7]), .S(
        DIFF[6]) );
  ADFM2LM U2_5 ( .A(A[5]), .B(B_not[5]), .CI(carry[5]), .CO(carry[6]), .S(
        DIFF[5]) );
  ADFM2LM U2_4 ( .A(A[4]), .B(B_not[4]), .CI(carry[4]), .CO(carry[5]), .S(
        DIFF[4]) );
  ADFM2LM U2_3 ( .A(A[3]), .B(B_not[3]), .CI(carry[3]), .CO(carry[4]), .S(
        DIFF[3]) );
  ADFM2LM U2_2 ( .A(A[2]), .B(B_not[2]), .CI(carry[2]), .CO(carry[3]), .S(
        DIFF[2]) );
  ADFM2LM U2_1 ( .A(A[1]), .B(B_not[1]), .CI(carry[1]), .CO(carry[2]), .S(
        DIFF[1]) );
  CKND2M4LM U1 ( .A(n1), .B(n2), .Z(carry[1]) );
  XNR2M2LM U2 ( .A(B_not[0]), .B(A[0]), .Z(DIFF[0]) );
  CKINVM4LM U3 ( .A(B_not[0]), .Z(n1) );
  CKINVM4LM U4 ( .A(A[0]), .Z(n2) );
  CKINVM1LM U5 ( .A(B[7]), .Z(B_not[7]) );
  CKINVM1LM U6 ( .A(B[6]), .Z(B_not[6]) );
  CKINVM1LM U7 ( .A(B[5]), .Z(B_not[5]) );
  CKINVM1LM U8 ( .A(B[4]), .Z(B_not[4]) );
  CKINVM1LM U9 ( .A(B[3]), .Z(B_not[3]) );
  CKINVM1LM U10 ( .A(B[2]), .Z(B_not[2]) );
  CKINVM1LM U11 ( .A(B[1]), .Z(B_not[1]) );
  CKINVM1LM U12 ( .A(B[0]), .Z(B_not[0]) );
endmodule


module pid_DW_mult_uns_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146;

  ADFM2LM U3 ( .A(n15), .B(n24), .CI(n3), .CO(n2), .S(product[6]) );
  ADFM2LM U4 ( .A(n25), .B(n32), .CI(n4), .CO(n3), .S(product[5]) );
  ADFM2LM U5 ( .A(n33), .B(n35), .CI(n5), .CO(n4), .S(product[4]) );
  ADFM2LM U6 ( .A(n6), .B(n41), .CI(n39), .CO(n5), .S(product[3]) );
  ADFM2LM U7 ( .A(n7), .B(n64), .CI(n43), .CO(n6), .S(product[2]) );
  ADHM2LM U8 ( .A(n78), .B(n71), .CO(n7), .S(product[1]) );
  ADFM2LM U15 ( .A(n19), .B(n26), .CI(n17), .CO(n14), .S(n15) );
  ADFM2LM U16 ( .A(n28), .B(n23), .CI(n21), .CO(n16), .S(n17) );
  ADFM2LM U17 ( .A(n55), .B(n60), .CI(n30), .CO(n18), .S(n19) );
  ADFM2LM U18 ( .A(n51), .B(n73), .CI(n66), .CO(n20), .S(n21) );
  ADHM2LM U19 ( .A(n46), .B(n48), .CO(n22), .S(n23) );
  ADFM2LM U20 ( .A(n29), .B(n34), .CI(n27), .CO(n24), .S(n25) );
  ADFM2LM U21 ( .A(n36), .B(n67), .CI(n31), .CO(n26), .S(n27) );
  ADFM2LM U22 ( .A(n56), .B(n74), .CI(n61), .CO(n28), .S(n29) );
  ADHM2LM U23 ( .A(n49), .B(n52), .CO(n30), .S(n31) );
  ADFM2LM U24 ( .A(n37), .B(n40), .CI(n38), .CO(n32), .S(n33) );
  ADFM2LM U25 ( .A(n62), .B(n75), .CI(n68), .CO(n34), .S(n35) );
  ADHM2LM U26 ( .A(n53), .B(n57), .CO(n36), .S(n37) );
  ADFM2LM U27 ( .A(n69), .B(n76), .CI(n42), .CO(n38), .S(n39) );
  ADHM2LM U28 ( .A(n58), .B(n63), .CO(n40), .S(n41) );
  ADHM2LM U29 ( .A(n70), .B(n77), .CO(n42), .S(n43) );
  CKXOR2M1LM U84 ( .A(n123), .B(n124), .Z(product[7]) );
  XNR4M1LM U85 ( .A(n125), .B(n14), .C(n126), .D(n127), .Z(n124) );
  CKND2M2LM U86 ( .A(b[0]), .B(a[7]), .Z(n127) );
  XNR4M1LM U87 ( .A(n128), .B(n129), .C(n130), .D(n131), .Z(n126) );
  CKND2M2LM U88 ( .A(b[7]), .B(a[0]), .Z(n131) );
  CKND2M2LM U89 ( .A(b[4]), .B(a[3]), .Z(n130) );
  CKND2M2LM U90 ( .A(b[6]), .B(a[1]), .Z(n129) );
  CKND2M2LM U91 ( .A(b[2]), .B(a[5]), .Z(n128) );
  XNR4M1LM U92 ( .A(n132), .B(n18), .C(n133), .D(n134), .Z(n125) );
  CKND2M2LM U93 ( .A(b[3]), .B(a[4]), .Z(n134) );
  CKND2M2LM U94 ( .A(b[5]), .B(a[2]), .Z(n133) );
  CKND2M2LM U95 ( .A(b[1]), .B(a[6]), .Z(n132) );
  XNR4M1LM U96 ( .A(n2), .B(n16), .C(n22), .D(n20), .Z(n123) );
  NR2M1LM U97 ( .A(n135), .B(n136), .Z(product[0]) );
  NR2M1LM U98 ( .A(n137), .B(n136), .Z(n78) );
  NR2M1LM U99 ( .A(n136), .B(n138), .Z(n77) );
  NR2M1LM U100 ( .A(n139), .B(n136), .Z(n76) );
  NR2M1LM U101 ( .A(n140), .B(n136), .Z(n75) );
  NR2M1LM U102 ( .A(n141), .B(n136), .Z(n74) );
  CKINVM1LM U103 ( .A(a[0]), .Z(n136) );
  AN2M1LM U104 ( .A(b[6]), .B(a[0]), .Z(n73) );
  NR2M1LM U105 ( .A(n135), .B(n142), .Z(n71) );
  NR2M1LM U106 ( .A(n137), .B(n142), .Z(n70) );
  NR2M1LM U107 ( .A(n142), .B(n138), .Z(n69) );
  NR2M1LM U108 ( .A(n139), .B(n142), .Z(n68) );
  NR2M1LM U109 ( .A(n140), .B(n142), .Z(n67) );
  NR2M1LM U110 ( .A(n141), .B(n142), .Z(n66) );
  CKINVM1LM U111 ( .A(a[1]), .Z(n142) );
  CKINVM1LM U112 ( .A(b[5]), .Z(n141) );
  NR2M1LM U113 ( .A(n135), .B(n143), .Z(n64) );
  NR2M1LM U114 ( .A(n137), .B(n143), .Z(n63) );
  NR2M1LM U115 ( .A(n143), .B(n138), .Z(n62) );
  NR2M1LM U116 ( .A(n143), .B(n139), .Z(n61) );
  NR2M1LM U117 ( .A(n143), .B(n140), .Z(n60) );
  CKINVM1LM U118 ( .A(b[4]), .Z(n140) );
  CKINVM1LM U119 ( .A(a[2]), .Z(n143) );
  NR2M1LM U120 ( .A(n135), .B(n144), .Z(n58) );
  NR2M1LM U121 ( .A(n137), .B(n144), .Z(n57) );
  NR2M1LM U122 ( .A(n144), .B(n138), .Z(n56) );
  NR2M1LM U123 ( .A(n139), .B(n144), .Z(n55) );
  CKINVM1LM U124 ( .A(a[3]), .Z(n144) );
  CKINVM1LM U125 ( .A(b[3]), .Z(n139) );
  NR2M1LM U126 ( .A(n135), .B(n145), .Z(n53) );
  NR2M1LM U127 ( .A(n137), .B(n145), .Z(n52) );
  NR2M1LM U128 ( .A(n145), .B(n138), .Z(n51) );
  CKINVM1LM U129 ( .A(b[2]), .Z(n138) );
  CKINVM1LM U130 ( .A(a[4]), .Z(n145) );
  NR2M1LM U131 ( .A(n135), .B(n146), .Z(n49) );
  CKINVM1LM U132 ( .A(b[0]), .Z(n135) );
  NR2M1LM U133 ( .A(n137), .B(n146), .Z(n48) );
  CKINVM1LM U134 ( .A(a[5]), .Z(n146) );
  CKINVM1LM U135 ( .A(b[1]), .Z(n137) );
  AN2M1LM U136 ( .A(a[6]), .B(b[0]), .Z(n46) );
endmodule


module pid_DW_mult_uns_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146;

  ADFM2LM U3 ( .A(n15), .B(n24), .CI(n3), .CO(n2), .S(product[6]) );
  ADFM2LM U4 ( .A(n25), .B(n32), .CI(n4), .CO(n3), .S(product[5]) );
  ADFM2LM U5 ( .A(n33), .B(n35), .CI(n5), .CO(n4), .S(product[4]) );
  ADFM2LM U6 ( .A(n6), .B(n41), .CI(n39), .CO(n5), .S(product[3]) );
  ADFM2LM U7 ( .A(n7), .B(n64), .CI(n43), .CO(n6), .S(product[2]) );
  ADHM2LM U8 ( .A(n78), .B(n71), .CO(n7), .S(product[1]) );
  ADFM2LM U15 ( .A(n19), .B(n26), .CI(n17), .CO(n14), .S(n15) );
  ADFM2LM U16 ( .A(n28), .B(n23), .CI(n21), .CO(n16), .S(n17) );
  ADFM2LM U17 ( .A(n55), .B(n60), .CI(n30), .CO(n18), .S(n19) );
  ADFM2LM U18 ( .A(n51), .B(n73), .CI(n66), .CO(n20), .S(n21) );
  ADHM2LM U19 ( .A(n46), .B(n48), .CO(n22), .S(n23) );
  ADFM2LM U20 ( .A(n29), .B(n34), .CI(n27), .CO(n24), .S(n25) );
  ADFM2LM U21 ( .A(n36), .B(n67), .CI(n31), .CO(n26), .S(n27) );
  ADFM2LM U22 ( .A(n56), .B(n74), .CI(n61), .CO(n28), .S(n29) );
  ADHM2LM U23 ( .A(n49), .B(n52), .CO(n30), .S(n31) );
  ADFM2LM U24 ( .A(n37), .B(n40), .CI(n38), .CO(n32), .S(n33) );
  ADFM2LM U25 ( .A(n62), .B(n75), .CI(n68), .CO(n34), .S(n35) );
  ADHM2LM U26 ( .A(n53), .B(n57), .CO(n36), .S(n37) );
  ADFM2LM U27 ( .A(n69), .B(n76), .CI(n42), .CO(n38), .S(n39) );
  ADHM2LM U28 ( .A(n58), .B(n63), .CO(n40), .S(n41) );
  ADHM2LM U29 ( .A(n70), .B(n77), .CO(n42), .S(n43) );
  CKXOR2M1LM U84 ( .A(n123), .B(n124), .Z(product[7]) );
  XNR4M1LM U85 ( .A(n125), .B(n14), .C(n126), .D(n127), .Z(n124) );
  CKND2M2LM U86 ( .A(b[0]), .B(a[7]), .Z(n127) );
  XNR4M1LM U87 ( .A(n128), .B(n129), .C(n130), .D(n131), .Z(n126) );
  CKND2M2LM U88 ( .A(b[7]), .B(a[0]), .Z(n131) );
  CKND2M2LM U89 ( .A(b[4]), .B(a[3]), .Z(n130) );
  CKND2M2LM U90 ( .A(b[6]), .B(a[1]), .Z(n129) );
  CKND2M2LM U91 ( .A(b[2]), .B(a[5]), .Z(n128) );
  XNR4M1LM U92 ( .A(n132), .B(n18), .C(n133), .D(n134), .Z(n125) );
  CKND2M2LM U93 ( .A(b[3]), .B(a[4]), .Z(n134) );
  CKND2M2LM U94 ( .A(b[5]), .B(a[2]), .Z(n133) );
  CKND2M2LM U95 ( .A(b[1]), .B(a[6]), .Z(n132) );
  XNR4M1LM U96 ( .A(n2), .B(n16), .C(n22), .D(n20), .Z(n123) );
  NR2M1LM U97 ( .A(n135), .B(n136), .Z(product[0]) );
  NR2M1LM U98 ( .A(n137), .B(n136), .Z(n78) );
  NR2M1LM U99 ( .A(n136), .B(n138), .Z(n77) );
  NR2M1LM U100 ( .A(n139), .B(n136), .Z(n76) );
  NR2M1LM U101 ( .A(n140), .B(n136), .Z(n75) );
  NR2M1LM U102 ( .A(n141), .B(n136), .Z(n74) );
  CKINVM1LM U103 ( .A(a[0]), .Z(n136) );
  AN2M1LM U104 ( .A(b[6]), .B(a[0]), .Z(n73) );
  NR2M1LM U105 ( .A(n135), .B(n142), .Z(n71) );
  NR2M1LM U106 ( .A(n137), .B(n142), .Z(n70) );
  NR2M1LM U107 ( .A(n142), .B(n138), .Z(n69) );
  NR2M1LM U108 ( .A(n139), .B(n142), .Z(n68) );
  NR2M1LM U109 ( .A(n140), .B(n142), .Z(n67) );
  NR2M1LM U110 ( .A(n141), .B(n142), .Z(n66) );
  CKINVM1LM U111 ( .A(a[1]), .Z(n142) );
  CKINVM1LM U112 ( .A(b[5]), .Z(n141) );
  NR2M1LM U113 ( .A(n135), .B(n143), .Z(n64) );
  NR2M1LM U114 ( .A(n137), .B(n143), .Z(n63) );
  NR2M1LM U115 ( .A(n143), .B(n138), .Z(n62) );
  NR2M1LM U116 ( .A(n143), .B(n139), .Z(n61) );
  NR2M1LM U117 ( .A(n143), .B(n140), .Z(n60) );
  CKINVM1LM U118 ( .A(b[4]), .Z(n140) );
  CKINVM1LM U119 ( .A(a[2]), .Z(n143) );
  NR2M1LM U120 ( .A(n135), .B(n144), .Z(n58) );
  NR2M1LM U121 ( .A(n137), .B(n144), .Z(n57) );
  NR2M1LM U122 ( .A(n144), .B(n138), .Z(n56) );
  NR2M1LM U123 ( .A(n139), .B(n144), .Z(n55) );
  CKINVM1LM U124 ( .A(a[3]), .Z(n144) );
  CKINVM1LM U125 ( .A(b[3]), .Z(n139) );
  NR2M1LM U126 ( .A(n135), .B(n145), .Z(n53) );
  NR2M1LM U127 ( .A(n137), .B(n145), .Z(n52) );
  NR2M1LM U128 ( .A(n145), .B(n138), .Z(n51) );
  CKINVM1LM U129 ( .A(b[2]), .Z(n138) );
  CKINVM1LM U130 ( .A(a[4]), .Z(n145) );
  NR2M1LM U131 ( .A(n135), .B(n146), .Z(n49) );
  CKINVM1LM U132 ( .A(b[0]), .Z(n135) );
  NR2M1LM U133 ( .A(n137), .B(n146), .Z(n48) );
  CKINVM1LM U134 ( .A(a[5]), .Z(n146) );
  CKINVM1LM U135 ( .A(b[1]), .Z(n137) );
  AN2M1LM U136 ( .A(a[6]), .B(b[0]), .Z(n46) );
endmodule


module pid_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146;

  ADFM2LM U3 ( .A(n15), .B(n24), .CI(n3), .CO(n2), .S(product[6]) );
  ADFM2LM U4 ( .A(n25), .B(n32), .CI(n4), .CO(n3), .S(product[5]) );
  ADFM2LM U5 ( .A(n33), .B(n35), .CI(n5), .CO(n4), .S(product[4]) );
  ADFM2LM U6 ( .A(n6), .B(n41), .CI(n39), .CO(n5), .S(product[3]) );
  ADFM2LM U7 ( .A(n7), .B(n64), .CI(n43), .CO(n6), .S(product[2]) );
  ADHM2LM U8 ( .A(n78), .B(n71), .CO(n7), .S(product[1]) );
  ADFM2LM U15 ( .A(n19), .B(n26), .CI(n17), .CO(n14), .S(n15) );
  ADFM2LM U16 ( .A(n28), .B(n23), .CI(n21), .CO(n16), .S(n17) );
  ADFM2LM U17 ( .A(n55), .B(n60), .CI(n30), .CO(n18), .S(n19) );
  ADFM2LM U18 ( .A(n51), .B(n73), .CI(n66), .CO(n20), .S(n21) );
  ADHM2LM U19 ( .A(n46), .B(n48), .CO(n22), .S(n23) );
  ADFM2LM U20 ( .A(n29), .B(n34), .CI(n27), .CO(n24), .S(n25) );
  ADFM2LM U21 ( .A(n36), .B(n67), .CI(n31), .CO(n26), .S(n27) );
  ADFM2LM U22 ( .A(n56), .B(n74), .CI(n61), .CO(n28), .S(n29) );
  ADHM2LM U23 ( .A(n49), .B(n52), .CO(n30), .S(n31) );
  ADFM2LM U24 ( .A(n37), .B(n40), .CI(n38), .CO(n32), .S(n33) );
  ADFM2LM U25 ( .A(n62), .B(n75), .CI(n68), .CO(n34), .S(n35) );
  ADHM2LM U26 ( .A(n53), .B(n57), .CO(n36), .S(n37) );
  ADFM2LM U27 ( .A(n69), .B(n76), .CI(n42), .CO(n38), .S(n39) );
  ADHM2LM U28 ( .A(n58), .B(n63), .CO(n40), .S(n41) );
  ADHM2LM U29 ( .A(n70), .B(n77), .CO(n42), .S(n43) );
  CKXOR2M1LM U84 ( .A(n123), .B(n124), .Z(product[7]) );
  XNR4M1LM U85 ( .A(n125), .B(n14), .C(n126), .D(n127), .Z(n124) );
  CKND2M2LM U86 ( .A(b[0]), .B(a[7]), .Z(n127) );
  XNR4M1LM U87 ( .A(n128), .B(n129), .C(n130), .D(n131), .Z(n126) );
  CKND2M2LM U88 ( .A(b[7]), .B(a[0]), .Z(n131) );
  CKND2M2LM U89 ( .A(b[4]), .B(a[3]), .Z(n130) );
  CKND2M2LM U90 ( .A(b[6]), .B(a[1]), .Z(n129) );
  CKND2M2LM U91 ( .A(b[2]), .B(a[5]), .Z(n128) );
  XNR4M1LM U92 ( .A(n132), .B(n18), .C(n133), .D(n134), .Z(n125) );
  CKND2M2LM U93 ( .A(b[3]), .B(a[4]), .Z(n134) );
  CKND2M2LM U94 ( .A(b[5]), .B(a[2]), .Z(n133) );
  CKND2M2LM U95 ( .A(b[1]), .B(a[6]), .Z(n132) );
  XNR4M1LM U96 ( .A(n2), .B(n16), .C(n22), .D(n20), .Z(n123) );
  NR2M1LM U97 ( .A(n135), .B(n136), .Z(product[0]) );
  NR2M1LM U98 ( .A(n137), .B(n136), .Z(n78) );
  NR2M1LM U99 ( .A(n136), .B(n138), .Z(n77) );
  NR2M1LM U100 ( .A(n139), .B(n136), .Z(n76) );
  NR2M1LM U101 ( .A(n140), .B(n136), .Z(n75) );
  NR2M1LM U102 ( .A(n141), .B(n136), .Z(n74) );
  CKINVM1LM U103 ( .A(a[0]), .Z(n136) );
  AN2M1LM U104 ( .A(b[6]), .B(a[0]), .Z(n73) );
  NR2M1LM U105 ( .A(n135), .B(n142), .Z(n71) );
  NR2M1LM U106 ( .A(n137), .B(n142), .Z(n70) );
  NR2M1LM U107 ( .A(n142), .B(n138), .Z(n69) );
  NR2M1LM U108 ( .A(n139), .B(n142), .Z(n68) );
  NR2M1LM U109 ( .A(n140), .B(n142), .Z(n67) );
  NR2M1LM U110 ( .A(n141), .B(n142), .Z(n66) );
  CKINVM1LM U111 ( .A(a[1]), .Z(n142) );
  CKINVM1LM U112 ( .A(b[5]), .Z(n141) );
  NR2M1LM U113 ( .A(n135), .B(n143), .Z(n64) );
  NR2M1LM U114 ( .A(n137), .B(n143), .Z(n63) );
  NR2M1LM U115 ( .A(n143), .B(n138), .Z(n62) );
  NR2M1LM U116 ( .A(n143), .B(n139), .Z(n61) );
  NR2M1LM U117 ( .A(n143), .B(n140), .Z(n60) );
  CKINVM1LM U118 ( .A(b[4]), .Z(n140) );
  CKINVM1LM U119 ( .A(a[2]), .Z(n143) );
  NR2M1LM U120 ( .A(n135), .B(n144), .Z(n58) );
  NR2M1LM U121 ( .A(n137), .B(n144), .Z(n57) );
  NR2M1LM U122 ( .A(n144), .B(n138), .Z(n56) );
  NR2M1LM U123 ( .A(n139), .B(n144), .Z(n55) );
  CKINVM1LM U124 ( .A(a[3]), .Z(n144) );
  CKINVM1LM U125 ( .A(b[3]), .Z(n139) );
  NR2M1LM U126 ( .A(n135), .B(n145), .Z(n53) );
  NR2M1LM U127 ( .A(n137), .B(n145), .Z(n52) );
  NR2M1LM U128 ( .A(n145), .B(n138), .Z(n51) );
  CKINVM1LM U129 ( .A(b[2]), .Z(n138) );
  CKINVM1LM U130 ( .A(a[4]), .Z(n145) );
  NR2M1LM U131 ( .A(n135), .B(n146), .Z(n49) );
  CKINVM1LM U132 ( .A(b[0]), .Z(n135) );
  NR2M1LM U133 ( .A(n137), .B(n146), .Z(n48) );
  CKINVM1LM U134 ( .A(a[5]), .Z(n146) );
  CKINVM1LM U135 ( .A(b[1]), .Z(n137) );
  AN2M1LM U136 ( .A(a[6]), .B(b[0]), .Z(n46) );
endmodule


module pid_DW01_add_2 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  ADFM2LM U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .S(SUM[7]) );
  ADFM2LM U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2LM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2LM U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2LM U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2LM U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2LM U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  CKINVM4LM U1 ( .A(A[0]), .Z(n1) );
  XNR2M2LM U2 ( .A(n1), .B(B[0]), .Z(SUM[0]) );
  CKND2M4LM U3 ( .A(B[0]), .B(A[0]), .Z(n2) );
  CKINVM4LM U4 ( .A(n2), .Z(carry[1]) );
endmodule


module pid_DW01_add_1 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [7:1] carry;

  ADFM2LM U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .S(SUM[7]) );
  ADFM2LM U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2LM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADFM2LM U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2LM U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2LM U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2LM U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  CKINVM4LM U1 ( .A(A[0]), .Z(n1) );
  XNR2M2LM U2 ( .A(n1), .B(B[0]), .Z(SUM[0]) );
  CKND2M4LM U3 ( .A(B[0]), .B(A[0]), .Z(n2) );
  CKINVM4LM U4 ( .A(n2), .Z(carry[1]) );
endmodule


module pid ( clk, rstn, value_in, value_out, clk_10M, value_taget, Error_new, 
        Error_adder, Error_old, Error_sub, Kp, Ki, Kd );
  input [7:0] value_in;
  output [7:0] value_out;
  input [7:0] value_taget;
  output [7:0] Error_new;
  output [7:0] Error_adder;
  output [7:0] Error_old;
  output [7:0] Error_sub;
  input [7:0] Kp;
  input [7:0] Ki;
  input [7:0] Kd;
  input clk, rstn;
  output clk_10M;
  wire   N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N71, N72, N73, N74, N75, N76, N77, N78, N80,
         N81, N85, N86, N87, N88, N89, n14, n15, N70, N69, N68, N67, N66, N65,
         N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51,
         N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39;
  wire   [4:0] adder5;
  wire   [4:2] \add_58/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23;

  CKINVM4LM I_1 ( .A(N88), .Z(N89) );
  OR2M8LM C145 ( .A(adder5[0]), .B(N87), .Z(N88) );
  OR2M8LM C144 ( .A(adder5[1]), .B(N86), .Z(N87) );
  OR2M8LM C143 ( .A(N80), .B(N85), .Z(N86) );
  OR2M8LM C142 ( .A(adder5[3]), .B(adder5[4]), .Z(N85) );
  OR2M8LM C136 ( .A(adder5[3]), .B(adder5[4]), .Z(N81) );
  CKINVM4LM I_0 ( .A(adder5[2]), .Z(N80) );
  DFQRM2LM adder5_reg_0_ ( .D(N8), .CK(clk), .RB(rstn), .Q(adder5[0]) );
  DFQRM2LM adder5_reg_1_ ( .D(N9), .CK(clk), .RB(rstn), .Q(adder5[1]) );
  DFQRM2LM adder5_reg_2_ ( .D(N10), .CK(clk), .RB(rstn), .Q(adder5[2]) );
  DFQRM2LM adder5_reg_3_ ( .D(N11), .CK(clk), .RB(rstn), .Q(adder5[3]) );
  DFQRM2LM adder5_reg_4_ ( .D(N12), .CK(clk), .RB(rstn), .Q(adder5[4]) );
  DFQRM2LM clk_10M_reg ( .D(n15), .CK(clk), .RB(rstn), .Q(clk_10M) );
  DFQRM2LM Error_new_reg_7_ ( .D(N22), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[7]) );
  DFQRM2LM Error_new_reg_6_ ( .D(N21), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[6]) );
  DFQRM2LM Error_new_reg_5_ ( .D(N20), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[5]) );
  DFQRM2LM Error_new_reg_4_ ( .D(N19), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[4]) );
  DFQRM2LM Error_new_reg_3_ ( .D(N18), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[3]) );
  DFQRM2LM Error_new_reg_2_ ( .D(N17), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[2]) );
  DFQRM2LM Error_new_reg_1_ ( .D(N16), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[1]) );
  DFQRM2LM Error_new_reg_0_ ( .D(N15), .CK(clk_10M), .RB(rstn), .Q(
        Error_new[0]) );
  DFQRM2LM Error_adder_reg_0_ ( .D(N23), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[0]) );
  DFQRM2LM Error_adder_reg_1_ ( .D(N24), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[1]) );
  DFQRM2LM Error_adder_reg_2_ ( .D(N25), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[2]) );
  DFQRM2LM Error_adder_reg_3_ ( .D(N26), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[3]) );
  DFQRM2LM Error_adder_reg_4_ ( .D(N27), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[4]) );
  DFQRM2LM Error_adder_reg_5_ ( .D(N28), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[5]) );
  DFQRM2LM Error_adder_reg_6_ ( .D(N29), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[6]) );
  DFQRM2LM Error_adder_reg_7_ ( .D(N30), .CK(clk_10M), .RB(rstn), .Q(
        Error_adder[7]) );
  DFQRM2LM Error_old_reg_7_ ( .D(N22), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[7]) );
  DFQRM2LM Error_old_reg_6_ ( .D(N21), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[6]) );
  DFQRM2LM Error_old_reg_5_ ( .D(N20), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[5]) );
  DFQRM2LM Error_old_reg_4_ ( .D(N19), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[4]) );
  DFQRM2LM Error_old_reg_3_ ( .D(N18), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[3]) );
  DFQRM2LM Error_old_reg_2_ ( .D(N17), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[2]) );
  DFQRM2LM Error_old_reg_1_ ( .D(N16), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[1]) );
  DFQRM2LM Error_old_reg_0_ ( .D(N15), .CK(clk_10M), .RB(rstn), .Q(
        Error_old[0]) );
  DFEQM2LM Error_sub_reg_7_ ( .D(N38), .E(rstn), .CK(clk_10M), .Q(Error_sub[7]) );
  DFEQM2LM Error_sub_reg_6_ ( .D(N37), .E(rstn), .CK(clk_10M), .Q(Error_sub[6]) );
  DFEQM2LM Error_sub_reg_5_ ( .D(N36), .E(rstn), .CK(clk_10M), .Q(Error_sub[5]) );
  DFEQM2LM Error_sub_reg_4_ ( .D(N35), .E(rstn), .CK(clk_10M), .Q(Error_sub[4]) );
  DFEQM2LM Error_sub_reg_3_ ( .D(N34), .E(rstn), .CK(clk_10M), .Q(Error_sub[3]) );
  DFEQM2LM Error_sub_reg_2_ ( .D(N33), .E(rstn), .CK(clk_10M), .Q(Error_sub[2]) );
  DFEQM2LM Error_sub_reg_1_ ( .D(N32), .E(rstn), .CK(clk_10M), .Q(Error_sub[1]) );
  DFEQM2LM Error_sub_reg_0_ ( .D(N31), .E(rstn), .CK(clk_10M), .Q(Error_sub[0]) );
  DFQRM2LM value_out_reg_7_ ( .D(N78), .CK(clk_10M), .RB(rstn), .Q(
        value_out[7]) );
  DFQRM2LM value_out_reg_6_ ( .D(N77), .CK(clk_10M), .RB(rstn), .Q(
        value_out[6]) );
  DFQRM2LM value_out_reg_5_ ( .D(N76), .CK(clk_10M), .RB(rstn), .Q(
        value_out[5]) );
  DFQRM2LM value_out_reg_4_ ( .D(N75), .CK(clk_10M), .RB(rstn), .Q(
        value_out[4]) );
  DFQRM2LM value_out_reg_3_ ( .D(N74), .CK(clk_10M), .RB(rstn), .Q(
        value_out[3]) );
  DFQRM2LM value_out_reg_2_ ( .D(N73), .CK(clk_10M), .RB(rstn), .Q(
        value_out[2]) );
  DFQRM2LM value_out_reg_1_ ( .D(N72), .CK(clk_10M), .RB(rstn), .Q(
        value_out[1]) );
  DFQRM2LM value_out_reg_0_ ( .D(N71), .CK(clk_10M), .RB(rstn), .Q(
        value_out[0]) );
  CKXOR2M1LM U3 ( .A(clk_10M), .B(n14), .Z(n15) );
  NR4M1LM U4 ( .A(adder5[1]), .B(adder5[0]), .C(N81), .D(N80), .Z(n14) );
  NR2B1M1LM U8 ( .NA(N4), .B(N89), .Z(N9) );
  NR2B1M1LM U9 ( .NA(N3), .B(N89), .Z(N8) );
  NR2B1M1LM U10 ( .NA(N7), .B(N89), .Z(N12) );
  NR2B1M1LM U11 ( .NA(N6), .B(N89), .Z(N11) );
  NR2B1M1LM U12 ( .NA(N5), .B(N89), .Z(N10) );
  pid_DW01_sub_0 sub_107_2 ( .A({N22, N21, N20, N19, N18, N17, N16, N15}), .B(
        Error_old), .CI(1'b0), .DIFF({N38, N37, N36, N35, N34, N33, N32, N31})
         );
  pid_DW01_add_0 add_96 ( .A({N22, N21, N20, N19, N18, N17, N16, N15}), .B(
        Error_adder), .CI(1'b0), .SUM({N30, N29, N28, N27, N26, N25, N24, N23}) );
  pid_DW01_sub_1 sub_87 ( .A(value_in), .B(value_taget), .CI(1'b0), .DIFF({N22, 
        N21, N20, N19, N18, N17, N16, N15}) );
  pid_DW_mult_uns_2 mult_117 ( .a(Kp), .b(Error_new), .product({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, N46, N45, N44, N43, 
        N42, N41, N40, N39}) );
  pid_DW_mult_uns_1 mult_117_2 ( .a(Ki), .b(Error_adder), .product({
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, N54, N53, N52, N51, 
        N50, N49, N48, N47}) );
  pid_DW_mult_uns_0 mult_117_3 ( .a(Kd), .b(Error_sub), .product({
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, N70, N69, N68, N67, 
        N66, N65, N64, N63}) );
  pid_DW01_add_2 add_1_root_add_0_root_add_117_2 ( .A({N70, N69, N68, N67, N66, 
        N65, N64, N63}), .B({N54, N53, N52, N51, N50, N49, N48, N47}), .CI(
        1'b0), .SUM({N62, N61, N60, N59, N58, N57, N56, N55}) );
  pid_DW01_add_1 add_0_root_add_0_root_add_117_2 ( .A({N46, N45, N44, N43, N42, 
        N41, N40, N39}), .B({N62, N61, N60, N59, N58, N57, N56, N55}), .CI(
        1'b0), .SUM({N78, N77, N76, N75, N74, N73, N72, N71}) );
  ADHM4LM \add_58/U1_1_1  ( .A(adder5[1]), .B(adder5[0]), .CO(
        \add_58/carry [2]), .S(N4) );
  ADHM4LM \add_58/U1_1_2  ( .A(adder5[2]), .B(\add_58/carry [2]), .CO(
        \add_58/carry [3]), .S(N5) );
  ADHM4LM \add_58/U1_1_3  ( .A(adder5[3]), .B(\add_58/carry [3]), .CO(
        \add_58/carry [4]), .S(N6) );
  CKINVM1LM U13 ( .A(adder5[0]), .Z(N3) );
  CKXOR2M1LM U14 ( .A(\add_58/carry [4]), .B(adder5[4]), .Z(N7) );
endmodule

