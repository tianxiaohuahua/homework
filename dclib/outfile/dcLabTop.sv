/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP5-2
// Date      : Thu Jul  9 17:05:18 2020
/////////////////////////////////////////////////////////////


module pid_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n13, n14, n15;
  wire   [8:0] carry;

  ADFM2LM U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADFM2LM U2_4 ( .A(A[4]), .B(n11), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADFM2LM U2_5 ( .A(A[5]), .B(n10), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADFM2LM U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADFM2LM U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADFM2LM U2_1 ( .A(A[1]), .B(n14), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XNR2M2LM U1 ( .A(n15), .B(A[0]), .Z(DIFF[0]) );
  XNR3M2LM U2 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Z(DIFF[7]) );
  INVM2LM U3 ( .A(B[1]), .Z(n14) );
  OR2M2LM U4 ( .A(A[0]), .B(n15), .Z(carry[1]) );
  INVM2LM U5 ( .A(B[2]), .Z(n13) );
  INVM2LM U6 ( .A(B[3]), .Z(n12) );
  INVM2LM U7 ( .A(B[5]), .Z(n10) );
  INVM2LM U8 ( .A(B[4]), .Z(n11) );
  INVM2LM U9 ( .A(B[6]), .Z(n9) );
  INVM2LM U10 ( .A(B[0]), .Z(n15) );
endmodule


module pid_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ADFM2LM U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2LM U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2LM U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADFM2LM U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2LM U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2LM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3M2LM U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Z(SUM[7]) );
  CKAN2M2LM U1 ( .A(B[0]), .B(A[0]), .Z(n1) );
  XOR2M1LM U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module pid_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [8:0] carry;

  XOR3M4LM U2_7 ( .A(A[7]), .B(n9), .C(carry[7]), .Z(DIFF[7]) );
  XNR2M4LM U10 ( .A(n16), .B(A[0]), .Z(DIFF[0]) );
  ADFM4LM U2_6 ( .A(A[6]), .B(n10), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADFM4LM U2_4 ( .A(A[4]), .B(n12), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADFM4LM U2_5 ( .A(A[5]), .B(n11), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADFM4LM U2_3 ( .A(A[3]), .B(n13), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADFM4LM U2_2 ( .A(A[2]), .B(n14), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADFM4LM U2_1 ( .A(A[1]), .B(n15), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVM2LM U1 ( .A(B[7]), .Z(n9) );
  INVM2LM U2 ( .A(B[1]), .Z(n15) );
  OR2M2LM U3 ( .A(A[0]), .B(n16), .Z(carry[1]) );
  INVM2LM U4 ( .A(B[2]), .Z(n14) );
  INVM2LM U5 ( .A(B[3]), .Z(n13) );
  INVM2LM U6 ( .A(B[5]), .Z(n11) );
  INVM2LM U7 ( .A(B[4]), .Z(n12) );
  INVM2LM U8 ( .A(B[6]), .Z(n10) );
  INVM2LM U9 ( .A(B[0]), .Z(n16) );
endmodule


module pid_DW_mult_uns_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158;

  INVM4LM U84 ( .A(b[1]), .Z(n158) );
  INVM4LM U85 ( .A(a[0]), .Z(n152) );
  INVM4LM U86 ( .A(b[0]), .Z(n154) );
  INVM4LM U87 ( .A(a[1]), .Z(n151) );
  INVM4LM U88 ( .A(a[2]), .Z(n150) );
  INVM2LM U89 ( .A(a[4]), .Z(n148) );
  ADFM2LM U90 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product[5]) );
  ADFM2LM U91 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product[6]) );
  ADFM2LM U92 ( .A(n31), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  ADFM2LM U93 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  ADFM2LM U94 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product[3]) );
  ADFM2LM U95 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product[4]) );
  ADFM2LM U96 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  NR2M4LM U97 ( .A(n152), .B(n154), .Z(product[0]) );
  XNR4M2LM U98 ( .A(n14), .B(n135), .C(n136), .D(n137), .Z(product[7]) );
  NR2M2LM U99 ( .A(n149), .B(n153), .Z(n135) );
  XNR4M2LM U100 ( .A(n2), .B(n16), .C(n22), .D(n20), .Z(n136) );
  ADFM2LM U101 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product[2]) );
  NR2M2LM U102 ( .A(n150), .B(n154), .Z(n64) );
  ADFM2LM U103 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  NR2M2LM U104 ( .A(n152), .B(n156), .Z(n76) );
  NR2M2LM U105 ( .A(n151), .B(n157), .Z(n69) );
  ADFM2LM U106 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  NR2M2LM U107 ( .A(n150), .B(n156), .Z(n61) );
  NR2M2LM U108 ( .A(n155), .B(n152), .Z(n74) );
  NR2M2LM U109 ( .A(n149), .B(n157), .Z(n56) );
  ADFM2LM U110 ( .A(n67), .B(n36), .CI(n34), .CO(n26), .S(n27) );
  NR2M2LM U111 ( .A(n153), .B(n151), .Z(n67) );
  ADFM2LM U112 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  NR2M2LM U113 ( .A(n153), .B(n152), .Z(n75) );
  NR2M2LM U114 ( .A(n150), .B(n157), .Z(n62) );
  NR2M2LM U115 ( .A(n151), .B(n156), .Z(n68) );
  ADHM2LM U116 ( .A(n53), .B(n57), .CO(n36), .S(n37) );
  NR2M2LM U117 ( .A(n149), .B(n158), .Z(n57) );
  NR2M2LM U118 ( .A(n148), .B(n154), .Z(n53) );
  ADHM2LM U119 ( .A(n78), .B(n71), .CO(n7), .S(product[1]) );
  NR2M2LM U120 ( .A(n152), .B(n158), .Z(n78) );
  NR2M2LM U121 ( .A(n151), .B(n154), .Z(n71) );
  ADHM2LM U122 ( .A(n58), .B(n63), .CO(n40), .S(n41) );
  NR2M2LM U123 ( .A(n150), .B(n158), .Z(n63) );
  NR2M2LM U124 ( .A(n149), .B(n154), .Z(n58) );
  ADFM2LM U125 ( .A(n66), .B(n60), .CI(n30), .CO(n18), .S(n19) );
  NR2M2LM U126 ( .A(n153), .B(n150), .Z(n60) );
  NR2M2LM U127 ( .A(n155), .B(n151), .Z(n66) );
  ADFM2LM U128 ( .A(n28), .B(n23), .CI(n21), .CO(n16), .S(n17) );
  ADHM2LM U129 ( .A(n49), .B(n52), .CO(n30), .S(n31) );
  NR2M2LM U130 ( .A(n147), .B(n154), .Z(n49) );
  NR2M2LM U131 ( .A(n158), .B(n148), .Z(n52) );
  ADHM2LM U132 ( .A(n70), .B(n77), .CO(n42), .S(n43) );
  NR2M2LM U133 ( .A(n151), .B(n158), .Z(n70) );
  NR2M2LM U134 ( .A(n157), .B(n152), .Z(n77) );
  INVM4LM U135 ( .A(b[2]), .Z(n157) );
  INVM4LM U136 ( .A(a[3]), .Z(n149) );
  XOR3M2LM U137 ( .A(n138), .B(n139), .C(n140), .Z(n137) );
  CKND2M2LM U138 ( .A(b[5]), .B(a[2]), .Z(n140) );
  XNR4M2LM U139 ( .A(n144), .B(n18), .C(n145), .D(n146), .Z(n138) );
  XOR3M2LM U140 ( .A(n141), .B(n142), .C(n143), .Z(n139) );
  INVM4LM U141 ( .A(b[3]), .Z(n156) );
  INVM4LM U142 ( .A(b[4]), .Z(n153) );
  INVM2LM U143 ( .A(b[5]), .Z(n155) );
  CKND2M2LM U144 ( .A(b[0]), .B(a[7]), .Z(n141) );
  ADFM2LM U145 ( .A(n73), .B(n51), .CI(n55), .CO(n20), .S(n21) );
  AN2M2LM U146 ( .A(b[6]), .B(a[0]), .Z(n73) );
  NR2M2LM U147 ( .A(n149), .B(n156), .Z(n55) );
  NR2M2LM U148 ( .A(n157), .B(n148), .Z(n51) );
  CKND2M2LM U149 ( .A(b[2]), .B(a[5]), .Z(n146) );
  CKND2M2LM U150 ( .A(b[3]), .B(a[4]), .Z(n142) );
  CKND2M2LM U151 ( .A(b[1]), .B(a[6]), .Z(n143) );
  ADHM2LM U152 ( .A(n46), .B(n48), .CO(n22), .S(n23) );
  AN2M2LM U153 ( .A(a[6]), .B(b[0]), .Z(n46) );
  NR2M2LM U154 ( .A(n147), .B(n158), .Z(n48) );
  CKND2M2LM U155 ( .A(b[6]), .B(a[1]), .Z(n144) );
  INVM2LM U156 ( .A(a[5]), .Z(n147) );
  CKND2M2LM U157 ( .A(b[7]), .B(a[0]), .Z(n145) );
endmodule


module pid_DW_mult_uns_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158;

  INVM4LM U84 ( .A(a[0]), .Z(n153) );
  INVM4LM U85 ( .A(b[0]), .Z(n147) );
  INVM4LM U86 ( .A(a[1]), .Z(n152) );
  INVM4LM U87 ( .A(b[1]), .Z(n155) );
  INVM4LM U88 ( .A(a[2]), .Z(n151) );
  INVM2LM U89 ( .A(a[4]), .Z(n149) );
  ADFM2LM U90 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product[5]) );
  ADFM2LM U91 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product[6]) );
  ADFM2LM U92 ( .A(n31), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  ADFM2LM U93 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  ADFM2LM U94 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product[3]) );
  ADFM2LM U95 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product[4]) );
  ADFM2LM U96 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  NR2M4LM U97 ( .A(n153), .B(n147), .Z(product[0]) );
  XNR4M2LM U98 ( .A(n14), .B(n135), .C(n136), .D(n137), .Z(product[7]) );
  NR2M2LM U99 ( .A(n150), .B(n154), .Z(n135) );
  XNR4M2LM U100 ( .A(n2), .B(n16), .C(n22), .D(n20), .Z(n136) );
  XOR3M2LM U101 ( .A(n138), .B(n139), .C(n140), .Z(n137) );
  ADFM2LM U102 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product[2]) );
  NR2M2LM U103 ( .A(n151), .B(n147), .Z(n64) );
  ADFM2LM U104 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  NR2M2LM U105 ( .A(n153), .B(n157), .Z(n76) );
  NR2M2LM U106 ( .A(n152), .B(n156), .Z(n69) );
  ADFM2LM U107 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  NR2M2LM U108 ( .A(n151), .B(n157), .Z(n61) );
  NR2M2LM U109 ( .A(n158), .B(n153), .Z(n74) );
  NR2M2LM U110 ( .A(n150), .B(n156), .Z(n56) );
  ADFM2LM U111 ( .A(n67), .B(n36), .CI(n34), .CO(n26), .S(n27) );
  NR2M2LM U112 ( .A(n154), .B(n152), .Z(n67) );
  ADFM2LM U113 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  NR2M2LM U114 ( .A(n154), .B(n153), .Z(n75) );
  NR2M2LM U115 ( .A(n152), .B(n157), .Z(n68) );
  NR2M2LM U116 ( .A(n151), .B(n156), .Z(n62) );
  ADHM2LM U117 ( .A(n53), .B(n57), .CO(n36), .S(n37) );
  NR2M2LM U118 ( .A(n150), .B(n155), .Z(n57) );
  NR2M2LM U119 ( .A(n149), .B(n147), .Z(n53) );
  ADHM2LM U120 ( .A(n78), .B(n71), .CO(n7), .S(product[1]) );
  NR2M2LM U121 ( .A(n153), .B(n155), .Z(n78) );
  NR2M2LM U122 ( .A(n152), .B(n147), .Z(n71) );
  ADHM2LM U123 ( .A(n58), .B(n63), .CO(n40), .S(n41) );
  NR2M2LM U124 ( .A(n151), .B(n155), .Z(n63) );
  NR2M2LM U125 ( .A(n150), .B(n147), .Z(n58) );
  ADFM2LM U126 ( .A(n66), .B(n60), .CI(n30), .CO(n18), .S(n19) );
  NR2M2LM U127 ( .A(n158), .B(n152), .Z(n66) );
  NR2M2LM U128 ( .A(n154), .B(n151), .Z(n60) );
  ADFM2LM U129 ( .A(n28), .B(n23), .CI(n21), .CO(n16), .S(n17) );
  ADHM2LM U130 ( .A(n49), .B(n52), .CO(n30), .S(n31) );
  NR2M2LM U131 ( .A(n148), .B(n147), .Z(n49) );
  NR2M2LM U132 ( .A(n155), .B(n149), .Z(n52) );
  ADHM2LM U133 ( .A(n70), .B(n77), .CO(n42), .S(n43) );
  NR2M2LM U134 ( .A(n152), .B(n155), .Z(n70) );
  NR2M2LM U135 ( .A(n156), .B(n153), .Z(n77) );
  INVM4LM U136 ( .A(b[2]), .Z(n156) );
  INVM4LM U137 ( .A(a[3]), .Z(n150) );
  INVM4LM U138 ( .A(b[3]), .Z(n157) );
  XOR3M2LM U139 ( .A(n141), .B(n142), .C(n143), .Z(n139) );
  CKND2M2LM U140 ( .A(b[1]), .B(a[6]), .Z(n143) );
  CKND2M2LM U141 ( .A(b[3]), .B(a[4]), .Z(n142) );
  CKND2M2LM U142 ( .A(b[0]), .B(a[7]), .Z(n141) );
  INVM4LM U143 ( .A(b[4]), .Z(n154) );
  XNR4M2LM U144 ( .A(n144), .B(n18), .C(n145), .D(n146), .Z(n138) );
  CKND2M2LM U145 ( .A(b[7]), .B(a[0]), .Z(n145) );
  CKND2M2LM U146 ( .A(b[6]), .B(a[1]), .Z(n144) );
  CKND2M2LM U147 ( .A(b[2]), .B(a[5]), .Z(n146) );
  INVM2LM U148 ( .A(b[5]), .Z(n158) );
  CKND2M2LM U149 ( .A(b[5]), .B(a[2]), .Z(n140) );
  ADFM2LM U150 ( .A(n73), .B(n51), .CI(n55), .CO(n20), .S(n21) );
  AN2M2LM U151 ( .A(b[6]), .B(a[0]), .Z(n73) );
  NR2M2LM U152 ( .A(n150), .B(n157), .Z(n55) );
  NR2M2LM U153 ( .A(n156), .B(n149), .Z(n51) );
  ADHM2LM U154 ( .A(n46), .B(n48), .CO(n22), .S(n23) );
  AN2M2LM U155 ( .A(a[6]), .B(b[0]), .Z(n46) );
  NR2M2LM U156 ( .A(n148), .B(n155), .Z(n48) );
  INVM2LM U157 ( .A(a[5]), .Z(n148) );
endmodule


module pid_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n46, n48, n49, n51, n52, n53, n55,
         n56, n57, n58, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70, n71,
         n73, n74, n75, n76, n77, n78, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158;

  INVM4LM U84 ( .A(b[1]), .Z(n158) );
  INVM4LM U85 ( .A(a[0]), .Z(n152) );
  INVM4LM U86 ( .A(b[0]), .Z(n154) );
  INVM4LM U87 ( .A(a[1]), .Z(n151) );
  INVM4LM U88 ( .A(a[2]), .Z(n150) );
  INVM2LM U89 ( .A(a[4]), .Z(n148) );
  ADFM2LM U90 ( .A(n32), .B(n25), .CI(n4), .CO(n3), .S(product[5]) );
  ADFM2LM U91 ( .A(n24), .B(n15), .CI(n3), .CO(n2), .S(product[6]) );
  ADFM2LM U92 ( .A(n31), .B(n29), .CI(n27), .CO(n24), .S(n25) );
  ADFM2LM U93 ( .A(n40), .B(n37), .CI(n35), .CO(n32), .S(n33) );
  ADFM2LM U94 ( .A(n41), .B(n6), .CI(n39), .CO(n5), .S(product[3]) );
  ADFM2LM U95 ( .A(n38), .B(n33), .CI(n5), .CO(n4), .S(product[4]) );
  ADFM2LM U96 ( .A(n26), .B(n19), .CI(n17), .CO(n14), .S(n15) );
  NR2M4LM U97 ( .A(n152), .B(n154), .Z(product[0]) );
  XNR4M2LM U98 ( .A(n14), .B(n135), .C(n136), .D(n137), .Z(product[7]) );
  NR2M2LM U99 ( .A(n149), .B(n153), .Z(n135) );
  XNR4M2LM U100 ( .A(n2), .B(n16), .C(n22), .D(n20), .Z(n136) );
  XOR3M2LM U101 ( .A(n138), .B(n139), .C(n140), .Z(n137) );
  ADFM2LM U102 ( .A(n64), .B(n7), .CI(n43), .CO(n6), .S(product[2]) );
  NR2M2LM U103 ( .A(n150), .B(n154), .Z(n64) );
  ADFM2LM U104 ( .A(n76), .B(n69), .CI(n42), .CO(n38), .S(n39) );
  NR2M2LM U105 ( .A(n152), .B(n156), .Z(n76) );
  NR2M2LM U106 ( .A(n151), .B(n157), .Z(n69) );
  ADFM2LM U107 ( .A(n74), .B(n56), .CI(n61), .CO(n28), .S(n29) );
  NR2M2LM U108 ( .A(n150), .B(n156), .Z(n61) );
  NR2M2LM U109 ( .A(n155), .B(n152), .Z(n74) );
  NR2M2LM U110 ( .A(n149), .B(n157), .Z(n56) );
  ADFM2LM U111 ( .A(n67), .B(n36), .CI(n34), .CO(n26), .S(n27) );
  NR2M2LM U112 ( .A(n153), .B(n151), .Z(n67) );
  ADFM2LM U113 ( .A(n75), .B(n62), .CI(n68), .CO(n34), .S(n35) );
  NR2M2LM U114 ( .A(n153), .B(n152), .Z(n75) );
  NR2M2LM U115 ( .A(n150), .B(n157), .Z(n62) );
  NR2M2LM U116 ( .A(n151), .B(n156), .Z(n68) );
  ADHM2LM U117 ( .A(n53), .B(n57), .CO(n36), .S(n37) );
  NR2M2LM U118 ( .A(n149), .B(n158), .Z(n57) );
  NR2M2LM U119 ( .A(n148), .B(n154), .Z(n53) );
  ADHM2LM U120 ( .A(n78), .B(n71), .CO(n7), .S(product[1]) );
  NR2M2LM U121 ( .A(n152), .B(n158), .Z(n78) );
  NR2M2LM U122 ( .A(n151), .B(n154), .Z(n71) );
  ADHM2LM U123 ( .A(n58), .B(n63), .CO(n40), .S(n41) );
  NR2M2LM U124 ( .A(n150), .B(n158), .Z(n63) );
  NR2M2LM U125 ( .A(n149), .B(n154), .Z(n58) );
  ADFM2LM U126 ( .A(n66), .B(n60), .CI(n30), .CO(n18), .S(n19) );
  NR2M2LM U127 ( .A(n153), .B(n150), .Z(n60) );
  NR2M2LM U128 ( .A(n155), .B(n151), .Z(n66) );
  ADFM2LM U129 ( .A(n28), .B(n23), .CI(n21), .CO(n16), .S(n17) );
  ADHM2LM U130 ( .A(n49), .B(n52), .CO(n30), .S(n31) );
  NR2M2LM U131 ( .A(n147), .B(n154), .Z(n49) );
  NR2M2LM U132 ( .A(n158), .B(n148), .Z(n52) );
  ADHM2LM U133 ( .A(n70), .B(n77), .CO(n42), .S(n43) );
  NR2M2LM U134 ( .A(n151), .B(n158), .Z(n70) );
  NR2M2LM U135 ( .A(n157), .B(n152), .Z(n77) );
  INVM4LM U136 ( .A(b[2]), .Z(n157) );
  INVM4LM U137 ( .A(a[3]), .Z(n149) );
  XOR3M2LM U138 ( .A(n141), .B(n142), .C(n143), .Z(n139) );
  CKND2M2LM U139 ( .A(b[1]), .B(a[6]), .Z(n143) );
  CKND2M2LM U140 ( .A(b[3]), .B(a[4]), .Z(n142) );
  CKND2M2LM U141 ( .A(b[0]), .B(a[7]), .Z(n141) );
  INVM4LM U142 ( .A(b[3]), .Z(n156) );
  INVM4LM U143 ( .A(b[4]), .Z(n153) );
  XNR4M2LM U144 ( .A(n144), .B(n18), .C(n145), .D(n146), .Z(n138) );
  CKND2M2LM U145 ( .A(b[7]), .B(a[0]), .Z(n145) );
  CKND2M2LM U146 ( .A(b[6]), .B(a[1]), .Z(n144) );
  CKND2M2LM U147 ( .A(b[2]), .B(a[5]), .Z(n146) );
  INVM2LM U148 ( .A(b[5]), .Z(n155) );
  ADFM2LM U149 ( .A(n73), .B(n51), .CI(n55), .CO(n20), .S(n21) );
  AN2M2LM U150 ( .A(b[6]), .B(a[0]), .Z(n73) );
  NR2M2LM U151 ( .A(n149), .B(n156), .Z(n55) );
  NR2M2LM U152 ( .A(n157), .B(n148), .Z(n51) );
  CKND2M2LM U153 ( .A(b[5]), .B(a[2]), .Z(n140) );
  ADHM2LM U154 ( .A(n46), .B(n48), .CO(n22), .S(n23) );
  AN2M2LM U155 ( .A(a[6]), .B(b[0]), .Z(n46) );
  NR2M2LM U156 ( .A(n147), .B(n158), .Z(n48) );
  INVM2LM U157 ( .A(a[5]), .Z(n147) );
endmodule


module pid_DW01_add_2 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  XOR3M2LM U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Z(SUM[7]) );
  ADFM2LM U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADFM2LM U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2LM U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2LM U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2LM U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2LM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR2M2LM U1 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
  AN2M2LM U2 ( .A(B[0]), .B(A[0]), .Z(n1) );
endmodule


module pid_DW01_add_1 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  XOR3M2LM U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Z(SUM[7]) );
  ADFM2LM U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADFM2LM U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADFM2LM U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADFM2LM U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADFM2LM U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADFM2LM U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AN2M2LM U1 ( .A(B[0]), .B(A[0]), .Z(n1) );
  XOR2M2LM U2 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
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
  wire   N4, N5, N6, N8, N9, N10, N11, N12, N15, N16, N17, N18, N19, N20, N21,
         N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N71, N72, N73, N74, N75, N76, N77, N78, N70, N69, N68,
         N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54,
         N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41, N40,
         N39, n33, n34, n35, n36, n37, n38, n39, n40, n41;
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

  DFQRM8LM \Error_adder_reg[0]  ( .D(N23), .CK(n36), .RB(rstn), .Q(
        Error_adder[0]) );
  DFEQM2LM \Error_sub_reg[4]  ( .D(N35), .E(rstn), .CK(n38), .Q(Error_sub[4])
         );
  DFEQM2LM \Error_sub_reg[7]  ( .D(N38), .E(rstn), .CK(n36), .Q(Error_sub[7])
         );
  DFQRM2LM \Error_new_reg[4]  ( .D(N19), .CK(n38), .RB(rstn), .Q(Error_new[4])
         );
  DFQRM2LM \Error_old_reg[7]  ( .D(N22), .CK(n38), .RB(rstn), .Q(Error_old[7])
         );
  DFQRM2LM \Error_old_reg[6]  ( .D(N21), .CK(n38), .RB(rstn), .Q(Error_old[6])
         );
  DFQRM2LM \Error_old_reg[5]  ( .D(N20), .CK(n38), .RB(rstn), .Q(Error_old[5])
         );
  DFQRM2LM \Error_old_reg[4]  ( .D(N19), .CK(n38), .RB(rstn), .Q(Error_old[4])
         );
  DFQRM2LM \Error_old_reg[3]  ( .D(N18), .CK(n37), .RB(rstn), .Q(Error_old[3])
         );
  DFQRM2LM \Error_old_reg[2]  ( .D(N17), .CK(n38), .RB(rstn), .Q(Error_old[2])
         );
  DFQRM2LM \Error_old_reg[1]  ( .D(N16), .CK(n38), .RB(rstn), .Q(Error_old[1])
         );
  DFQRM2LM \Error_old_reg[0]  ( .D(N15), .CK(n37), .RB(rstn), .Q(Error_old[0])
         );
  DFQRM2LM \Error_new_reg[7]  ( .D(N22), .CK(n38), .RB(rstn), .Q(Error_new[7])
         );
  DFQRM4LM \Error_adder_reg[4]  ( .D(N27), .CK(n37), .RB(rstn), .Q(
        Error_adder[4]) );
  DFQRM4LM \Error_adder_reg[6]  ( .D(N29), .CK(n37), .RB(rstn), .Q(
        Error_adder[6]) );
  DFEQM4LM \Error_sub_reg[0]  ( .D(N31), .E(rstn), .CK(n38), .Q(Error_sub[0])
         );
  DFQRM4LM \Error_new_reg[0]  ( .D(N15), .CK(n37), .RB(rstn), .Q(Error_new[0])
         );
  DFQRM4LM \Error_adder_reg[1]  ( .D(N24), .CK(n37), .RB(rstn), .Q(
        Error_adder[1]) );
  DFQRM4LM \Error_adder_reg[2]  ( .D(N25), .CK(n37), .RB(rstn), .Q(
        Error_adder[2]) );
  DFQRM4LM \Error_adder_reg[3]  ( .D(N26), .CK(n37), .RB(rstn), .Q(
        Error_adder[3]) );
  DFQRM4LM \Error_adder_reg[5]  ( .D(N28), .CK(n37), .RB(rstn), .Q(
        Error_adder[5]) );
  DFQRM2LM \adder5_reg[4]  ( .D(N12), .CK(clk), .RB(rstn), .Q(adder5[4]) );
  DFQRM2LM \adder5_reg[3]  ( .D(N11), .CK(clk), .RB(rstn), .Q(adder5[3]) );
  DFQRM2LM \adder5_reg[2]  ( .D(N10), .CK(clk), .RB(rstn), .Q(adder5[2]) );
  DFQRM2LM \adder5_reg[1]  ( .D(N9), .CK(clk), .RB(rstn), .Q(adder5[1]) );
  ADHM2LM U26 ( .A(adder5[3]), .B(\add_58/carry [3]), .CO(\add_58/carry [4]), 
        .S(N6) );
  ADHM2LM U25 ( .A(adder5[2]), .B(\add_58/carry [2]), .CO(\add_58/carry [3]), 
        .S(N5) );
  ADHM2LM U24 ( .A(adder5[1]), .B(adder5[0]), .CO(\add_58/carry [2]), .S(N4)
         );
  DFQRM2LM \Error_adder_reg[7]  ( .D(N30), .CK(n37), .RB(rstn), .Q(
        Error_adder[7]) );
  DFEQM2LM \Error_sub_reg[6]  ( .D(N37), .E(rstn), .CK(n38), .Q(Error_sub[6])
         );
  DFQRM2LM \Error_new_reg[6]  ( .D(N21), .CK(n37), .RB(rstn), .Q(Error_new[6])
         );
  DFEQM2LM \Error_sub_reg[5]  ( .D(N36), .E(rstn), .CK(n38), .Q(Error_sub[5])
         );
  DFEQM2LM \Error_sub_reg[3]  ( .D(N34), .E(rstn), .CK(n37), .Q(Error_sub[3])
         );
  DFEQM2LM \Error_sub_reg[2]  ( .D(N33), .E(rstn), .CK(n38), .Q(Error_sub[2])
         );
  DFEQM2LM \Error_sub_reg[1]  ( .D(N32), .E(rstn), .CK(n38), .Q(Error_sub[1])
         );
  DFQRM2LM \Error_new_reg[5]  ( .D(N20), .CK(n36), .RB(rstn), .Q(Error_new[5])
         );
  DFQRM2LM \Error_new_reg[3]  ( .D(N18), .CK(n36), .RB(rstn), .Q(Error_new[3])
         );
  DFQRM2LM \Error_new_reg[2]  ( .D(N17), .CK(n36), .RB(rstn), .Q(Error_new[2])
         );
  DFQRM2LM \Error_new_reg[1]  ( .D(N16), .CK(n37), .RB(rstn), .Q(Error_new[1])
         );
  DFQRM2LM \adder5_reg[0]  ( .D(N8), .CK(clk), .RB(rstn), .Q(adder5[0]) );
  DFQRM2LM \value_out_reg[7]  ( .D(N78), .CK(n36), .RB(rstn), .Q(value_out[7])
         );
  DFQRM2LM \value_out_reg[6]  ( .D(N77), .CK(n36), .RB(rstn), .Q(value_out[6])
         );
  DFQRM2LM \value_out_reg[5]  ( .D(N76), .CK(n36), .RB(rstn), .Q(value_out[5])
         );
  DFQRM2LM \value_out_reg[4]  ( .D(N75), .CK(n36), .RB(rstn), .Q(value_out[4])
         );
  DFQRM2LM \value_out_reg[3]  ( .D(N74), .CK(n36), .RB(rstn), .Q(value_out[3])
         );
  DFQRM2LM \value_out_reg[2]  ( .D(N73), .CK(n36), .RB(rstn), .Q(value_out[2])
         );
  DFQRM2LM \value_out_reg[1]  ( .D(N72), .CK(n36), .RB(rstn), .Q(value_out[1])
         );
  DFQRM2LM \value_out_reg[0]  ( .D(N71), .CK(n36), .RB(rstn), .Q(value_out[0])
         );
  INVM10LM U35 ( .A(n39), .Z(n38) );
  INVM10LM U36 ( .A(n39), .Z(n37) );
  INVM10LM U37 ( .A(n39), .Z(n36) );
  INVM4LM U38 ( .A(clk_10M), .Z(n39) );
  NR2B1M2LM U39 ( .NA(N6), .B(n35), .Z(N11) );
  NR2B1M2LM U40 ( .NA(N4), .B(n35), .Z(N9) );
  NR2B1M2LM U41 ( .NA(N5), .B(n35), .Z(N10) );
  NR2M2LM U42 ( .A(n35), .B(n33), .Z(N12) );
  XNR2M2LM U43 ( .A(adder5[4]), .B(\add_58/carry [4]), .Z(n33) );
  AN3M6LM U44 ( .A(n40), .B(adder5[2]), .C(n34), .Z(n35) );
  INVM2LM U45 ( .A(adder5[0]), .Z(n40) );
  NR3M4LM U46 ( .A(adder5[1]), .B(adder5[4]), .C(adder5[3]), .Z(n34) );
  NR2M2LM U47 ( .A(adder5[0]), .B(n35), .Z(N8) );
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
  MUX2M1LM \clk_10M_reg/U4  ( .A(clk_10M), .B(n39), .S(n35), .Z(n41) );
  DFQRM2LM clk_10M_reg ( .D(n41), .CK(clk), .RB(rstn), .Q(clk_10M) );
endmodule

