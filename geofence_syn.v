
module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [20:0] A;
  input [20:0] B;
  output [20:0] DIFF;
  input CI;
  output CO;
  wire   \carry[20] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54;

  NOR2BX1 U1 ( .AN(B[0]), .B(A[0]), .Y(n54) );
  NAND2X1 U2 ( .A(n54), .B(n18), .Y(n1) );
  OAI2BB2X2 U3 ( .B0(n19), .B1(n9), .A0N(n4), .A1N(n5), .Y(\carry[20] ) );
  OAI2BB2XL U4 ( .B0(n54), .B1(n18), .A0N(n8), .A1N(n1), .Y(n52) );
  CLKINVX1 U5 ( .A(B[19]), .Y(n4) );
  OR2X1 U6 ( .A(n46), .B(n16), .Y(n2) );
  OR2X4 U7 ( .A(B[5]), .B(n47), .Y(n3) );
  NAND2X2 U8 ( .A(n2), .B(n3), .Y(n44) );
  CLKINVX1 U9 ( .A(A[5]), .Y(n16) );
  CLKAND2X3 U10 ( .A(n46), .B(n16), .Y(n47) );
  NOR2X1 U11 ( .A(A[6]), .B(n44), .Y(n45) );
  NAND2X6 U12 ( .A(n19), .B(n9), .Y(n5) );
  AOI2BB2X2 U13 ( .B0(n44), .B1(A[6]), .A0N(B[6]), .A1N(n45), .Y(n42) );
  XNOR3X4 U14 ( .A(A[20]), .B(B[20]), .C(\carry[20] ), .Y(DIFF[20]) );
  CLKINVX1 U15 ( .A(B[1]), .Y(n8) );
  OR2X2 U16 ( .A(n42), .B(n15), .Y(n6) );
  OR2X8 U17 ( .A(B[7]), .B(n43), .Y(n7) );
  NAND2X8 U18 ( .A(n6), .B(n7), .Y(n40) );
  CLKAND2X6 U19 ( .A(n42), .B(n15), .Y(n43) );
  AOI2BB2X4 U20 ( .B0(n40), .B1(A[8]), .A0N(B[8]), .A1N(n41), .Y(n38) );
  NOR2X4 U21 ( .A(A[8]), .B(n40), .Y(n41) );
  INVX3 U22 ( .A(A[19]), .Y(n9) );
  CLKINVX1 U23 ( .A(A[13]), .Y(n12) );
  CLKINVX1 U24 ( .A(A[17]), .Y(n10) );
  CLKINVX1 U25 ( .A(A[7]), .Y(n15) );
  CLKINVX1 U26 ( .A(A[11]), .Y(n13) );
  CLKINVX1 U27 ( .A(A[15]), .Y(n11) );
  CLKINVX1 U28 ( .A(A[9]), .Y(n14) );
  AOI2BB2X1 U29 ( .B0(n52), .B1(A[2]), .A0N(B[2]), .A1N(n53), .Y(n50) );
  AOI2BB2X1 U30 ( .B0(n48), .B1(A[4]), .A0N(B[4]), .A1N(n49), .Y(n46) );
  OAI22X2 U31 ( .A0(n50), .A1(n17), .B0(B[3]), .B1(n51), .Y(n48) );
  CLKAND2X8 U32 ( .A(n50), .B(n17), .Y(n51) );
  CLKINVX1 U33 ( .A(A[1]), .Y(n18) );
  INVX1 U34 ( .A(A[3]), .Y(n17) );
  NOR2X1 U35 ( .A(A[2]), .B(n52), .Y(n53) );
  CLKAND2X12 U36 ( .A(n22), .B(n10), .Y(n23) );
  CLKAND2X12 U37 ( .A(n26), .B(n11), .Y(n27) );
  OAI22X4 U38 ( .A0(n34), .A1(n13), .B0(B[11]), .B1(n35), .Y(n32) );
  CLKAND2X12 U39 ( .A(n34), .B(n13), .Y(n35) );
  CLKAND2X12 U40 ( .A(n30), .B(n12), .Y(n31) );
  AOI2BB2X4 U41 ( .B0(n20), .B1(A[18]), .A0N(B[18]), .A1N(n21), .Y(n19) );
  NOR2X4 U42 ( .A(A[18]), .B(n20), .Y(n21) );
  AOI2BB2X4 U43 ( .B0(n24), .B1(A[16]), .A0N(B[16]), .A1N(n25), .Y(n22) );
  NOR2X4 U44 ( .A(A[16]), .B(n24), .Y(n25) );
  AOI2BB2X4 U45 ( .B0(n32), .B1(A[12]), .A0N(B[12]), .A1N(n33), .Y(n30) );
  NOR2X4 U46 ( .A(A[12]), .B(n32), .Y(n33) );
  AOI2BB2X4 U47 ( .B0(n28), .B1(A[14]), .A0N(B[14]), .A1N(n29), .Y(n26) );
  NOR2X6 U48 ( .A(A[14]), .B(n28), .Y(n29) );
  OAI22X4 U49 ( .A0(n22), .A1(n10), .B0(B[17]), .B1(n23), .Y(n20) );
  OAI22X4 U50 ( .A0(n30), .A1(n12), .B0(B[13]), .B1(n31), .Y(n28) );
  OAI22X4 U51 ( .A0(n26), .A1(n11), .B0(B[15]), .B1(n27), .Y(n24) );
  AOI2BB2X4 U52 ( .B0(n36), .B1(A[10]), .A0N(B[10]), .A1N(n37), .Y(n34) );
  NOR2X4 U53 ( .A(A[10]), .B(n36), .Y(n37) );
  OAI22X4 U54 ( .A0(n38), .A1(n14), .B0(B[9]), .B1(n39), .Y(n36) );
  CLKAND2X8 U55 ( .A(n38), .B(n14), .Y(n39) );
  NOR2X1 U56 ( .A(A[4]), .B(n48), .Y(n49) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n11), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n10), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFX2 U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX2 U2_6 ( .A(A[6]), .B(n8), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2 U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n9), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFHX2 U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  CLKINVX1 U1 ( .A(B[1]), .Y(n3) );
  NAND2X1 U2 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U4 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U5 ( .A(B[7]), .Y(n9) );
  INVXL U6 ( .A(A[0]), .Y(n1) );
  INVX3 U7 ( .A(B[3]), .Y(n5) );
  XNOR2X1 U8 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U10 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U11 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n10) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n11) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  ADDFX2 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX4 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX4 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  NAND2X1 U1 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX3 U2 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  XNOR2X1 U4 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U5 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_mult_uns_0 ( a, b, product );
  input [20:0] a;
  input [20:0] b;
  output [41:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450;

  ADDFXL U20 ( .A(n103), .B(n104), .CI(n20), .CO(n19), .S(product[4]) );
  ADDFXL U21 ( .A(n105), .B(n110), .CI(n21), .CO(n20), .S(product[3]) );
  ADDFXL U22 ( .A(n176), .B(n166), .CI(n22), .CO(n21), .S(product[2]) );
  ADDFXL U25 ( .A(n28), .B(n123), .CI(n113), .CO(n24), .S(n25) );
  ADDFXL U26 ( .A(n361), .B(n114), .CI(n30), .CO(n26), .S(n27) );
  CMPR42X1 U28 ( .A(n134), .B(n124), .C(n36), .D(n115), .ICI(n33), .S(n32), 
        .ICO(n30), .CO(n31) );
  CMPR42X1 U29 ( .A(n125), .B(n116), .C(n363), .D(n41), .ICI(n38), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n135), .B(n126), .C(n42), .D(n46), .ICI(n43), .S(n40), 
        .ICO(n38), .CO(n39) );
  ADDFXL U32 ( .A(n48), .B(n144), .CI(n117), .CO(n41), .S(n42) );
  CMPR42X1 U33 ( .A(n366), .B(n53), .C(n54), .D(n47), .ICI(n50), .S(n45), 
        .ICO(n43), .CO(n44) );
  ADDFXL U34 ( .A(n127), .B(n118), .CI(n136), .CO(n46), .S(n47) );
  CMPR42X1 U36 ( .A(n137), .B(n128), .C(n55), .D(n60), .ICI(n56), .S(n52), 
        .ICO(n50), .CO(n51) );
  CMPR42X1 U37 ( .A(n155), .B(n119), .C(n62), .D(n145), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U38 ( .A(n364), .B(n67), .C(n68), .D(n61), .ICI(n64), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U39 ( .A(n129), .B(n156), .C(n146), .D(n120), .ICI(n70), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n138), .B(n71), .C(n76), .D(n69), .ICI(n72), .S(n66), 
        .ICO(n64), .CO(n65) );
  CMPR42X1 U42 ( .A(n157), .B(n106), .C(n147), .D(n130), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U47 ( .A(n169), .B(n84), .C(n85), .D(n88), .ICI(n82), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDFXL U48 ( .A(n140), .B(n149), .CI(n159), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n160), .B(n141), .C(n93), .D(n90), .ICI(n89), .S(n87), 
        .ICO(n85), .CO(n86) );
  ADDHXL U53 ( .A(n142), .B(n108), .CO(n93), .S(n94) );
  CMPR42X1 U54 ( .A(n143), .B(n172), .C(n162), .D(n152), .ICI(n100), .S(n97), 
        .ICO(n95), .CO(n96) );
  ADDHXL U58 ( .A(n175), .B(n165), .CO(n104), .S(n105) );
  CLKXOR2X2 U262 ( .A(b[1]), .B(n369), .Y(n393) );
  XOR2X1 U263 ( .A(b[8]), .B(n368), .Y(n411) );
  CLKXOR2X2 U264 ( .A(b[2]), .B(n369), .Y(n394) );
  OAI22X2 U265 ( .A0(n403), .A1(n350), .B0(n353), .B1(n404), .Y(n165) );
  OAI32XL U266 ( .A0(n368), .A1(n358), .A2(n353), .B0(n368), .B1(n350), .Y(
        n110) );
  NAND2X4 U267 ( .A(n353), .B(n447), .Y(n350) );
  CMPR42X2 U268 ( .A(n122), .B(n139), .C(n168), .D(n158), .ICI(n131), .S(n77), 
        .ICO(n75), .CO(n76) );
  OAI2BB2X1 U269 ( .B0(n401), .B1(n378), .A0N(n379), .A1N(a[0]), .Y(n168) );
  OAI22X1 U270 ( .A0(n398), .A1(n378), .B0(n399), .B1(n370), .Y(n171) );
  XOR2X2 U271 ( .A(b[7]), .B(n369), .Y(n399) );
  OAI22X1 U272 ( .A0(n430), .A1(n349), .B0(n357), .B1(n431), .Y(n132) );
  NAND2X6 U273 ( .A(n357), .B(n450), .Y(n349) );
  ADDFHX2 U274 ( .A(n163), .B(n173), .CI(n101), .CO(n98), .S(n99) );
  OAI22X1 U275 ( .A0(n396), .A1(n378), .B0(n397), .B1(n370), .Y(n173) );
  ADDFHX1 U276 ( .A(n174), .B(n154), .CI(n164), .CO(n102), .S(n103) );
  OAI22X4 U277 ( .A0(n395), .A1(n378), .B0(n396), .B1(n370), .Y(n174) );
  NAND2XL U278 ( .A(n373), .B(n374), .Y(n372) );
  NAND2XL U279 ( .A(n377), .B(n374), .Y(n375) );
  INVX8 U280 ( .A(n374), .Y(n360) );
  CLKXOR2X2 U281 ( .A(n359), .B(a[9]), .Y(n374) );
  XOR2X4 U282 ( .A(b[9]), .B(n369), .Y(n401) );
  ADDFHX1 U283 ( .A(n150), .B(n133), .CI(n170), .CO(n88), .S(n89) );
  OAI22X1 U284 ( .A0(n399), .A1(n378), .B0(n400), .B1(n370), .Y(n170) );
  OAI22X1 U285 ( .A0(n397), .A1(n378), .B0(n398), .B1(n370), .Y(n172) );
  XOR2X4 U286 ( .A(b[6]), .B(n369), .Y(n398) );
  OAI22X4 U287 ( .A0(n394), .A1(n378), .B0(n395), .B1(n370), .Y(n175) );
  XOR2X4 U288 ( .A(b[3]), .B(n369), .Y(n395) );
  ADDHX1 U289 ( .A(n153), .B(n109), .CO(n100), .S(n101) );
  ADDHX1 U290 ( .A(n132), .B(n107), .CO(n83), .S(n84) );
  CMPR42X1 U291 ( .A(n171), .B(n151), .C(n161), .D(n95), .ICI(n94), .S(n92), 
        .ICO(n90), .CO(n91) );
  NAND2X2 U292 ( .A(a[1]), .B(n370), .Y(n378) );
  NOR2X1 U293 ( .A(n371), .B(n370), .Y(product[0]) );
  ADDFXL U294 ( .A(n99), .B(n102), .CI(n19), .CO(n18), .S(product[5]) );
  ADDFX2 U295 ( .A(n92), .B(n96), .CI(n17), .CO(n16), .S(product[7]) );
  INVX3 U296 ( .A(a[0]), .Y(n370) );
  ADDFXL U297 ( .A(n74), .B(n79), .CI(n14), .CO(n13), .S(product[10]) );
  INVX3 U298 ( .A(n352), .Y(n387) );
  ADDFXL U299 ( .A(n66), .B(n73), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFXL U300 ( .A(n58), .B(n65), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U301 ( .A(n52), .B(n57), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFXL U302 ( .A(n45), .B(n51), .CI(n10), .CO(n9), .S(product[14]) );
  ADDFX2 U303 ( .A(n40), .B(n44), .CI(n9), .CO(n8), .S(product[15]) );
  CLKBUFX3 U304 ( .A(a[10]), .Y(n359) );
  XNOR2X2 U305 ( .A(n372), .B(n351), .Y(product[20]) );
  AND2X2 U306 ( .A(n354), .B(n448), .Y(n352) );
  XOR2X1 U307 ( .A(b[8]), .B(n369), .Y(n400) );
  ADDHXL U308 ( .A(n111), .B(n177), .CO(n22), .S(product[1]) );
  OAI22XL U309 ( .A0(n358), .A1(n378), .B0(n393), .B1(n370), .Y(n177) );
  CLKBUFX3 U310 ( .A(n381), .Y(n355) );
  INVX3 U311 ( .A(a[5]), .Y(n367) );
  XNOR2X2 U312 ( .A(n4), .B(n24), .Y(n351) );
  CLKINVX2 U313 ( .A(a[9]), .Y(n362) );
  ADDFX1 U314 ( .A(n35), .B(n39), .CI(n8), .CO(n7), .S(product[16]) );
  OAI32X1 U315 ( .A0(n367), .A1(n358), .A2(n354), .B0(n367), .B1(n387), .Y(
        n109) );
  XOR2XL U316 ( .A(n367), .B(n358), .Y(n414) );
  OAI32XL U317 ( .A0(n362), .A1(n358), .A2(n357), .B0(n362), .B1(n349), .Y(
        n107) );
  XOR2XL U318 ( .A(n362), .B(n358), .Y(n430) );
  NAND2XL U319 ( .A(n356), .B(n449), .Y(n381) );
  ADDFX2 U320 ( .A(n34), .B(n32), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFX1 U321 ( .A(n80), .B(n86), .CI(n15), .CO(n14), .S(product[9]) );
  INVX1 U322 ( .A(n62), .Y(n364) );
  INVXL U323 ( .A(n48), .Y(n366) );
  OAI32XL U324 ( .A0(n365), .A1(n358), .A2(n356), .B0(n365), .B1(n355), .Y(
        n108) );
  XOR2XL U325 ( .A(n365), .B(n358), .Y(n423) );
  ADDFX1 U326 ( .A(n27), .B(n31), .CI(n6), .CO(n5), .S(product[18]) );
  ADDFX1 U327 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[19]) );
  CMPR42X2 U328 ( .A(n148), .B(n83), .C(n77), .D(n81), .ICI(n78), .S(n74), 
        .ICO(n72), .CO(n73) );
  NOR2XL U329 ( .A(n360), .B(n440), .Y(n119) );
  AO21XL U330 ( .A0(n350), .A1(n353), .B0(n413), .Y(n155) );
  XOR2XL U331 ( .A(b[10]), .B(n368), .Y(n413) );
  OAI2BB1XL U332 ( .A0N(n370), .A1N(n378), .B0(n379), .Y(n376) );
  INVX1 U333 ( .A(n36), .Y(n363) );
  XOR2XL U334 ( .A(b[10]), .B(n365), .Y(n388) );
  NOR2XL U335 ( .A(n360), .B(n444), .Y(n115) );
  AO21XL U336 ( .A0(n355), .A1(n356), .B0(n388), .Y(n134) );
  BUFX12 U337 ( .A(b[0]), .Y(n358) );
  XOR2XL U338 ( .A(b[3]), .B(n362), .Y(n433) );
  XOR2XL U339 ( .A(b[4]), .B(n365), .Y(n427) );
  XOR2XL U340 ( .A(b[3]), .B(n365), .Y(n426) );
  XOR2XL U341 ( .A(b[3]), .B(n368), .Y(n406) );
  XOR2XL U342 ( .A(b[3]), .B(n367), .Y(n417) );
  XOR2XL U343 ( .A(b[4]), .B(n362), .Y(n434) );
  XOR2XL U344 ( .A(b[4]), .B(n367), .Y(n418) );
  XOR2XL U345 ( .A(b[4]), .B(n368), .Y(n407) );
  XOR2XL U346 ( .A(b[9]), .B(n368), .Y(n412) );
  XOR2XL U347 ( .A(b[5]), .B(n367), .Y(n419) );
  XOR2XL U348 ( .A(b[7]), .B(n368), .Y(n410) );
  XOR2XL U349 ( .A(b[5]), .B(n368), .Y(n408) );
  XOR2XL U350 ( .A(b[6]), .B(n368), .Y(n409) );
  XOR2XL U351 ( .A(b[6]), .B(n365), .Y(n383) );
  XOR2XL U352 ( .A(b[5]), .B(n365), .Y(n380) );
  XOR2XL U353 ( .A(b[6]), .B(n362), .Y(n436) );
  XOR2XL U354 ( .A(b[5]), .B(n362), .Y(n435) );
  XOR2XL U355 ( .A(b[7]), .B(n367), .Y(n421) );
  XOR2XL U356 ( .A(b[8]), .B(n367), .Y(n422) );
  XOR2XL U357 ( .A(b[6]), .B(n367), .Y(n420) );
  XNOR2XL U358 ( .A(b[3]), .B(n359), .Y(n440) );
  XOR2XL U359 ( .A(b[9]), .B(n367), .Y(n386) );
  XOR2XL U360 ( .A(b[7]), .B(n365), .Y(n428) );
  XOR2XL U361 ( .A(b[8]), .B(n365), .Y(n429) );
  XOR2XL U362 ( .A(b[7]), .B(n362), .Y(n437) );
  XNOR2XL U363 ( .A(b[4]), .B(n359), .Y(n441) );
  XOR2XL U364 ( .A(b[9]), .B(n365), .Y(n389) );
  XOR2XL U365 ( .A(b[9]), .B(n362), .Y(n392) );
  XOR2XL U366 ( .A(b[8]), .B(n362), .Y(n438) );
  XNOR2XL U367 ( .A(b[6]), .B(n359), .Y(n443) );
  INVX1 U368 ( .A(n28), .Y(n361) );
  XNOR2XL U369 ( .A(b[8]), .B(n359), .Y(n445) );
  XNOR2XL U370 ( .A(b[7]), .B(n359), .Y(n444) );
  ADDFXL U371 ( .A(n87), .B(n91), .CI(n16), .CO(n15), .S(product[8]) );
  ADDFXL U372 ( .A(n98), .B(n97), .CI(n18), .CO(n17), .S(product[6]) );
  CLKINVX1 U373 ( .A(n358), .Y(n371) );
  XOR2X1 U374 ( .A(b[4]), .B(n369), .Y(n396) );
  INVX3 U375 ( .A(a[3]), .Y(n368) );
  INVX3 U376 ( .A(a[1]), .Y(n369) );
  CLKBUFX3 U377 ( .A(n384), .Y(n354) );
  XNOR2X1 U378 ( .A(a[4]), .B(a[3]), .Y(n384) );
  CLKBUFX3 U379 ( .A(n390), .Y(n357) );
  XNOR2X1 U380 ( .A(a[8]), .B(a[7]), .Y(n390) );
  CLKBUFX3 U381 ( .A(n402), .Y(n353) );
  XNOR2X1 U382 ( .A(a[2]), .B(a[1]), .Y(n402) );
  INVX3 U383 ( .A(a[7]), .Y(n365) );
  CLKBUFX3 U384 ( .A(n382), .Y(n356) );
  XNOR2X1 U385 ( .A(a[6]), .B(a[5]), .Y(n382) );
  XOR2X1 U386 ( .A(b[10]), .B(n359), .Y(n373) );
  XOR2X1 U387 ( .A(n375), .B(n376), .Y(n71) );
  NAND2BX1 U388 ( .AN(n376), .B(n375), .Y(n70) );
  XOR2X1 U389 ( .A(b[1]), .B(n359), .Y(n377) );
  OAI22XL U390 ( .A0(n380), .A1(n355), .B0(n356), .B1(n383), .Y(n62) );
  OAI22XL U391 ( .A0(n354), .A1(n385), .B0(n386), .B1(n387), .Y(n48) );
  OAI22XL U392 ( .A0(n356), .A1(n388), .B0(n389), .B1(n355), .Y(n36) );
  OAI22XL U393 ( .A0(n357), .A1(n391), .B0(n392), .B1(n349), .Y(n28) );
  OAI22XL U394 ( .A0(n393), .A1(n378), .B0(n394), .B1(n370), .Y(n176) );
  XOR2X1 U395 ( .A(b[5]), .B(n369), .Y(n397) );
  OAI22XL U396 ( .A0(n400), .A1(n378), .B0(n401), .B1(n370), .Y(n169) );
  XOR2X1 U397 ( .A(b[10]), .B(a[1]), .Y(n379) );
  NOR2X1 U398 ( .A(n371), .B(n353), .Y(n166) );
  XOR2X1 U399 ( .A(n368), .B(n358), .Y(n403) );
  OAI22XL U400 ( .A0(n404), .A1(n350), .B0(n353), .B1(n405), .Y(n164) );
  XOR2X1 U401 ( .A(b[1]), .B(n368), .Y(n404) );
  OAI22XL U402 ( .A0(n405), .A1(n350), .B0(n353), .B1(n406), .Y(n163) );
  XOR2X1 U403 ( .A(b[2]), .B(n368), .Y(n405) );
  OAI22XL U404 ( .A0(n406), .A1(n350), .B0(n353), .B1(n407), .Y(n162) );
  OAI22XL U405 ( .A0(n407), .A1(n350), .B0(n353), .B1(n408), .Y(n161) );
  OAI22XL U406 ( .A0(n408), .A1(n350), .B0(n353), .B1(n409), .Y(n160) );
  OAI22XL U407 ( .A0(n409), .A1(n350), .B0(n353), .B1(n410), .Y(n159) );
  OAI22XL U408 ( .A0(n410), .A1(n350), .B0(n353), .B1(n411), .Y(n158) );
  OAI22XL U409 ( .A0(n411), .A1(n350), .B0(n353), .B1(n412), .Y(n157) );
  OAI22XL U410 ( .A0(n412), .A1(n350), .B0(n353), .B1(n413), .Y(n156) );
  NOR2X1 U411 ( .A(n354), .B(n371), .Y(n154) );
  OAI22XL U412 ( .A0(n414), .A1(n387), .B0(n354), .B1(n415), .Y(n153) );
  OAI22XL U413 ( .A0(n415), .A1(n387), .B0(n354), .B1(n416), .Y(n152) );
  XOR2X1 U414 ( .A(b[1]), .B(n367), .Y(n415) );
  OAI22XL U415 ( .A0(n416), .A1(n387), .B0(n354), .B1(n417), .Y(n151) );
  XOR2X1 U416 ( .A(b[2]), .B(n367), .Y(n416) );
  OAI22XL U417 ( .A0(n417), .A1(n387), .B0(n354), .B1(n418), .Y(n150) );
  OAI22XL U418 ( .A0(n418), .A1(n387), .B0(n354), .B1(n419), .Y(n149) );
  OAI22XL U419 ( .A0(n419), .A1(n387), .B0(n354), .B1(n420), .Y(n148) );
  OAI22XL U420 ( .A0(n420), .A1(n387), .B0(n354), .B1(n421), .Y(n147) );
  OAI22XL U421 ( .A0(n421), .A1(n387), .B0(n354), .B1(n422), .Y(n146) );
  OAI22XL U422 ( .A0(n422), .A1(n387), .B0(n354), .B1(n386), .Y(n145) );
  AO21X1 U423 ( .A0(n387), .A1(n354), .B0(n385), .Y(n144) );
  XOR2X1 U424 ( .A(b[10]), .B(n367), .Y(n385) );
  NOR2X1 U425 ( .A(n356), .B(n371), .Y(n143) );
  OAI22XL U426 ( .A0(n423), .A1(n355), .B0(n356), .B1(n424), .Y(n142) );
  OAI22XL U427 ( .A0(n424), .A1(n355), .B0(n356), .B1(n425), .Y(n141) );
  XOR2X1 U428 ( .A(b[1]), .B(n365), .Y(n424) );
  OAI22XL U429 ( .A0(n425), .A1(n355), .B0(n356), .B1(n426), .Y(n140) );
  XOR2X1 U430 ( .A(b[2]), .B(n365), .Y(n425) );
  OAI22XL U431 ( .A0(n426), .A1(n355), .B0(n356), .B1(n427), .Y(n139) );
  OAI22XL U432 ( .A0(n427), .A1(n355), .B0(n356), .B1(n380), .Y(n138) );
  OAI22XL U433 ( .A0(n383), .A1(n355), .B0(n356), .B1(n428), .Y(n137) );
  OAI22XL U434 ( .A0(n428), .A1(n355), .B0(n356), .B1(n429), .Y(n136) );
  OAI22XL U435 ( .A0(n429), .A1(n355), .B0(n356), .B1(n389), .Y(n135) );
  NOR2X1 U436 ( .A(n357), .B(n371), .Y(n133) );
  OAI22XL U437 ( .A0(n431), .A1(n349), .B0(n357), .B1(n432), .Y(n131) );
  XOR2X1 U438 ( .A(b[1]), .B(n362), .Y(n431) );
  OAI22XL U439 ( .A0(n432), .A1(n349), .B0(n357), .B1(n433), .Y(n130) );
  XOR2X1 U440 ( .A(b[2]), .B(n362), .Y(n432) );
  OAI22XL U441 ( .A0(n433), .A1(n349), .B0(n357), .B1(n434), .Y(n129) );
  OAI22XL U442 ( .A0(n434), .A1(n349), .B0(n357), .B1(n435), .Y(n128) );
  OAI22XL U443 ( .A0(n435), .A1(n349), .B0(n357), .B1(n436), .Y(n127) );
  OAI22XL U444 ( .A0(n436), .A1(n349), .B0(n357), .B1(n437), .Y(n126) );
  OAI22XL U445 ( .A0(n437), .A1(n349), .B0(n357), .B1(n438), .Y(n125) );
  OAI22XL U446 ( .A0(n438), .A1(n349), .B0(n357), .B1(n392), .Y(n124) );
  AO21X1 U447 ( .A0(n349), .A1(n357), .B0(n391), .Y(n123) );
  XOR2X1 U448 ( .A(b[10]), .B(n362), .Y(n391) );
  NOR2X1 U449 ( .A(n360), .B(n371), .Y(n122) );
  NOR2X1 U450 ( .A(n360), .B(n439), .Y(n120) );
  XNOR2X1 U451 ( .A(b[2]), .B(n359), .Y(n439) );
  NOR2X1 U452 ( .A(n360), .B(n441), .Y(n118) );
  NOR2X1 U453 ( .A(n360), .B(n442), .Y(n117) );
  XNOR2X1 U454 ( .A(b[5]), .B(n359), .Y(n442) );
  NOR2X1 U455 ( .A(n360), .B(n443), .Y(n116) );
  NOR2X1 U456 ( .A(n360), .B(n445), .Y(n114) );
  NOR2X1 U457 ( .A(n360), .B(n446), .Y(n113) );
  XNOR2X1 U458 ( .A(b[9]), .B(n359), .Y(n446) );
  OAI21XL U459 ( .A0(n358), .A1(n369), .B0(n378), .Y(n111) );
  XOR2X1 U460 ( .A(a[3]), .B(a[2]), .Y(n447) );
  XOR2X1 U461 ( .A(a[5]), .B(a[4]), .Y(n448) );
  XOR2X1 U462 ( .A(a[7]), .B(a[6]), .Y(n449) );
  XOR2X1 U463 ( .A(a[9]), .B(a[8]), .Y(n450) );
  NOR3BXL U464 ( .AN(n359), .B(n358), .C(n360), .Y(n106) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  wire   [11:0] carry;

  ADDFX2 U2_9 ( .A(A[9]), .B(n12), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n9), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n8), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFHX2 U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX2 U2_8 ( .A(A[8]), .B(n11), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFHX4 U2_1 ( .A(A[1]), .B(n4), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_7 ( .A(A[7]), .B(n10), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  BUFX3 U1 ( .A(B[0]), .Y(n1) );
  CLKINVX1 U2 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[8]), .Y(n11) );
  CLKINVX1 U4 ( .A(n1), .Y(n3) );
  NAND2X2 U5 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[7]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[9]), .Y(n12) );
  INVX3 U10 ( .A(B[1]), .Y(n4) );
  XNOR2X1 U11 ( .A(n3), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U12 ( .A(A[0]), .Y(n2) );
  INVX1 U13 ( .A(B[5]), .Y(n8) );
  CLKINVX1 U14 ( .A(B[6]), .Y(n9) );
  CLKINVX1 U15 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:0] carry;

  CMPR32X2 U2_6 ( .A(A[6]), .B(n5), .C(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  CMPR32X2 U2_4 ( .A(A[4]), .B(n7), .C(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX4 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFHX4 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFHX4 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFHX4 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  INVX1 U1 ( .A(B[3]), .Y(n8) );
  INVX3 U2 ( .A(B[1]), .Y(n10) );
  NAND2X2 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U5 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U6 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U11 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW_mult_uns_1 ( a, b, product );
  input [20:0] a;
  input [20:0] b;
  output [41:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n26, n27, n28, n30, n31, n32, n33, n34,
         n35, n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n113, n114, n115, n116, n117,
         n118, n119, n120, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[19]) );
  ADDFXL U25 ( .A(n28), .B(n123), .CI(n113), .CO(n24), .S(n25) );
  ADDFXL U26 ( .A(n366), .B(n114), .CI(n30), .CO(n26), .S(n27) );
  CMPR42X1 U28 ( .A(n134), .B(n124), .C(n36), .D(n115), .ICI(n33), .S(n32), 
        .ICO(n30), .CO(n31) );
  CMPR42X1 U29 ( .A(n125), .B(n116), .C(n368), .D(n41), .ICI(n38), .S(n35), 
        .ICO(n33), .CO(n34) );
  CMPR42X1 U31 ( .A(n135), .B(n126), .C(n42), .D(n46), .ICI(n43), .S(n40), 
        .ICO(n38), .CO(n39) );
  ADDFXL U32 ( .A(n48), .B(n144), .CI(n117), .CO(n41), .S(n42) );
  CMPR42X1 U33 ( .A(n371), .B(n53), .C(n54), .D(n47), .ICI(n50), .S(n45), 
        .ICO(n43), .CO(n44) );
  ADDFXL U34 ( .A(n127), .B(n118), .CI(n136), .CO(n46), .S(n47) );
  CMPR42X1 U36 ( .A(n137), .B(n128), .C(n55), .D(n60), .ICI(n56), .S(n52), 
        .ICO(n50), .CO(n51) );
  CMPR42X1 U37 ( .A(n155), .B(n119), .C(n62), .D(n145), .ICI(n59), .S(n55), 
        .ICO(n53), .CO(n54) );
  CMPR42X1 U38 ( .A(n369), .B(n67), .C(n68), .D(n61), .ICI(n64), .S(n58), 
        .ICO(n56), .CO(n57) );
  CMPR42X1 U39 ( .A(n129), .B(n156), .C(n146), .D(n120), .ICI(n70), .S(n61), 
        .ICO(n59), .CO(n60) );
  CMPR42X1 U41 ( .A(n138), .B(n71), .C(n76), .D(n69), .ICI(n72), .S(n66), 
        .ICO(n64), .CO(n65) );
  CMPR42X1 U42 ( .A(n157), .B(n349), .C(n147), .D(n130), .ICI(n75), .S(n69), 
        .ICO(n67), .CO(n68) );
  CMPR42X1 U45 ( .A(n148), .B(n83), .C(n77), .D(n81), .ICI(n78), .S(n74), 
        .ICO(n72), .CO(n73) );
  CMPR42X1 U47 ( .A(n169), .B(n84), .C(n85), .D(n88), .ICI(n82), .S(n80), 
        .ICO(n78), .CO(n79) );
  ADDFXL U48 ( .A(n140), .B(n149), .CI(n159), .CO(n81), .S(n82) );
  CMPR42X1 U50 ( .A(n160), .B(n141), .C(n93), .D(n90), .ICI(n89), .S(n87), 
        .ICO(n85), .CO(n86) );
  ADDFXL U51 ( .A(n150), .B(n133), .CI(n170), .CO(n88), .S(n89) );
  ADDHXL U53 ( .A(n142), .B(n108), .CO(n93), .S(n94) );
  ADDHXL U56 ( .A(n153), .B(n109), .CO(n100), .S(n101) );
  ADDHXL U58 ( .A(n175), .B(n165), .CO(n104), .S(n105) );
  OAI22XL U262 ( .A0(n428), .A1(n351), .B0(n361), .B1(n429), .Y(n142) );
  OAI32X1 U263 ( .A0(n370), .A1(n363), .A2(n361), .B0(n370), .B1(n351), .Y(
        n108) );
  NAND2X4 U264 ( .A(n361), .B(n454), .Y(n351) );
  OAI22X1 U265 ( .A0(n402), .A1(n384), .B0(n403), .B1(n375), .Y(n172) );
  CLKXOR2X2 U266 ( .A(n364), .B(a[9]), .Y(n380) );
  ADDHX1 U267 ( .A(n132), .B(n107), .CO(n83), .S(n84) );
  BUFX3 U268 ( .A(n106), .Y(n349) );
  XOR2X1 U269 ( .A(b[8]), .B(n373), .Y(n416) );
  CMPR42X2 U270 ( .A(n122), .B(n139), .C(n168), .D(n158), .ICI(n131), .S(n77), 
        .ICO(n75), .CO(n76) );
  OAI2BB2X1 U271 ( .B0(n406), .B1(n384), .A0N(n385), .A1N(a[0]), .Y(n168) );
  CMPR42X2 U272 ( .A(n171), .B(n151), .C(n161), .D(n95), .ICI(n94), .S(n92), 
        .ICO(n90), .CO(n91) );
  OAI22X1 U273 ( .A0(n403), .A1(n384), .B0(n404), .B1(n375), .Y(n171) );
  ADDFX1 U274 ( .A(n174), .B(n154), .CI(n164), .CO(n102), .S(n103) );
  OAI22X1 U275 ( .A0(n400), .A1(n384), .B0(n401), .B1(n375), .Y(n174) );
  XOR2X4 U276 ( .A(b[5]), .B(n374), .Y(n402) );
  XOR2X4 U277 ( .A(b[9]), .B(n374), .Y(n406) );
  CLKBUFX3 U278 ( .A(b[0]), .Y(n363) );
  ADDHXL U279 ( .A(n111), .B(n177), .CO(n22), .S(product[1]) );
  OAI22XL U280 ( .A0(n363), .A1(n384), .B0(n398), .B1(n375), .Y(n177) );
  CLKINVX1 U281 ( .A(b[2]), .Y(n356) );
  XOR2X1 U282 ( .A(b[3]), .B(n374), .Y(n400) );
  ADDFXL U283 ( .A(n103), .B(n104), .CI(n20), .CO(n19), .S(product[4]) );
  NAND2X2 U284 ( .A(a[1]), .B(n375), .Y(n384) );
  ADDFX2 U285 ( .A(n80), .B(n86), .CI(n15), .CO(n14), .S(product[9]) );
  ADDFHX2 U286 ( .A(n92), .B(n96), .CI(n17), .CO(n16), .S(product[7]) );
  ADDFX2 U287 ( .A(n66), .B(n73), .CI(n13), .CO(n12), .S(product[11]) );
  ADDFX2 U288 ( .A(n74), .B(n79), .CI(n14), .CO(n13), .S(product[10]) );
  ADDFXL U289 ( .A(n52), .B(n57), .CI(n11), .CO(n10), .S(product[13]) );
  ADDFX2 U290 ( .A(n58), .B(n65), .CI(n12), .CO(n11), .S(product[12]) );
  ADDFXL U291 ( .A(n40), .B(n44), .CI(n9), .CO(n8), .S(product[15]) );
  ADDFX2 U292 ( .A(n45), .B(n51), .CI(n10), .CO(n9), .S(product[14]) );
  CLKBUFX3 U293 ( .A(n387), .Y(n361) );
  ADDFXL U294 ( .A(n35), .B(n39), .CI(n8), .CO(n7), .S(product[16]) );
  ADDFXL U295 ( .A(n34), .B(n32), .CI(n7), .CO(n6), .S(product[17]) );
  ADDFXL U296 ( .A(n27), .B(n31), .CI(n6), .CO(n5), .S(product[18]) );
  CLKBUFX3 U297 ( .A(a[10]), .Y(n364) );
  NAND2X2 U298 ( .A(n359), .B(n452), .Y(n350) );
  NAND2X2 U299 ( .A(n362), .B(n455), .Y(n352) );
  NAND2X2 U300 ( .A(n360), .B(n453), .Y(n392) );
  NOR2XL U301 ( .A(n361), .B(n376), .Y(n143) );
  XOR3X1 U302 ( .A(n16), .B(n91), .C(n87), .Y(product[8]) );
  NAND3X1 U303 ( .A(n353), .B(n354), .C(n355), .Y(n15) );
  ADDFXL U304 ( .A(n163), .B(n173), .CI(n101), .CO(n98), .S(n99) );
  OAI22XL U305 ( .A0(n401), .A1(n384), .B0(n402), .B1(n375), .Y(n173) );
  NAND2X1 U306 ( .A(n87), .B(n16), .Y(n353) );
  NAND2X1 U307 ( .A(n91), .B(n16), .Y(n354) );
  NAND2X1 U308 ( .A(n91), .B(n87), .Y(n355) );
  XOR2X1 U309 ( .A(b[7]), .B(n374), .Y(n404) );
  CLKINVX1 U310 ( .A(n363), .Y(n376) );
  INVX3 U311 ( .A(a[0]), .Y(n375) );
  OAI22XL U312 ( .A0(n398), .A1(n384), .B0(n399), .B1(n375), .Y(n176) );
  NAND2X1 U313 ( .A(b[2]), .B(a[1]), .Y(n357) );
  NAND2XL U314 ( .A(n356), .B(n374), .Y(n358) );
  NAND2X1 U315 ( .A(n357), .B(n358), .Y(n399) );
  NOR2X1 U316 ( .A(n365), .B(n376), .Y(n122) );
  ADDFX2 U317 ( .A(n176), .B(n166), .CI(n22), .CO(n21), .S(product[2]) );
  XOR2X1 U318 ( .A(b[8]), .B(n374), .Y(n405) );
  XOR2X1 U319 ( .A(b[6]), .B(n374), .Y(n403) );
  INVX3 U320 ( .A(a[1]), .Y(n374) );
  INVX1 U321 ( .A(n62), .Y(n369) );
  INVXL U322 ( .A(n48), .Y(n371) );
  OAI32XL U323 ( .A0(n367), .A1(n363), .A2(n362), .B0(n367), .B1(n352), .Y(
        n107) );
  XOR2XL U324 ( .A(n367), .B(n363), .Y(n435) );
  OAI32XL U325 ( .A0(n372), .A1(n363), .A2(n360), .B0(n372), .B1(n392), .Y(
        n109) );
  XOR2XL U326 ( .A(n372), .B(n363), .Y(n419) );
  NOR2XL U327 ( .A(n365), .B(n444), .Y(n120) );
  NAND2BXL U328 ( .AN(n382), .B(n381), .Y(n70) );
  XOR2XL U329 ( .A(b[10]), .B(n373), .Y(n418) );
  XOR2XL U330 ( .A(b[10]), .B(n372), .Y(n390) );
  OAI2BB1XL U331 ( .A0N(n375), .A1N(n384), .B0(n385), .Y(n382) );
  NOR2XL U332 ( .A(n365), .B(n449), .Y(n115) );
  AO21XL U333 ( .A0(n351), .A1(n361), .B0(n393), .Y(n134) );
  INVX1 U334 ( .A(n36), .Y(n368) );
  XOR2XL U335 ( .A(b[10]), .B(n370), .Y(n393) );
  CLKINVX3 U336 ( .A(a[9]), .Y(n367) );
  XOR2XL U337 ( .A(b[2]), .B(n367), .Y(n437) );
  XOR2XL U338 ( .A(b[2]), .B(n370), .Y(n430) );
  XOR2XL U339 ( .A(b[4]), .B(n370), .Y(n432) );
  XOR2XL U340 ( .A(b[2]), .B(n372), .Y(n421) );
  XOR2XL U341 ( .A(b[9]), .B(n373), .Y(n417) );
  XOR2XL U342 ( .A(b[4]), .B(n367), .Y(n439) );
  XOR2XL U343 ( .A(b[4]), .B(n372), .Y(n423) );
  XOR2XL U344 ( .A(b[6]), .B(n373), .Y(n414) );
  XOR2XL U345 ( .A(b[4]), .B(n373), .Y(n412) );
  XOR2XL U346 ( .A(b[9]), .B(n372), .Y(n391) );
  XOR2XL U347 ( .A(b[6]), .B(n370), .Y(n388) );
  XOR2XL U348 ( .A(b[8]), .B(n372), .Y(n427) );
  XOR2XL U349 ( .A(b[6]), .B(n372), .Y(n425) );
  XOR2XL U350 ( .A(b[6]), .B(n367), .Y(n441) );
  XNOR2XL U351 ( .A(b[2]), .B(n364), .Y(n444) );
  XOR2XL U352 ( .A(b[8]), .B(n370), .Y(n434) );
  XNOR2XL U353 ( .A(b[4]), .B(n364), .Y(n446) );
  XOR2XL U354 ( .A(b[9]), .B(n370), .Y(n394) );
  XOR2XL U355 ( .A(b[9]), .B(n367), .Y(n397) );
  XOR2XL U356 ( .A(b[8]), .B(n367), .Y(n443) );
  XNOR2XL U357 ( .A(b[6]), .B(n364), .Y(n448) );
  INVX1 U358 ( .A(n28), .Y(n366) );
  XNOR2XL U359 ( .A(b[8]), .B(n364), .Y(n450) );
  XOR2X1 U360 ( .A(n377), .B(n378), .Y(product[20]) );
  ADDFX2 U361 ( .A(n99), .B(n102), .CI(n19), .CO(n18), .S(product[5]) );
  ADDFX2 U362 ( .A(n98), .B(n97), .CI(n18), .CO(n17), .S(product[6]) );
  XOR2X1 U363 ( .A(n4), .B(n24), .Y(n378) );
  XOR2X1 U364 ( .A(b[1]), .B(n374), .Y(n398) );
  INVX3 U365 ( .A(n380), .Y(n365) );
  CMPR42X1 U366 ( .A(n143), .B(n172), .C(n162), .D(n152), .ICI(n100), .S(n97), 
        .ICO(n95), .CO(n96) );
  INVX3 U367 ( .A(a[3]), .Y(n373) );
  INVX3 U368 ( .A(a[5]), .Y(n372) );
  INVX3 U369 ( .A(a[7]), .Y(n370) );
  CLKBUFX3 U370 ( .A(n389), .Y(n360) );
  XNOR2X1 U371 ( .A(a[4]), .B(a[3]), .Y(n389) );
  XNOR2X1 U372 ( .A(a[6]), .B(a[5]), .Y(n387) );
  CLKBUFX3 U373 ( .A(n395), .Y(n362) );
  XNOR2X1 U374 ( .A(a[8]), .B(a[7]), .Y(n395) );
  CLKBUFX3 U375 ( .A(n407), .Y(n359) );
  XNOR2X1 U376 ( .A(a[2]), .B(a[1]), .Y(n407) );
  OAI22X1 U377 ( .A0(n404), .A1(n384), .B0(n405), .B1(n375), .Y(n170) );
  ADDFX2 U378 ( .A(n105), .B(n110), .CI(n21), .CO(n20), .S(product[3]) );
  XOR2X1 U379 ( .A(b[4]), .B(n374), .Y(n401) );
  NAND2X1 U380 ( .A(n379), .B(n380), .Y(n377) );
  XOR2X1 U381 ( .A(b[10]), .B(n364), .Y(n379) );
  NOR2X1 U382 ( .A(n376), .B(n375), .Y(product[0]) );
  XOR2X1 U383 ( .A(n381), .B(n382), .Y(n71) );
  NAND2X1 U384 ( .A(n383), .B(n380), .Y(n381) );
  XOR2X1 U385 ( .A(b[1]), .B(n364), .Y(n383) );
  OAI22XL U386 ( .A0(n386), .A1(n351), .B0(n361), .B1(n388), .Y(n62) );
  OAI22XL U387 ( .A0(n360), .A1(n390), .B0(n391), .B1(n392), .Y(n48) );
  OAI22XL U388 ( .A0(n361), .A1(n393), .B0(n394), .B1(n351), .Y(n36) );
  OAI22XL U389 ( .A0(n362), .A1(n396), .B0(n397), .B1(n352), .Y(n28) );
  OAI22XL U390 ( .A0(n399), .A1(n384), .B0(n400), .B1(n375), .Y(n175) );
  OAI22XL U391 ( .A0(n405), .A1(n384), .B0(n406), .B1(n375), .Y(n169) );
  XOR2X1 U392 ( .A(b[10]), .B(a[1]), .Y(n385) );
  NOR2X1 U393 ( .A(n376), .B(n359), .Y(n166) );
  OAI22XL U394 ( .A0(n408), .A1(n350), .B0(n359), .B1(n409), .Y(n165) );
  XOR2X1 U395 ( .A(n373), .B(n363), .Y(n408) );
  OAI22XL U396 ( .A0(n409), .A1(n350), .B0(n359), .B1(n410), .Y(n164) );
  XOR2X1 U397 ( .A(b[1]), .B(n373), .Y(n409) );
  OAI22XL U398 ( .A0(n410), .A1(n350), .B0(n359), .B1(n411), .Y(n163) );
  XOR2X1 U399 ( .A(b[2]), .B(n373), .Y(n410) );
  OAI22XL U400 ( .A0(n411), .A1(n350), .B0(n359), .B1(n412), .Y(n162) );
  XOR2X1 U401 ( .A(b[3]), .B(n373), .Y(n411) );
  OAI22XL U402 ( .A0(n412), .A1(n350), .B0(n359), .B1(n413), .Y(n161) );
  OAI22XL U403 ( .A0(n413), .A1(n350), .B0(n359), .B1(n414), .Y(n160) );
  XOR2X1 U404 ( .A(b[5]), .B(n373), .Y(n413) );
  OAI22XL U405 ( .A0(n414), .A1(n350), .B0(n359), .B1(n415), .Y(n159) );
  OAI22XL U406 ( .A0(n415), .A1(n350), .B0(n359), .B1(n416), .Y(n158) );
  XOR2X1 U407 ( .A(b[7]), .B(n373), .Y(n415) );
  OAI22XL U408 ( .A0(n416), .A1(n350), .B0(n359), .B1(n417), .Y(n157) );
  OAI22XL U409 ( .A0(n417), .A1(n350), .B0(n359), .B1(n418), .Y(n156) );
  AO21X1 U410 ( .A0(n350), .A1(n359), .B0(n418), .Y(n155) );
  NOR2X1 U411 ( .A(n360), .B(n376), .Y(n154) );
  OAI22XL U412 ( .A0(n419), .A1(n392), .B0(n360), .B1(n420), .Y(n153) );
  OAI22XL U413 ( .A0(n420), .A1(n392), .B0(n360), .B1(n421), .Y(n152) );
  XOR2X1 U414 ( .A(b[1]), .B(n372), .Y(n420) );
  OAI22XL U415 ( .A0(n421), .A1(n392), .B0(n360), .B1(n422), .Y(n151) );
  OAI22XL U416 ( .A0(n422), .A1(n392), .B0(n360), .B1(n423), .Y(n150) );
  XOR2X1 U417 ( .A(b[3]), .B(n372), .Y(n422) );
  OAI22XL U418 ( .A0(n423), .A1(n392), .B0(n360), .B1(n424), .Y(n149) );
  OAI22XL U419 ( .A0(n424), .A1(n392), .B0(n360), .B1(n425), .Y(n148) );
  XOR2X1 U420 ( .A(b[5]), .B(n372), .Y(n424) );
  OAI22XL U421 ( .A0(n425), .A1(n392), .B0(n360), .B1(n426), .Y(n147) );
  OAI22XL U422 ( .A0(n426), .A1(n392), .B0(n360), .B1(n427), .Y(n146) );
  XOR2X1 U423 ( .A(b[7]), .B(n372), .Y(n426) );
  OAI22XL U424 ( .A0(n427), .A1(n392), .B0(n360), .B1(n391), .Y(n145) );
  AO21X1 U425 ( .A0(n392), .A1(n360), .B0(n390), .Y(n144) );
  XOR2X1 U426 ( .A(n370), .B(n363), .Y(n428) );
  OAI22XL U427 ( .A0(n429), .A1(n351), .B0(n361), .B1(n430), .Y(n141) );
  XOR2X1 U428 ( .A(b[1]), .B(n370), .Y(n429) );
  OAI22XL U429 ( .A0(n430), .A1(n351), .B0(n361), .B1(n431), .Y(n140) );
  OAI22XL U430 ( .A0(n431), .A1(n351), .B0(n361), .B1(n432), .Y(n139) );
  XOR2X1 U431 ( .A(b[3]), .B(n370), .Y(n431) );
  OAI22XL U432 ( .A0(n432), .A1(n351), .B0(n361), .B1(n386), .Y(n138) );
  XOR2X1 U433 ( .A(b[5]), .B(n370), .Y(n386) );
  OAI22XL U434 ( .A0(n388), .A1(n351), .B0(n361), .B1(n433), .Y(n137) );
  OAI22XL U435 ( .A0(n433), .A1(n351), .B0(n361), .B1(n434), .Y(n136) );
  XOR2X1 U436 ( .A(b[7]), .B(n370), .Y(n433) );
  OAI22XL U437 ( .A0(n434), .A1(n351), .B0(n361), .B1(n394), .Y(n135) );
  NOR2X1 U438 ( .A(n362), .B(n376), .Y(n133) );
  OAI22XL U439 ( .A0(n435), .A1(n352), .B0(n362), .B1(n436), .Y(n132) );
  OAI22XL U440 ( .A0(n436), .A1(n352), .B0(n362), .B1(n437), .Y(n131) );
  XOR2X1 U441 ( .A(b[1]), .B(n367), .Y(n436) );
  OAI22XL U442 ( .A0(n437), .A1(n352), .B0(n362), .B1(n438), .Y(n130) );
  OAI22XL U443 ( .A0(n438), .A1(n352), .B0(n362), .B1(n439), .Y(n129) );
  XOR2X1 U444 ( .A(b[3]), .B(n367), .Y(n438) );
  OAI22XL U445 ( .A0(n439), .A1(n352), .B0(n362), .B1(n440), .Y(n128) );
  OAI22XL U446 ( .A0(n440), .A1(n352), .B0(n362), .B1(n441), .Y(n127) );
  XOR2X1 U447 ( .A(b[5]), .B(n367), .Y(n440) );
  OAI22XL U448 ( .A0(n441), .A1(n352), .B0(n362), .B1(n442), .Y(n126) );
  OAI22XL U449 ( .A0(n442), .A1(n352), .B0(n362), .B1(n443), .Y(n125) );
  XOR2X1 U450 ( .A(b[7]), .B(n367), .Y(n442) );
  OAI22XL U451 ( .A0(n443), .A1(n352), .B0(n362), .B1(n397), .Y(n124) );
  AO21X1 U452 ( .A0(n352), .A1(n362), .B0(n396), .Y(n123) );
  XOR2X1 U453 ( .A(b[10]), .B(n367), .Y(n396) );
  NOR2X1 U454 ( .A(n365), .B(n445), .Y(n119) );
  XNOR2X1 U455 ( .A(b[3]), .B(n364), .Y(n445) );
  NOR2X1 U456 ( .A(n365), .B(n446), .Y(n118) );
  NOR2X1 U457 ( .A(n365), .B(n447), .Y(n117) );
  XNOR2X1 U458 ( .A(b[5]), .B(n364), .Y(n447) );
  NOR2X1 U459 ( .A(n365), .B(n448), .Y(n116) );
  XNOR2X1 U460 ( .A(b[7]), .B(n364), .Y(n449) );
  NOR2X1 U461 ( .A(n365), .B(n450), .Y(n114) );
  NOR2X1 U462 ( .A(n365), .B(n451), .Y(n113) );
  XNOR2X1 U463 ( .A(b[9]), .B(n364), .Y(n451) );
  OAI21XL U464 ( .A0(n363), .A1(n374), .B0(n384), .Y(n111) );
  OAI32X1 U465 ( .A0(n373), .A1(n363), .A2(n359), .B0(n373), .B1(n350), .Y(
        n110) );
  XOR2X1 U466 ( .A(a[3]), .B(a[2]), .Y(n452) );
  XOR2X1 U467 ( .A(a[5]), .B(a[4]), .Y(n453) );
  XOR2X1 U468 ( .A(a[7]), .B(a[6]), .Y(n454) );
  XOR2X1 U469 ( .A(a[9]), .B(a[8]), .Y(n455) );
  NOR3BXL U470 ( .AN(n364), .B(n363), .C(n365), .Y(n106) );
endmodule


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   n970, \cross_result[20] , \xi[0][9] , \xi[0][8] , \xi[0][7] ,
         \xi[0][6] , \xi[0][5] , \xi[0][4] , \xi[0][3] , \xi[0][2] ,
         \xi[0][1] , \xi[0][0] , \xi[1][9] , \xi[1][8] , \xi[1][7] ,
         \xi[1][6] , \xi[1][5] , \xi[1][4] , \xi[1][3] , \xi[1][2] ,
         \xi[1][1] , \xi[1][0] , \xi[2][9] , \xi[2][8] , \xi[2][7] ,
         \xi[2][6] , \xi[2][5] , \xi[2][4] , \xi[2][3] , \xi[2][2] ,
         \xi[2][1] , \xi[2][0] , \xi[3][9] , \xi[3][8] , \xi[3][7] ,
         \xi[3][6] , \xi[3][5] , \xi[3][4] , \xi[3][3] , \xi[3][2] ,
         \xi[3][1] , \xi[3][0] , \xi[4][9] , \xi[4][8] , \xi[4][7] ,
         \xi[4][6] , \xi[4][5] , \xi[4][4] , \xi[4][3] , \xi[4][2] ,
         \xi[4][1] , \xi[4][0] , \xi[5][9] , \xi[5][8] , \xi[5][7] ,
         \xi[5][6] , \xi[5][5] , \xi[5][4] , \xi[5][3] , \xi[5][2] ,
         \xi[5][1] , \xi[5][0] , \xi[6][9] , \xi[6][8] , \xi[6][7] ,
         \xi[6][6] , \xi[6][5] , \xi[6][4] , \xi[6][3] , \xi[6][2] ,
         \xi[6][1] , \xi[6][0] , \yi[0][9] , \yi[0][8] , \yi[0][7] ,
         \yi[0][6] , \yi[0][5] , \yi[0][4] , \yi[0][3] , \yi[0][2] ,
         \yi[0][1] , \yi[0][0] , \yi[1][9] , \yi[1][8] , \yi[1][7] ,
         \yi[1][6] , \yi[1][5] , \yi[1][4] , \yi[1][3] , \yi[1][2] ,
         \yi[1][1] , \yi[1][0] , \yi[2][9] , \yi[2][8] , \yi[2][7] ,
         \yi[2][6] , \yi[2][5] , \yi[2][4] , \yi[2][3] , \yi[2][2] ,
         \yi[2][1] , \yi[2][0] , \yi[3][9] , \yi[3][8] , \yi[3][7] ,
         \yi[3][6] , \yi[3][5] , \yi[3][4] , \yi[3][3] , \yi[3][2] ,
         \yi[3][1] , \yi[3][0] , \yi[4][9] , \yi[4][8] , \yi[4][7] ,
         \yi[4][6] , \yi[4][5] , \yi[4][4] , \yi[4][3] , \yi[4][2] ,
         \yi[4][1] , \yi[4][0] , \yi[5][9] , \yi[5][8] , \yi[5][7] ,
         \yi[5][6] , \yi[5][5] , \yi[5][4] , \yi[5][3] , \yi[5][2] ,
         \yi[5][1] , \yi[5][0] , \yi[6][9] , \yi[6][8] , \yi[6][7] ,
         \yi[6][6] , \yi[6][5] , \yi[6][4] , \yi[6][3] , \yi[6][2] ,
         \yi[6][1] , \yi[6][0] , N731, n30, n32, n101, n102, n105, n106, n107,
         n108, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n152, n153, n154, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n169, n170, n171, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n197, n198, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n211, n212, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, N933, N932,
         N931, N930, N929, N928, N927, N926, N925, N924, N923, N922, N921,
         N920, N919, N918, N917, N916, N915, N914, N913, N912, N911, N910,
         N909, N908, N907, N906, N905, N904, N903, N902, N901, N900, N899,
         N898, N897, N896, N895, N894, N893, N892, N891, N890, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963;
  wire   [3:0] counter;
  wire   [1:0] cs;
  wire   [1:0] ns;
  wire   [1:0] sorting_counter;
  wire   [9:0] x0;
  wire   [9:0] x1;
  wire   [9:0] x2;
  wire   [9:0] xb;
  wire   [9:0] y0;
  wire   [9:0] y2;
  wire   [9:0] yb;
  wire   [20:0] temp1;
  wire   [20:0] temp2;
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
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61;

  AO22X4 U407 ( .A0(n727), .A1(\xi[5][1] ), .B0(n866), .B1(\xi[4][1] ), .Y(
        n368) );
  AO22X4 U419 ( .A0(n727), .A1(\xi[5][0] ), .B0(n867), .B1(\xi[4][0] ), .Y(
        n375) );
  geofence_DW01_sub_0 sub_195 ( .A(temp1), .B(temp2), .CI(1'b0), .DIFF({
        \cross_result[20] , SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19}) );
  geofence_DW01_sub_2 sub_194 ( .A({1'b0, n765, n757, n753, n761, n751, n752, 
        n747, n739, n738, n735}), .B({1'b0, y0}), .CI(1'b0), .DIFF({N922, N921, 
        N920, N919, N918, N917, N916, N915, N914, N913, N912}) );
  geofence_DW01_sub_1 sub_194_2 ( .A({1'b0, x2}), .B({1'b0, xb}), .CI(1'b0), 
        .DIFF({N933, N932, N931, N930, N929, N928, N927, N926, N925, N924, 
        N923}) );
  geofence_DW_mult_uns_0 mult_194 ( .a({N922, N922, N922, N922, N922, N922, 
        N922, N922, N922, N922, N922, N921, N920, N919, N918, N917, N916, N915, 
        N914, N913, N912}), .b({n820, n820, n820, n820, n820, n820, n820, n820, 
        n820, n820, n820, N932, N931, N930, N929, N928, N927, N926, N925, N924, 
        N923}), .product({SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, temp2}) );
  geofence_DW01_sub_4 sub_193 ( .A({1'b0, n762, n758, n754, n750, n741, n740, 
        n737, x1[2], n733, x1[0]}), .B({1'b0, x0}), .CI(1'b0), .DIFF({N900, 
        N899, N898, N897, N896, N895, N894, N893, N892, N891, N890}) );
  geofence_DW01_sub_3 sub_193_2 ( .A({1'b0, y2}), .B({1'b0, yb}), .CI(1'b0), 
        .DIFF({N911, N910, N909, N908, N907, N906, N905, N904, N903, N902, 
        N901}) );
  geofence_DW_mult_uns_1 mult_193 ( .a({N900, N900, N900, N900, N900, N900, 
        N900, N900, N900, N900, N900, N899, N898, N897, N896, N895, N894, N893, 
        N892, N891, N890}), .b({n819, n819, n819, n819, n819, n819, n819, n819, 
        n819, n819, n819, N910, N909, N908, N907, N906, N905, N904, N903, N902, 
        N901}), .product({SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, temp1}) );
  DFFSX1 in_reg_reg ( .D(N731), .CK(clk), .SN(n875), .QN(n776) );
  DFFRX1 \sorting_counter_reg[0]  ( .D(n545), .CK(clk), .RN(n875), .Q(
        sorting_counter[0]), .QN(n108) );
  DFFRX1 \sorting_counter_reg[1]  ( .D(n544), .CK(clk), .RN(n875), .Q(
        sorting_counter[1]), .QN(n107) );
  DFFRX1 \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n875), .Q(cs[1]), .QN(n30) );
  DFFRX1 \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n875), .Q(cs[0]), .QN(n32) );
  DFFRX2 \counter_reg[2]  ( .D(n542), .CK(clk), .RN(n875), .Q(counter[2]), 
        .QN(n102) );
  DFFXL \yi_reg[6][9]  ( .D(n459), .CK(clk), .Q(\yi[6][9] ), .QN(n924) );
  DFFXL \yi_reg[6][8]  ( .D(n460), .CK(clk), .Q(\yi[6][8] ), .QN(n925) );
  DFFXL \yi_reg[6][7]  ( .D(n461), .CK(clk), .Q(\yi[6][7] ), .QN(n926) );
  DFFXL \yi_reg[6][6]  ( .D(n462), .CK(clk), .Q(\yi[6][6] ), .QN(n927) );
  DFFXL \yi_reg[6][5]  ( .D(n463), .CK(clk), .Q(\yi[6][5] ), .QN(n928) );
  DFFXL \yi_reg[6][3]  ( .D(n465), .CK(clk), .Q(\yi[6][3] ), .QN(n930) );
  DFFXL \xi_reg[6][9]  ( .D(n529), .CK(clk), .Q(\xi[6][9] ), .QN(n934) );
  DFFXL \xi_reg[6][8]  ( .D(n530), .CK(clk), .Q(\xi[6][8] ), .QN(n935) );
  DFFXL \xi_reg[6][7]  ( .D(n531), .CK(clk), .Q(\xi[6][7] ), .QN(n936) );
  DFFXL \xi_reg[6][6]  ( .D(n532), .CK(clk), .Q(\xi[6][6] ), .QN(n937) );
  DFFXL \xi_reg[6][5]  ( .D(n533), .CK(clk), .Q(\xi[6][5] ), .QN(n938) );
  DFFXL \xi_reg[6][4]  ( .D(n534), .CK(clk), .Q(\xi[6][4] ), .QN(n939) );
  DFFXL \xi_reg[6][3]  ( .D(n535), .CK(clk), .Q(\xi[6][3] ), .QN(n940) );
  DFFXL \xi_reg[6][1]  ( .D(n537), .CK(clk), .Q(\xi[6][1] ), .QN(n942) );
  DFFXL \yi_reg[5][9]  ( .D(n449), .CK(clk), .Q(\yi[5][9] ) );
  DFFXL \yi_reg[5][8]  ( .D(n450), .CK(clk), .Q(\yi[5][8] ) );
  DFFXL \yi_reg[5][7]  ( .D(n451), .CK(clk), .Q(\yi[5][7] ) );
  DFFXL \yi_reg[5][6]  ( .D(n452), .CK(clk), .Q(\yi[5][6] ) );
  DFFXL \yi_reg[5][5]  ( .D(n453), .CK(clk), .Q(\yi[5][5] ) );
  DFFXL \yi_reg[5][3]  ( .D(n455), .CK(clk), .Q(\yi[5][3] ) );
  DFFXL \yi_reg[2][9]  ( .D(n419), .CK(clk), .Q(\yi[2][9] ) );
  DFFXL \yi_reg[2][8]  ( .D(n420), .CK(clk), .Q(\yi[2][8] ) );
  DFFXL \yi_reg[2][7]  ( .D(n421), .CK(clk), .Q(\yi[2][7] ) );
  DFFXL \yi_reg[2][6]  ( .D(n422), .CK(clk), .Q(\yi[2][6] ) );
  DFFXL \yi_reg[2][5]  ( .D(n423), .CK(clk), .Q(\yi[2][5] ) );
  DFFXL \xi_reg[5][9]  ( .D(n519), .CK(clk), .Q(\xi[5][9] ) );
  DFFXL \xi_reg[5][8]  ( .D(n520), .CK(clk), .Q(\xi[5][8] ) );
  DFFXL \xi_reg[5][7]  ( .D(n521), .CK(clk), .Q(\xi[5][7] ) );
  DFFXL \xi_reg[5][6]  ( .D(n522), .CK(clk), .Q(\xi[5][6] ) );
  DFFXL \xi_reg[5][5]  ( .D(n523), .CK(clk), .Q(\xi[5][5] ) );
  DFFXL \xi_reg[5][4]  ( .D(n524), .CK(clk), .Q(\xi[5][4] ) );
  DFFXL \xi_reg[5][3]  ( .D(n525), .CK(clk), .Q(\xi[5][3] ) );
  DFFXL \xi_reg[2][9]  ( .D(n489), .CK(clk), .Q(\xi[2][9] ) );
  DFFXL \xi_reg[2][8]  ( .D(n490), .CK(clk), .Q(\xi[2][8] ) );
  DFFXL \xi_reg[2][7]  ( .D(n491), .CK(clk), .Q(\xi[2][7] ) );
  DFFXL \xi_reg[2][6]  ( .D(n492), .CK(clk), .Q(\xi[2][6] ) );
  DFFXL \xi_reg[2][5]  ( .D(n493), .CK(clk), .Q(\xi[2][5] ) );
  DFFXL \xi_reg[2][4]  ( .D(n494), .CK(clk), .Q(\xi[2][4] ) );
  DFFXL \yi_reg[4][6]  ( .D(n442), .CK(clk), .Q(\yi[4][6] ) );
  DFFXL \xi_reg[4][3]  ( .D(n515), .CK(clk), .Q(\xi[4][3] ) );
  DFFXL \xi_reg[4][7]  ( .D(n511), .CK(clk), .Q(\xi[4][7] ) );
  DFFXL \yi_reg[3][9]  ( .D(n429), .CK(clk), .Q(\yi[3][9] ) );
  DFFXL \yi_reg[3][8]  ( .D(n430), .CK(clk), .Q(\yi[3][8] ) );
  DFFXL \yi_reg[3][7]  ( .D(n431), .CK(clk), .Q(\yi[3][7] ) );
  DFFXL \yi_reg[3][6]  ( .D(n432), .CK(clk), .Q(\yi[3][6] ) );
  DFFXL \yi_reg[3][5]  ( .D(n433), .CK(clk), .Q(\yi[3][5] ) );
  DFFXL \yi_reg[4][9]  ( .D(n439), .CK(clk), .Q(\yi[4][9] ) );
  DFFXL \yi_reg[4][5]  ( .D(n443), .CK(clk), .Q(\yi[4][5] ) );
  DFFXL \yi_reg[4][8]  ( .D(n440), .CK(clk), .Q(\yi[4][8] ) );
  DFFXL \yi_reg[4][7]  ( .D(n441), .CK(clk), .Q(\yi[4][7] ) );
  DFFXL \xi_reg[4][6]  ( .D(n512), .CK(clk), .Q(\xi[4][6] ) );
  DFFXL \xi_reg[4][5]  ( .D(n513), .CK(clk), .Q(\xi[4][5] ) );
  DFFXL \xi_reg[4][4]  ( .D(n514), .CK(clk), .Q(\xi[4][4] ) );
  DFFXL \xi_reg[4][9]  ( .D(n509), .CK(clk), .Q(\xi[4][9] ) );
  DFFXL \xi_reg[4][8]  ( .D(n510), .CK(clk), .Q(\xi[4][8] ) );
  DFFXL \xi_reg[3][9]  ( .D(n499), .CK(clk), .Q(\xi[3][9] ) );
  DFFXL \xi_reg[3][8]  ( .D(n500), .CK(clk), .Q(\xi[3][8] ) );
  DFFXL \xi_reg[3][7]  ( .D(n501), .CK(clk), .Q(\xi[3][7] ) );
  DFFXL \xi_reg[3][6]  ( .D(n502), .CK(clk), .Q(\xi[3][6] ) );
  DFFXL \xi_reg[3][5]  ( .D(n503), .CK(clk), .Q(\xi[3][5] ) );
  DFFXL \xi_reg[3][4]  ( .D(n504), .CK(clk), .Q(\xi[3][4] ) );
  DFFXL \yi_reg[6][4]  ( .D(n464), .CK(clk), .Q(\yi[6][4] ), .QN(n929) );
  DFFXL \yi_reg[6][2]  ( .D(n466), .CK(clk), .Q(\yi[6][2] ), .QN(n931) );
  DFFXL \yi_reg[6][1]  ( .D(n467), .CK(clk), .Q(\yi[6][1] ), .QN(n932) );
  DFFXL \yi_reg[6][0]  ( .D(n468), .CK(clk), .Q(\yi[6][0] ), .QN(n933) );
  DFFXL \xi_reg[6][2]  ( .D(n536), .CK(clk), .Q(\xi[6][2] ), .QN(n941) );
  DFFXL \xi_reg[6][0]  ( .D(n538), .CK(clk), .Q(\xi[6][0] ), .QN(n943) );
  DFFXL \yi_reg[5][4]  ( .D(n454), .CK(clk), .Q(\yi[5][4] ) );
  DFFXL \yi_reg[5][2]  ( .D(n456), .CK(clk), .Q(\yi[5][2] ) );
  DFFXL \yi_reg[5][1]  ( .D(n457), .CK(clk), .Q(\yi[5][1] ) );
  DFFXL \yi_reg[5][0]  ( .D(n458), .CK(clk), .Q(\yi[5][0] ) );
  DFFXL \yi_reg[2][4]  ( .D(n424), .CK(clk), .Q(\yi[2][4] ) );
  DFFXL \yi_reg[2][3]  ( .D(n425), .CK(clk), .Q(\yi[2][3] ) );
  DFFXL \yi_reg[2][2]  ( .D(n426), .CK(clk), .Q(\yi[2][2] ) );
  DFFXL \yi_reg[2][1]  ( .D(n427), .CK(clk), .Q(\yi[2][1] ) );
  DFFXL \yi_reg[2][0]  ( .D(n428), .CK(clk), .Q(\yi[2][0] ) );
  DFFXL \xi_reg[5][2]  ( .D(n526), .CK(clk), .Q(\xi[5][2] ) );
  DFFXL \xi_reg[5][1]  ( .D(n527), .CK(clk), .Q(\xi[5][1] ) );
  DFFXL \xi_reg[5][0]  ( .D(n528), .CK(clk), .Q(\xi[5][0] ) );
  DFFXL \xi_reg[2][3]  ( .D(n495), .CK(clk), .Q(\xi[2][3] ) );
  DFFXL \xi_reg[2][2]  ( .D(n496), .CK(clk), .Q(\xi[2][2] ) );
  DFFXL \xi_reg[2][1]  ( .D(n497), .CK(clk), .Q(\xi[2][1] ) );
  DFFXL \xi_reg[2][0]  ( .D(n498), .CK(clk), .Q(\xi[2][0] ) );
  DFFXL \yi_reg[4][2]  ( .D(n446), .CK(clk), .Q(\yi[4][2] ) );
  DFFXL \yi_reg[4][1]  ( .D(n447), .CK(clk), .Q(\yi[4][1] ) );
  DFFXL \xi_reg[4][2]  ( .D(n516), .CK(clk), .Q(\xi[4][2] ) );
  DFFXL \yi_reg[3][4]  ( .D(n434), .CK(clk), .Q(\yi[3][4] ) );
  DFFXL \yi_reg[3][3]  ( .D(n435), .CK(clk), .Q(\yi[3][3] ) );
  DFFXL \yi_reg[3][2]  ( .D(n436), .CK(clk), .Q(\yi[3][2] ) );
  DFFXL \yi_reg[3][1]  ( .D(n437), .CK(clk), .Q(\yi[3][1] ) );
  DFFXL \yi_reg[3][0]  ( .D(n438), .CK(clk), .Q(\yi[3][0] ) );
  DFFXL \yi_reg[4][4]  ( .D(n444), .CK(clk), .Q(\yi[4][4] ) );
  DFFXL \yi_reg[4][0]  ( .D(n448), .CK(clk), .Q(\yi[4][0] ) );
  DFFXL \yi_reg[4][3]  ( .D(n445), .CK(clk), .Q(\yi[4][3] ) );
  DFFXL \xi_reg[4][1]  ( .D(n517), .CK(clk), .Q(\xi[4][1] ) );
  DFFXL \xi_reg[4][0]  ( .D(n518), .CK(clk), .Q(\xi[4][0] ) );
  DFFXL \xi_reg[3][3]  ( .D(n505), .CK(clk), .Q(\xi[3][3] ) );
  DFFXL \xi_reg[3][2]  ( .D(n506), .CK(clk), .Q(\xi[3][2] ) );
  DFFXL \xi_reg[3][1]  ( .D(n507), .CK(clk), .Q(\xi[3][1] ) );
  DFFXL \xi_reg[3][0]  ( .D(n508), .CK(clk), .Q(\xi[3][0] ) );
  DFFX1 \yi_reg[1][1]  ( .D(n417), .CK(clk), .Q(\yi[1][1] ), .QN(n952) );
  DFFX1 \yi_reg[1][0]  ( .D(n418), .CK(clk), .Q(\yi[1][0] ), .QN(n953) );
  DFFX1 \xi_reg[1][0]  ( .D(n488), .CK(clk), .Q(\xi[1][0] ), .QN(n962) );
  DFFX1 \xi_reg[1][1]  ( .D(n487), .CK(clk), .Q(\xi[1][1] ), .QN(n961) );
  DFFX1 \yi_reg[1][4]  ( .D(n414), .CK(clk), .Q(\yi[1][4] ), .QN(n949) );
  DFFX1 \yi_reg[1][2]  ( .D(n416), .CK(clk), .Q(\yi[1][2] ), .QN(n951) );
  DFFX1 \xi_reg[1][3]  ( .D(n485), .CK(clk), .Q(\xi[1][3] ), .QN(n959) );
  DFFX1 \xi_reg[0][8]  ( .D(n470), .CK(clk), .Q(\xi[0][8] ) );
  DFFX1 \yi_reg[1][9]  ( .D(n409), .CK(clk), .Q(\yi[1][9] ), .QN(n944) );
  DFFX1 \yi_reg[1][3]  ( .D(n415), .CK(clk), .Q(\yi[1][3] ), .QN(n950) );
  DFFX1 \yi_reg[1][8]  ( .D(n410), .CK(clk), .Q(\yi[1][8] ), .QN(n945) );
  DFFX1 \yi_reg[1][7]  ( .D(n411), .CK(clk), .Q(\yi[1][7] ), .QN(n946) );
  DFFX1 \yi_reg[1][6]  ( .D(n412), .CK(clk), .Q(\yi[1][6] ), .QN(n947) );
  DFFX1 \yi_reg[1][5]  ( .D(n413), .CK(clk), .Q(\yi[1][5] ), .QN(n948) );
  DFFX1 \xi_reg[1][9]  ( .D(n479), .CK(clk), .Q(\xi[1][9] ), .QN(n963) );
  DFFX1 \xi_reg[1][8]  ( .D(n480), .CK(clk), .Q(\xi[1][8] ), .QN(n954) );
  DFFX1 \xi_reg[1][7]  ( .D(n481), .CK(clk), .Q(\xi[1][7] ), .QN(n955) );
  DFFX1 \xi_reg[0][0]  ( .D(n478), .CK(clk), .Q(\xi[0][0] ) );
  DFFX1 \xi_reg[1][6]  ( .D(n482), .CK(clk), .Q(\xi[1][6] ), .QN(n956) );
  DFFX1 \xi_reg[1][5]  ( .D(n483), .CK(clk), .Q(\xi[1][5] ), .QN(n957) );
  DFFX1 \xi_reg[1][4]  ( .D(n484), .CK(clk), .Q(\xi[1][4] ), .QN(n958) );
  DFFX1 \xi_reg[1][2]  ( .D(n486), .CK(clk), .Q(\xi[1][2] ), .QN(n960) );
  DFFX1 \yi_reg[0][9]  ( .D(n469), .CK(clk), .Q(\yi[0][9] ) );
  DFFX1 \xi_reg[0][9]  ( .D(n539), .CK(clk), .Q(\xi[0][9] ) );
  DFFX1 \xi_reg[0][7]  ( .D(n471), .CK(clk), .Q(\xi[0][7] ) );
  DFFX1 \yi_reg[0][8]  ( .D(n400), .CK(clk), .Q(\yi[0][8] ) );
  DFFX1 \yi_reg[0][7]  ( .D(n401), .CK(clk), .Q(\yi[0][7] ) );
  DFFX1 \yi_reg[0][6]  ( .D(n402), .CK(clk), .Q(\yi[0][6] ) );
  DFFX1 \yi_reg[0][5]  ( .D(n403), .CK(clk), .Q(\yi[0][5] ) );
  DFFX1 \yi_reg[0][3]  ( .D(n405), .CK(clk), .Q(\yi[0][3] ) );
  DFFX1 \yi_reg[0][2]  ( .D(n406), .CK(clk), .Q(\yi[0][2] ) );
  DFFX1 \xi_reg[0][6]  ( .D(n472), .CK(clk), .Q(\xi[0][6] ) );
  DFFX1 \xi_reg[0][5]  ( .D(n473), .CK(clk), .Q(\xi[0][5] ) );
  DFFX1 \xi_reg[0][4]  ( .D(n474), .CK(clk), .Q(\xi[0][4] ) );
  DFFX1 \xi_reg[0][3]  ( .D(n475), .CK(clk), .Q(\xi[0][3] ) );
  DFFX1 \xi_reg[0][2]  ( .D(n476), .CK(clk), .Q(\xi[0][2] ) );
  DFFX1 \yi_reg[0][4]  ( .D(n404), .CK(clk), .Q(\yi[0][4] ) );
  DFFX1 \yi_reg[0][1]  ( .D(n407), .CK(clk), .Q(\yi[0][1] ) );
  DFFX1 \yi_reg[0][0]  ( .D(n408), .CK(clk), .Q(\yi[0][0] ) );
  DFFX1 \xi_reg[0][1]  ( .D(n477), .CK(clk), .Q(\xi[0][1] ) );
  DFFRX4 \counter_reg[0]  ( .D(n540), .CK(clk), .RN(n875), .Q(counter[0]), 
        .QN(n106) );
  DFFRX4 \counter_reg[1]  ( .D(n541), .CK(clk), .RN(n875), .Q(counter[1]), 
        .QN(n105) );
  DFFRX2 \counter_reg[3]  ( .D(n543), .CK(clk), .RN(n875), .Q(counter[3]), 
        .QN(n101) );
  NAND2X1 U761 ( .A(n102), .B(n101), .Y(n324) );
  AOI222X1 U762 ( .A0(\xi[1][0] ), .A1(n730), .B0(\xi[6][0] ), .B1(n822), .C0(
        \xi[0][0] ), .C1(n823), .Y(n373) );
  BUFX4 U763 ( .A(n237), .Y(n823) );
  AO22XL U764 ( .A0(n727), .A1(\xi[5][3] ), .B0(n867), .B1(\xi[4][3] ), .Y(
        n360) );
  AO22XL U765 ( .A0(n727), .A1(\yi[5][7] ), .B0(n867), .B1(\yi[4][7] ), .Y(
        n241) );
  INVX3 U766 ( .A(n775), .Y(n867) );
  AOI221X1 U767 ( .A0(\yi[2][0] ), .A1(n825), .B0(\yi[3][0] ), .B1(n232), .C0(
        n269), .Y(n268) );
  AO22X2 U768 ( .A0(n726), .A1(\yi[5][0] ), .B0(n866), .B1(\yi[4][0] ), .Y(
        n269) );
  CLKBUFX3 U769 ( .A(n748), .Y(n726) );
  BUFX6 U770 ( .A(n748), .Y(n727) );
  NOR2X2 U771 ( .A(n371), .B(counter[0]), .Y(n748) );
  AOI221X1 U772 ( .A0(\yi[2][1] ), .A1(n826), .B0(\yi[3][1] ), .B1(n232), .C0(
        n265), .Y(n264) );
  AO22XL U773 ( .A0(n727), .A1(\yi[5][1] ), .B0(n728), .B1(\yi[4][1] ), .Y(
        n265) );
  BUFX8 U774 ( .A(n32), .Y(n869) );
  AOI222X1 U775 ( .A0(n730), .A1(\yi[1][1] ), .B0(\yi[6][1] ), .B1(n822), .C0(
        \yi[0][1] ), .C1(n824), .Y(n263) );
  AOI222X1 U776 ( .A0(n730), .A1(\yi[1][2] ), .B0(\yi[6][2] ), .B1(n822), .C0(
        \yi[0][2] ), .C1(n824), .Y(n259) );
  AOI222X1 U777 ( .A0(n730), .A1(\yi[1][0] ), .B0(\yi[6][0] ), .B1(n822), .C0(
        \yi[0][0] ), .C1(n824), .Y(n267) );
  CLKBUFX8 U778 ( .A(n236), .Y(n822) );
  CLKAND2X12 U779 ( .A(counter[0]), .B(counter[1]), .Y(n393) );
  OR2X6 U780 ( .A(n324), .B(counter[1]), .Y(n298) );
  BUFX4 U781 ( .A(counter[1]), .Y(n817) );
  INVX8 U782 ( .A(n811), .Y(x1[2]) );
  MXI2X4 U783 ( .A(n801), .B(n800), .S0(n817), .Y(n811) );
  AND2X6 U784 ( .A(n263), .B(n264), .Y(n138) );
  AO22X4 U785 ( .A0(n727), .A1(\yi[5][2] ), .B0(n866), .B1(\yi[4][2] ), .Y(
        n261) );
  AO22X4 U786 ( .A0(n727), .A1(\xi[5][2] ), .B0(n866), .B1(\xi[4][2] ), .Y(
        n364) );
  INVX3 U787 ( .A(n775), .Y(n728) );
  INVX4 U788 ( .A(n775), .Y(n866) );
  OR2X4 U789 ( .A(n902), .B(n324), .Y(n775) );
  BUFX20 U790 ( .A(n871), .Y(n729) );
  CLKBUFX2 U791 ( .A(n32), .Y(n871) );
  INVX12 U792 ( .A(n810), .Y(x1[0]) );
  MXI2X4 U793 ( .A(n797), .B(n796), .S0(n817), .Y(n810) );
  OAI31X2 U794 ( .A0(n960), .A1(n872), .A2(n865), .B0(n147), .Y(x2[2]) );
  OAI31X2 U795 ( .A0(n961), .A1(n872), .A2(n865), .B0(n148), .Y(x2[1]) );
  BUFX20 U796 ( .A(n749), .Y(n730) );
  OAI31X2 U797 ( .A0(n962), .A1(n872), .A2(n865), .B0(n149), .Y(x2[0]) );
  CLKBUFX2 U798 ( .A(counter[2]), .Y(n731) );
  CLKBUFX2 U799 ( .A(counter[2]), .Y(n732) );
  BUFX12 U800 ( .A(counter[2]), .Y(n814) );
  CLKBUFX2 U801 ( .A(counter[2]), .Y(n813) );
  BUFX20 U802 ( .A(n814), .Y(n812) );
  CLKBUFX4 U803 ( .A(n815), .Y(n816) );
  CLKINVX20 U804 ( .A(n868), .Y(n815) );
  OAI31X1 U805 ( .A0(n950), .A1(n873), .A2(n865), .B0(n136), .Y(y2[3]) );
  OAI31X1 U806 ( .A0(n952), .A1(n873), .A2(n865), .B0(n138), .Y(y2[1]) );
  OAI31XL U807 ( .A0(n948), .A1(n873), .A2(n865), .B0(n134), .Y(y2[5]) );
  OAI31XL U808 ( .A0(n957), .A1(n872), .A2(n865), .B0(n144), .Y(x2[5]) );
  OAI31XL U809 ( .A0(n946), .A1(n873), .A2(n865), .B0(n132), .Y(y2[7]) );
  CLKBUFX3 U810 ( .A(N911), .Y(n819) );
  OAI22XL U811 ( .A0(n899), .A1(n297), .B0(n298), .B1(n299), .Y(n742) );
  MX3XL U812 ( .A(\xi[2][1] ), .B(\xi[3][1] ), .C(\xi[6][1] ), .S0(n815), .S1(
        n812), .Y(n798) );
  NAND3BX2 U813 ( .AN(reset), .B(n378), .C(\cross_result[20] ), .Y(n299) );
  OAI21X1 U814 ( .A0(\cross_result[20] ), .A1(n870), .B0(n372), .Y(n311) );
  AOI221X1 U815 ( .A0(\xi[2][0] ), .A1(n826), .B0(\xi[3][0] ), .B1(n232), .C0(
        n375), .Y(n374) );
  AND2X4 U816 ( .A(n267), .B(n268), .Y(n139) );
  MX3XL U817 ( .A(\xi[2][2] ), .B(\xi[3][2] ), .C(\xi[6][2] ), .S0(n815), .S1(
        n812), .Y(n800) );
  AO22X1 U818 ( .A0(n727), .A1(\yi[5][3] ), .B0(n728), .B1(\yi[4][3] ), .Y(
        n257) );
  CLKMX2X2 U819 ( .A(n799), .B(n798), .S0(n818), .Y(n733) );
  NOR2X4 U820 ( .A(n821), .B(n872), .Y(n734) );
  CLKMX2X2 U821 ( .A(n779), .B(n778), .S0(n817), .Y(n735) );
  OAI22X4 U822 ( .A0(n896), .A1(n299), .B0(n901), .B1(n311), .Y(n736) );
  CLKMX2X2 U823 ( .A(n803), .B(n802), .S0(n818), .Y(n737) );
  CLKMX2X2 U824 ( .A(n781), .B(n780), .S0(n818), .Y(n738) );
  CLKMX2X2 U825 ( .A(n783), .B(n782), .S0(n817), .Y(n739) );
  CLKMX2X2 U826 ( .A(n805), .B(n804), .S0(n817), .Y(n740) );
  CLKMX2X2 U827 ( .A(n807), .B(n806), .S0(n818), .Y(n741) );
  INVX4 U828 ( .A(n777), .Y(n232) );
  OAI2BB2XL U829 ( .B0(n870), .B1(n954), .A0N(n729), .A1N(\xi[0][8] ), .Y(
        x0[8]) );
  MX4XL U830 ( .A(\xi[0][3] ), .B(\xi[1][3] ), .C(\xi[4][3] ), .D(\xi[5][3] ), 
        .S0(n816), .S1(n732), .Y(n803) );
  MX4XL U831 ( .A(\yi[0][2] ), .B(\yi[1][2] ), .C(\yi[4][2] ), .D(\yi[5][2] ), 
        .S0(n816), .S1(n731), .Y(n783) );
  MX4XL U832 ( .A(\yi[0][4] ), .B(\yi[1][4] ), .C(\yi[4][4] ), .D(\yi[5][4] ), 
        .S0(n816), .S1(n813), .Y(n787) );
  MX4XL U833 ( .A(\xi[0][1] ), .B(\xi[1][1] ), .C(\xi[4][1] ), .D(\xi[5][1] ), 
        .S0(n815), .S1(n812), .Y(n799) );
  MX4XL U834 ( .A(\xi[0][0] ), .B(\xi[1][0] ), .C(\xi[4][0] ), .D(\xi[5][0] ), 
        .S0(n815), .S1(n732), .Y(n797) );
  MX4XL U835 ( .A(\yi[0][0] ), .B(\yi[1][0] ), .C(\yi[4][0] ), .D(\yi[5][0] ), 
        .S0(n815), .S1(n731), .Y(n779) );
  MX4XL U836 ( .A(\yi[0][1] ), .B(\yi[1][1] ), .C(\yi[4][1] ), .D(\yi[5][1] ), 
        .S0(n815), .S1(n813), .Y(n781) );
  BUFX12 U837 ( .A(n970), .Y(valid) );
  NOR3X1 U838 ( .A(n30), .B(n872), .C(n901), .Y(n970) );
  MX3X1 U839 ( .A(\xi[2][0] ), .B(\xi[3][0] ), .C(\xi[6][0] ), .S0(n815), .S1(
        n812), .Y(n796) );
  AND2X2 U840 ( .A(\xi[1][1] ), .B(n730), .Y(n744) );
  AND2XL U841 ( .A(\xi[6][1] ), .B(n822), .Y(n745) );
  AND2X2 U842 ( .A(\xi[0][1] ), .B(n823), .Y(n746) );
  NOR3X1 U843 ( .A(n744), .B(n745), .C(n746), .Y(n366) );
  NAND3X1 U844 ( .A(n105), .B(n101), .C(counter[2]), .Y(n371) );
  CLKBUFX3 U845 ( .A(n237), .Y(n824) );
  CLKBUFX3 U846 ( .A(N933), .Y(n820) );
  NOR2X4 U847 ( .A(n298), .B(counter[0]), .Y(n749) );
  MX2X1 U848 ( .A(n785), .B(n784), .S0(n818), .Y(n747) );
  CLKINVX20 U849 ( .A(n768), .Y(is_inside) );
  MXI3XL U850 ( .A(\xi[2][7] ), .B(\xi[3][7] ), .C(\xi[6][7] ), .S0(n816), 
        .S1(n814), .Y(n756) );
  MXI3XL U851 ( .A(\xi[2][9] ), .B(\xi[3][9] ), .C(\xi[6][9] ), .S0(n816), 
        .S1(n814), .Y(n764) );
  MX4XL U852 ( .A(\yi[0][3] ), .B(\yi[1][3] ), .C(\yi[4][3] ), .D(\yi[5][3] ), 
        .S0(n816), .S1(n813), .Y(n785) );
  MX4XL U853 ( .A(\yi[0][5] ), .B(\yi[1][5] ), .C(\yi[4][5] ), .D(\yi[5][5] ), 
        .S0(n816), .S1(n814), .Y(n789) );
  OAI2BB2XL U854 ( .B0(n870), .B1(n955), .A0N(n869), .A1N(\xi[0][7] ), .Y(
        x0[7]) );
  OAI2BB2XL U855 ( .B0(n869), .B1(n958), .A0N(n729), .A1N(\xi[0][4] ), .Y(
        x0[4]) );
  OAI2BB2XL U856 ( .B0(n869), .B1(n960), .A0N(n729), .A1N(\xi[0][2] ), .Y(
        x0[2]) );
  OAI2BB2XL U857 ( .B0(n869), .B1(n962), .A0N(n869), .A1N(\xi[0][0] ), .Y(
        x0[0]) );
  MX4XL U858 ( .A(\yi[0][8] ), .B(\yi[1][8] ), .C(\yi[4][8] ), .D(\yi[5][8] ), 
        .S0(n816), .S1(n814), .Y(n795) );
  MX4XL U859 ( .A(\yi[0][6] ), .B(\yi[1][6] ), .C(\yi[4][6] ), .D(\yi[5][6] ), 
        .S0(n816), .S1(n814), .Y(n791) );
  MX4XL U860 ( .A(\xi[0][6] ), .B(\xi[1][6] ), .C(\xi[4][6] ), .D(\xi[5][6] ), 
        .S0(n815), .S1(n814), .Y(n809) );
  MX4XL U861 ( .A(\yi[0][7] ), .B(\yi[1][7] ), .C(\yi[4][7] ), .D(\yi[5][7] ), 
        .S0(n816), .S1(n814), .Y(n793) );
  OAI2BB2XL U862 ( .B0(n869), .B1(n963), .A0N(n729), .A1N(\xi[0][9] ), .Y(
        x0[9]) );
  NAND2XL U863 ( .A(n822), .B(n736), .Y(n271) );
  NAND2XL U864 ( .A(n310), .B(n825), .Y(n183) );
  AND2XL U865 ( .A(n335), .B(n866), .Y(n774) );
  CLKINVX1 U866 ( .A(n742), .Y(n859) );
  INVX1 U867 ( .A(n822), .Y(n896) );
  INVX1 U868 ( .A(n231), .Y(n899) );
  OAI31X2 U869 ( .A0(n953), .A1(n873), .A2(n865), .B0(n139), .Y(y2[0]) );
  NAND2XL U870 ( .A(n322), .B(n232), .Y(n197) );
  CLKBUFX3 U871 ( .A(n158), .Y(n832) );
  CLKBUFX3 U872 ( .A(n226), .Y(n838) );
  CLKBUFX3 U873 ( .A(n212), .Y(n847) );
  CLKBUFX3 U874 ( .A(n185), .Y(n857) );
  OA22XL U875 ( .A0(n775), .A1(n299), .B0(n897), .B1(n311), .Y(n839) );
  CLKBUFX3 U876 ( .A(n171), .Y(n864) );
  INVX1 U877 ( .A(n735), .Y(n920) );
  INVX1 U878 ( .A(n738), .Y(n919) );
  INVX1 U879 ( .A(n739), .Y(n918) );
  INVX1 U880 ( .A(n733), .Y(n910) );
  INVX1 U881 ( .A(n737), .Y(n909) );
  AOI22XL U882 ( .A0(n727), .A1(n390), .B0(n388), .B1(n728), .Y(n386) );
  BUFX20 U883 ( .A(n106), .Y(n868) );
  NOR4X1 U884 ( .A(n102), .B(n105), .C(counter[0]), .D(counter[3]), .Y(n150)
         );
  CLKBUFX2 U885 ( .A(counter[1]), .Y(n818) );
  MX4XL U886 ( .A(\xi[0][2] ), .B(\xi[1][2] ), .C(\xi[4][2] ), .D(\xi[5][2] ), 
        .S0(n815), .S1(n812), .Y(n801) );
  MX4XL U887 ( .A(\xi[0][4] ), .B(\xi[1][4] ), .C(\xi[4][4] ), .D(\xi[5][4] ), 
        .S0(n816), .S1(n814), .Y(n805) );
  AO22XL U888 ( .A0(n873), .A1(\yi[1][3] ), .B0(n747), .B1(n729), .Y(yb[3]) );
  CLKBUFX3 U889 ( .A(n32), .Y(n870) );
  MX2XL U890 ( .A(n809), .B(n808), .S0(n817), .Y(n750) );
  MX4XL U891 ( .A(\xi[0][5] ), .B(\xi[1][5] ), .C(\xi[4][5] ), .D(\xi[5][5] ), 
        .S0(n815), .S1(n814), .Y(n807) );
  MX2XL U892 ( .A(n789), .B(n788), .S0(n818), .Y(n751) );
  MX2XL U893 ( .A(n787), .B(n786), .S0(n817), .Y(n752) );
  AOI221XL U894 ( .A0(\xi[2][1] ), .A1(n825), .B0(\xi[3][1] ), .B1(n232), .C0(
        n368), .Y(n367) );
  AND2X4 U895 ( .A(n366), .B(n367), .Y(n148) );
  CLKBUFX3 U896 ( .A(cs[0]), .Y(n872) );
  MX2XL U897 ( .A(n793), .B(n792), .S0(n818), .Y(n753) );
  MXI2X1 U898 ( .A(n755), .B(n756), .S0(n818), .Y(n754) );
  MXI4XL U899 ( .A(\xi[0][7] ), .B(\xi[1][7] ), .C(\xi[4][7] ), .D(\xi[5][7] ), 
        .S0(counter[0]), .S1(n814), .Y(n755) );
  MX2XL U900 ( .A(n795), .B(n794), .S0(n817), .Y(n757) );
  MXI2X1 U901 ( .A(n759), .B(n760), .S0(n817), .Y(n758) );
  MXI4XL U902 ( .A(\xi[0][8] ), .B(\xi[1][8] ), .C(\xi[4][8] ), .D(\xi[5][8] ), 
        .S0(counter[0]), .S1(n814), .Y(n759) );
  MXI3X1 U903 ( .A(\xi[2][8] ), .B(\xi[3][8] ), .C(\xi[6][8] ), .S0(counter[0]), .S1(n814), .Y(n760) );
  MX2XL U904 ( .A(n791), .B(n790), .S0(n817), .Y(n761) );
  MXI2X1 U905 ( .A(n763), .B(n764), .S0(n818), .Y(n762) );
  MXI4XL U906 ( .A(\xi[0][9] ), .B(\xi[1][9] ), .C(\xi[4][9] ), .D(\xi[5][9] ), 
        .S0(counter[0]), .S1(n814), .Y(n763) );
  MXI2X1 U907 ( .A(n766), .B(n767), .S0(n818), .Y(n765) );
  MXI4XL U908 ( .A(\yi[0][9] ), .B(\yi[1][9] ), .C(\yi[4][9] ), .D(\yi[5][9] ), 
        .S0(n816), .S1(n814), .Y(n766) );
  MXI3X1 U909 ( .A(\yi[2][9] ), .B(\yi[3][9] ), .C(\yi[6][9] ), .S0(counter[0]), .S1(n814), .Y(n767) );
  AOI22XL U910 ( .A0(X[9]), .A1(n734), .B0(n821), .B1(\xi[3][9] ), .Y(n312) );
  AOI22XL U911 ( .A0(X[0]), .A1(n734), .B0(n821), .B1(\xi[3][0] ), .Y(n321) );
  AOI22XL U912 ( .A0(X[1]), .A1(n734), .B0(n821), .B1(\xi[3][1] ), .Y(n320) );
  AOI22XL U913 ( .A0(X[2]), .A1(n734), .B0(n821), .B1(\xi[3][2] ), .Y(n319) );
  AOI22XL U914 ( .A0(X[3]), .A1(n734), .B0(n821), .B1(\xi[3][3] ), .Y(n318) );
  AOI22XL U915 ( .A0(X[4]), .A1(n734), .B0(n821), .B1(\xi[3][4] ), .Y(n317) );
  AOI22XL U916 ( .A0(X[5]), .A1(n734), .B0(n821), .B1(\xi[3][5] ), .Y(n316) );
  AOI22XL U917 ( .A0(X[6]), .A1(n734), .B0(n821), .B1(\xi[3][6] ), .Y(n315) );
  AOI22XL U918 ( .A0(X[7]), .A1(n734), .B0(n821), .B1(\xi[3][7] ), .Y(n314) );
  AOI22XL U919 ( .A0(X[8]), .A1(n734), .B0(n821), .B1(\xi[3][8] ), .Y(n313) );
  AOI22XL U920 ( .A0(n734), .A1(Y[0]), .B0(n821), .B1(\yi[3][0] ), .Y(n208) );
  AOI22XL U921 ( .A0(n734), .A1(Y[1]), .B0(n821), .B1(\yi[3][1] ), .Y(n207) );
  AOI22XL U922 ( .A0(n734), .A1(Y[2]), .B0(n821), .B1(\yi[3][2] ), .Y(n206) );
  AOI22XL U923 ( .A0(n734), .A1(Y[3]), .B0(n874), .B1(\yi[3][3] ), .Y(n205) );
  AOI22XL U924 ( .A0(n734), .A1(Y[4]), .B0(n874), .B1(\yi[3][4] ), .Y(n204) );
  AOI22XL U925 ( .A0(n734), .A1(Y[5]), .B0(n874), .B1(\yi[3][5] ), .Y(n203) );
  AOI22XL U926 ( .A0(n734), .A1(Y[6]), .B0(n874), .B1(\yi[3][6] ), .Y(n202) );
  AOI22XL U927 ( .A0(n734), .A1(Y[7]), .B0(n874), .B1(\yi[3][7] ), .Y(n201) );
  AOI22XL U928 ( .A0(n734), .A1(Y[8]), .B0(n821), .B1(\yi[3][8] ), .Y(n200) );
  AOI22XL U929 ( .A0(n734), .A1(Y[9]), .B0(n874), .B1(\yi[3][9] ), .Y(n198) );
  AOI22XL U930 ( .A0(X[9]), .A1(n832), .B0(n827), .B1(\xi[0][9] ), .Y(n376) );
  AOI22XL U931 ( .A0(X[0]), .A1(n832), .B0(n159), .B1(\xi[0][0] ), .Y(n285) );
  AOI22XL U932 ( .A0(X[1]), .A1(n832), .B0(n159), .B1(\xi[0][1] ), .Y(n284) );
  AOI22XL U933 ( .A0(X[2]), .A1(n832), .B0(n827), .B1(\xi[0][2] ), .Y(n283) );
  AOI22XL U934 ( .A0(X[3]), .A1(n832), .B0(n827), .B1(\xi[0][3] ), .Y(n282) );
  AOI22XL U935 ( .A0(X[4]), .A1(n832), .B0(n159), .B1(\xi[0][4] ), .Y(n281) );
  AOI22XL U936 ( .A0(X[5]), .A1(n832), .B0(n159), .B1(\xi[0][5] ), .Y(n280) );
  AOI22XL U937 ( .A0(X[6]), .A1(n832), .B0(n827), .B1(\xi[0][6] ), .Y(n279) );
  AOI22XL U938 ( .A0(X[7]), .A1(n832), .B0(n827), .B1(\xi[0][7] ), .Y(n278) );
  AOI22XL U939 ( .A0(X[8]), .A1(n832), .B0(n159), .B1(\xi[0][8] ), .Y(n277) );
  AOI22XL U940 ( .A0(Y[0]), .A1(n832), .B0(n827), .B1(\yi[0][0] ), .Y(n167) );
  AOI22XL U941 ( .A0(Y[1]), .A1(n832), .B0(n827), .B1(\yi[0][1] ), .Y(n166) );
  AOI22XL U942 ( .A0(Y[2]), .A1(n832), .B0(n827), .B1(\yi[0][2] ), .Y(n165) );
  AOI22XL U943 ( .A0(Y[3]), .A1(n832), .B0(n159), .B1(\yi[0][3] ), .Y(n164) );
  AOI22XL U944 ( .A0(Y[4]), .A1(n832), .B0(n827), .B1(\yi[0][4] ), .Y(n163) );
  AOI22XL U945 ( .A0(Y[5]), .A1(n832), .B0(n827), .B1(\yi[0][5] ), .Y(n162) );
  AOI22XL U946 ( .A0(Y[6]), .A1(n832), .B0(n827), .B1(\yi[0][6] ), .Y(n161) );
  AOI22XL U947 ( .A0(Y[7]), .A1(n832), .B0(n827), .B1(\yi[0][7] ), .Y(n160) );
  AOI22XL U948 ( .A0(Y[8]), .A1(n832), .B0(n827), .B1(\yi[0][8] ), .Y(n157) );
  AOI22XL U949 ( .A0(Y[9]), .A1(n832), .B0(n827), .B1(\yi[0][9] ), .Y(n273) );
  AOI22XL U950 ( .A0(X[9]), .A1(n838), .B0(n227), .B1(\xi[5][9] ), .Y(n336) );
  AOI22XL U951 ( .A0(X[9]), .A1(n857), .B0(n186), .B1(\xi[2][9] ), .Y(n300) );
  AOI22XL U952 ( .A0(X[9]), .A1(n864), .B0(n858), .B1(\xi[1][9] ), .Y(n286) );
  AOI22XL U953 ( .A0(X[0]), .A1(n838), .B0(n835), .B1(\xi[5][0] ), .Y(n369) );
  AOI22XL U954 ( .A0(X[0]), .A1(n857), .B0(n852), .B1(\xi[2][0] ), .Y(n309) );
  AOI22XL U955 ( .A0(X[0]), .A1(n864), .B0(n858), .B1(\xi[1][0] ), .Y(n295) );
  AOI22XL U956 ( .A0(X[1]), .A1(n838), .B0(n835), .B1(\xi[5][1] ), .Y(n365) );
  AOI22XL U957 ( .A0(X[1]), .A1(n857), .B0(n186), .B1(\xi[2][1] ), .Y(n308) );
  AOI22XL U958 ( .A0(X[1]), .A1(n864), .B0(n858), .B1(\xi[1][1] ), .Y(n294) );
  AOI22XL U959 ( .A0(X[2]), .A1(n838), .B0(n227), .B1(\xi[5][2] ), .Y(n361) );
  AOI22XL U960 ( .A0(X[2]), .A1(n857), .B0(n852), .B1(\xi[2][2] ), .Y(n307) );
  AOI22XL U961 ( .A0(X[2]), .A1(n864), .B0(n858), .B1(\xi[1][2] ), .Y(n293) );
  AOI22XL U962 ( .A0(X[3]), .A1(n838), .B0(n835), .B1(\xi[5][3] ), .Y(n357) );
  AOI22XL U963 ( .A0(X[3]), .A1(n857), .B0(n852), .B1(\xi[2][3] ), .Y(n306) );
  AOI22XL U964 ( .A0(X[3]), .A1(n864), .B0(n859), .B1(\xi[1][3] ), .Y(n292) );
  AOI22XL U965 ( .A0(X[4]), .A1(n838), .B0(n835), .B1(\xi[5][4] ), .Y(n353) );
  AOI22XL U966 ( .A0(X[4]), .A1(n857), .B0(n852), .B1(\xi[2][4] ), .Y(n305) );
  AOI22XL U967 ( .A0(X[4]), .A1(n864), .B0(n859), .B1(\xi[1][4] ), .Y(n291) );
  AOI22XL U968 ( .A0(X[5]), .A1(n838), .B0(n227), .B1(\xi[5][5] ), .Y(n349) );
  AOI22XL U969 ( .A0(X[5]), .A1(n857), .B0(n186), .B1(\xi[2][5] ), .Y(n304) );
  AOI22XL U970 ( .A0(X[5]), .A1(n864), .B0(n858), .B1(\xi[1][5] ), .Y(n290) );
  AOI22XL U971 ( .A0(X[6]), .A1(n838), .B0(n227), .B1(\xi[5][6] ), .Y(n345) );
  AOI22XL U972 ( .A0(X[6]), .A1(n857), .B0(n186), .B1(\xi[2][6] ), .Y(n303) );
  AOI22XL U973 ( .A0(X[6]), .A1(n864), .B0(n858), .B1(\xi[1][6] ), .Y(n289) );
  AOI22XL U974 ( .A0(X[7]), .A1(n838), .B0(n835), .B1(\xi[5][7] ), .Y(n341) );
  AOI22XL U975 ( .A0(X[7]), .A1(n857), .B0(n852), .B1(\xi[2][7] ), .Y(n302) );
  AOI22XL U976 ( .A0(X[7]), .A1(n864), .B0(n858), .B1(\xi[1][7] ), .Y(n288) );
  AOI22XL U977 ( .A0(X[8]), .A1(n838), .B0(n835), .B1(\xi[5][8] ), .Y(n337) );
  AOI22XL U978 ( .A0(X[8]), .A1(n857), .B0(n852), .B1(\xi[2][8] ), .Y(n301) );
  AOI22XL U979 ( .A0(X[8]), .A1(n864), .B0(n859), .B1(\xi[1][8] ), .Y(n287) );
  AOI22XL U980 ( .A0(Y[9]), .A1(n864), .B0(n858), .B1(\yi[1][9] ), .Y(n170) );
  AOI22XL U981 ( .A0(n838), .A1(Y[0]), .B0(n227), .B1(\yi[5][0] ), .Y(n266) );
  AOI22XL U982 ( .A0(n857), .A1(Y[0]), .B0(n186), .B1(\yi[2][0] ), .Y(n195) );
  AOI22XL U983 ( .A0(n864), .A1(Y[0]), .B0(n858), .B1(\yi[1][0] ), .Y(n181) );
  AOI22XL U984 ( .A0(n838), .A1(Y[1]), .B0(n835), .B1(\yi[5][1] ), .Y(n262) );
  AOI22XL U985 ( .A0(n857), .A1(Y[1]), .B0(n852), .B1(\yi[2][1] ), .Y(n194) );
  AOI22XL U986 ( .A0(n864), .A1(Y[1]), .B0(n858), .B1(\yi[1][1] ), .Y(n180) );
  AOI22XL U987 ( .A0(n838), .A1(Y[2]), .B0(n835), .B1(\yi[5][2] ), .Y(n258) );
  AOI22XL U988 ( .A0(n857), .A1(Y[2]), .B0(n852), .B1(\yi[2][2] ), .Y(n193) );
  AOI22XL U989 ( .A0(n864), .A1(Y[2]), .B0(n859), .B1(\yi[1][2] ), .Y(n179) );
  AOI22XL U990 ( .A0(n838), .A1(Y[3]), .B0(n227), .B1(\yi[5][3] ), .Y(n254) );
  AOI22XL U991 ( .A0(n857), .A1(Y[3]), .B0(n186), .B1(\yi[2][3] ), .Y(n192) );
  AOI22XL U992 ( .A0(n864), .A1(Y[3]), .B0(n859), .B1(\yi[1][3] ), .Y(n178) );
  AOI22XL U993 ( .A0(n838), .A1(Y[4]), .B0(n835), .B1(\yi[5][4] ), .Y(n250) );
  AOI22XL U994 ( .A0(n857), .A1(Y[4]), .B0(n852), .B1(\yi[2][4] ), .Y(n191) );
  AOI22XL U995 ( .A0(n864), .A1(Y[4]), .B0(n858), .B1(\yi[1][4] ), .Y(n177) );
  AOI22XL U996 ( .A0(n838), .A1(Y[5]), .B0(n835), .B1(\yi[5][5] ), .Y(n246) );
  AOI22XL U997 ( .A0(n857), .A1(Y[5]), .B0(n852), .B1(\yi[2][5] ), .Y(n190) );
  AOI22XL U998 ( .A0(n864), .A1(Y[5]), .B0(n858), .B1(\yi[1][5] ), .Y(n176) );
  AOI22XL U999 ( .A0(n838), .A1(Y[6]), .B0(n835), .B1(\yi[5][6] ), .Y(n242) );
  AOI22XL U1000 ( .A0(n857), .A1(Y[6]), .B0(n852), .B1(\yi[2][6] ), .Y(n189)
         );
  AOI22XL U1001 ( .A0(n864), .A1(Y[6]), .B0(n858), .B1(\yi[1][6] ), .Y(n175)
         );
  AOI22XL U1002 ( .A0(n838), .A1(Y[7]), .B0(n835), .B1(\yi[5][7] ), .Y(n238)
         );
  AOI22XL U1003 ( .A0(n857), .A1(Y[7]), .B0(n852), .B1(\yi[2][7] ), .Y(n188)
         );
  AOI22XL U1004 ( .A0(n864), .A1(Y[7]), .B0(n859), .B1(\yi[1][7] ), .Y(n174)
         );
  AOI22XL U1005 ( .A0(n838), .A1(Y[8]), .B0(n835), .B1(\yi[5][8] ), .Y(n228)
         );
  AOI22XL U1006 ( .A0(n857), .A1(Y[8]), .B0(n852), .B1(\yi[2][8] ), .Y(n187)
         );
  AOI22XL U1007 ( .A0(n864), .A1(Y[8]), .B0(n858), .B1(\yi[1][8] ), .Y(n173)
         );
  AOI22XL U1008 ( .A0(n838), .A1(Y[9]), .B0(n835), .B1(\yi[5][9] ), .Y(n225)
         );
  AOI22XL U1009 ( .A0(n857), .A1(Y[9]), .B0(n852), .B1(\yi[2][9] ), .Y(n184)
         );
  AOI22XL U1010 ( .A0(n847), .A1(Y[3]), .B0(n840), .B1(\yi[4][3] ), .Y(n219)
         );
  AOI22XL U1011 ( .A0(n847), .A1(Y[7]), .B0(n840), .B1(\yi[4][7] ), .Y(n215)
         );
  AOI22XL U1012 ( .A0(n847), .A1(Y[8]), .B0(n840), .B1(\yi[4][8] ), .Y(n214)
         );
  AOI22XL U1013 ( .A0(n847), .A1(Y[0]), .B0(n840), .B1(\yi[4][0] ), .Y(n222)
         );
  AOI22XL U1014 ( .A0(n847), .A1(Y[4]), .B0(n840), .B1(\yi[4][4] ), .Y(n218)
         );
  AOI22XL U1015 ( .A0(n847), .A1(Y[5]), .B0(n840), .B1(\yi[4][5] ), .Y(n217)
         );
  AOI22XL U1016 ( .A0(n847), .A1(Y[9]), .B0(n840), .B1(\yi[4][9] ), .Y(n211)
         );
  AOI22XL U1017 ( .A0(X[0]), .A1(n847), .B0(n840), .B1(\xi[4][0] ), .Y(n334)
         );
  AOI22XL U1018 ( .A0(X[9]), .A1(n847), .B0(n840), .B1(\xi[4][9] ), .Y(n325)
         );
  AOI22XL U1019 ( .A0(X[1]), .A1(n847), .B0(n840), .B1(\xi[4][1] ), .Y(n333)
         );
  AOI22XL U1020 ( .A0(X[2]), .A1(n847), .B0(n840), .B1(\xi[4][2] ), .Y(n332)
         );
  AOI22XL U1021 ( .A0(X[3]), .A1(n847), .B0(n840), .B1(\xi[4][3] ), .Y(n331)
         );
  AOI22XL U1022 ( .A0(X[4]), .A1(n847), .B0(n840), .B1(\xi[4][4] ), .Y(n330)
         );
  AOI22XL U1023 ( .A0(X[5]), .A1(n847), .B0(n840), .B1(\xi[4][5] ), .Y(n329)
         );
  AOI22XL U1024 ( .A0(X[6]), .A1(n847), .B0(n840), .B1(\xi[4][6] ), .Y(n328)
         );
  AOI22XL U1025 ( .A0(X[7]), .A1(n847), .B0(n840), .B1(\xi[4][7] ), .Y(n327)
         );
  AOI22XL U1026 ( .A0(X[8]), .A1(n847), .B0(n839), .B1(\xi[4][8] ), .Y(n326)
         );
  AOI22XL U1027 ( .A0(n847), .A1(Y[1]), .B0(n840), .B1(\yi[4][1] ), .Y(n221)
         );
  AOI22XL U1028 ( .A0(n847), .A1(Y[2]), .B0(n840), .B1(\yi[4][2] ), .Y(n220)
         );
  AOI22XL U1029 ( .A0(n847), .A1(Y[6]), .B0(n840), .B1(\yi[4][6] ), .Y(n216)
         );
  NOR2X1 U1030 ( .A(n869), .B(cs[1]), .Y(n378) );
  XNOR2XL U1031 ( .A(counter[3]), .B(n396), .Y(n395) );
  NOR2XL U1032 ( .A(n102), .B(n902), .Y(n396) );
  OAI32XL U1033 ( .A0(n902), .A1(n814), .A2(n382), .B0(n392), .B1(n102), .Y(
        n542) );
  AOI2BB1XL U1034 ( .A0N(n393), .A1N(n382), .B0(n394), .Y(n392) );
  NOR2X1 U1035 ( .A(n107), .B(sorting_counter[0]), .Y(n388) );
  XNOR2XL U1036 ( .A(counter[1]), .B(n868), .Y(n391) );
  NOR2XL U1037 ( .A(n30), .B(n869), .Y(n394) );
  NAND3XL U1038 ( .A(n32), .B(n30), .C(n150), .Y(n154) );
  OR2X6 U1039 ( .A(n776), .B(\cross_result[20] ), .Y(n768) );
  CLKINVX1 U1040 ( .A(n769), .Y(n848) );
  CLKINVX1 U1041 ( .A(n769), .Y(n849) );
  CLKINVX1 U1042 ( .A(n769), .Y(n850) );
  CLKINVX1 U1043 ( .A(n770), .Y(n853) );
  CLKINVX1 U1044 ( .A(n770), .Y(n854) );
  CLKINVX1 U1045 ( .A(n771), .Y(n860) );
  CLKINVX1 U1046 ( .A(n771), .Y(n861) );
  CLKINVX1 U1047 ( .A(n772), .Y(n828) );
  CLKINVX1 U1048 ( .A(n772), .Y(n829) );
  CLKINVX1 U1049 ( .A(n773), .Y(n841) );
  CLKINVX1 U1050 ( .A(n773), .Y(n842) );
  CLKINVX1 U1051 ( .A(n774), .Y(n844) );
  CLKINVX1 U1052 ( .A(n774), .Y(n845) );
  CLKINVX1 U1053 ( .A(n770), .Y(n855) );
  CLKINVX1 U1054 ( .A(n771), .Y(n862) );
  CLKINVX1 U1055 ( .A(n772), .Y(n830) );
  CLKINVX1 U1056 ( .A(n773), .Y(n843) );
  CLKINVX1 U1057 ( .A(n774), .Y(n846) );
  AND2X2 U1058 ( .A(n322), .B(n777), .Y(n769) );
  CLKBUFX3 U1059 ( .A(n223), .Y(n836) );
  NAND2X1 U1060 ( .A(n370), .B(n897), .Y(n223) );
  CLKBUFX3 U1061 ( .A(n183), .Y(n856) );
  CLKBUFX3 U1062 ( .A(n156), .Y(n831) );
  NAND2X1 U1063 ( .A(n377), .B(n823), .Y(n156) );
  INVX3 U1064 ( .A(n742), .Y(n858) );
  AND2X2 U1065 ( .A(n310), .B(n899), .Y(n770) );
  AND2X2 U1066 ( .A(n296), .B(n898), .Y(n771) );
  AND2X2 U1067 ( .A(n377), .B(n900), .Y(n772) );
  AND2X2 U1068 ( .A(n335), .B(n775), .Y(n773) );
  CLKBUFX3 U1069 ( .A(n271), .Y(n834) );
  CLKINVX1 U1070 ( .A(n823), .Y(n900) );
  NOR2X2 U1071 ( .A(n868), .B(n298), .Y(n826) );
  NOR2X2 U1072 ( .A(n868), .B(n298), .Y(n825) );
  NOR2X2 U1073 ( .A(n868), .B(n298), .Y(n231) );
  CLKINVX1 U1074 ( .A(n393), .Y(n902) );
  BUFX4 U1075 ( .A(n129), .Y(n865) );
  NOR2X1 U1076 ( .A(n150), .B(n730), .Y(n129) );
  NOR2X1 U1077 ( .A(n371), .B(n868), .Y(n236) );
  CLKINVX1 U1078 ( .A(n150), .Y(n901) );
  NOR2X1 U1079 ( .A(n869), .B(n821), .Y(n322) );
  NOR2X1 U1080 ( .A(n32), .B(n858), .Y(n296) );
  NAND2X1 U1081 ( .A(n372), .B(n870), .Y(n297) );
  CLKBUFX3 U1082 ( .A(n197), .Y(n851) );
  CLKBUFX3 U1083 ( .A(n169), .Y(n863) );
  NAND2X1 U1084 ( .A(n296), .B(n730), .Y(n169) );
  CLKBUFX3 U1085 ( .A(n874), .Y(n821) );
  NOR2X1 U1086 ( .A(n869), .B(n827), .Y(n377) );
  NOR2X1 U1087 ( .A(n869), .B(n835), .Y(n370) );
  NOR2X1 U1088 ( .A(n869), .B(n852), .Y(n310) );
  NOR2X1 U1089 ( .A(n869), .B(n839), .Y(n335) );
  CLKBUFX3 U1090 ( .A(n224), .Y(n837) );
  NAND2X1 U1091 ( .A(n370), .B(n727), .Y(n224) );
  CLKBUFX3 U1092 ( .A(n839), .Y(n840) );
  NOR2X1 U1093 ( .A(n827), .B(n872), .Y(n158) );
  NOR2X1 U1094 ( .A(n835), .B(n872), .Y(n226) );
  NOR2X1 U1095 ( .A(n840), .B(n872), .Y(n212) );
  NOR2X1 U1096 ( .A(n852), .B(n872), .Y(n185) );
  NOR2X1 U1097 ( .A(n859), .B(n872), .Y(n171) );
  CLKBUFX3 U1098 ( .A(n159), .Y(n827) );
  OA22X1 U1099 ( .A0(n900), .A1(n299), .B0(n898), .B1(n311), .Y(n159) );
  CLKBUFX3 U1100 ( .A(n227), .Y(n835) );
  OA22X1 U1101 ( .A0(n371), .A1(n299), .B0(n896), .B1(n297), .Y(n227) );
  CLKBUFX3 U1102 ( .A(n186), .Y(n852) );
  OA22X1 U1103 ( .A0(n899), .A1(n299), .B0(n777), .B1(n311), .Y(n186) );
  CLKBUFX3 U1104 ( .A(n270), .Y(n833) );
  NAND2X1 U1105 ( .A(n736), .B(n870), .Y(n270) );
  CLKINVX1 U1106 ( .A(n378), .Y(n922) );
  CLKINVX1 U1107 ( .A(n740), .Y(n908) );
  CLKINVX1 U1108 ( .A(n741), .Y(n907) );
  CLKINVX1 U1109 ( .A(n750), .Y(n906) );
  CLKINVX1 U1110 ( .A(n754), .Y(n905) );
  CLKINVX1 U1111 ( .A(n758), .Y(n904) );
  CLKINVX1 U1112 ( .A(n762), .Y(n903) );
  CLKINVX1 U1113 ( .A(n765), .Y(n911) );
  CLKINVX1 U1114 ( .A(n747), .Y(n917) );
  CLKINVX1 U1115 ( .A(n752), .Y(n916) );
  CLKINVX1 U1116 ( .A(n751), .Y(n915) );
  CLKINVX1 U1117 ( .A(n761), .Y(n914) );
  CLKINVX1 U1118 ( .A(n753), .Y(n913) );
  CLKINVX1 U1119 ( .A(n757), .Y(n912) );
  OA21X2 U1120 ( .A0(n397), .A1(n922), .B0(n152), .Y(n382) );
  AOI222XL U1121 ( .A0(n389), .A1(n896), .B0(n388), .B1(n775), .C0(n390), .C1(
        n897), .Y(n397) );
  CLKINVX1 U1122 ( .A(n727), .Y(n897) );
  NAND2X1 U1123 ( .A(n901), .B(n870), .Y(n152) );
  CLKINVX1 U1124 ( .A(n730), .Y(n898) );
  OAI31XL U1125 ( .A0(n388), .A1(n389), .A2(n390), .B0(n391), .Y(n387) );
  CLKINVX1 U1126 ( .A(n394), .Y(n923) );
  NOR3X2 U1127 ( .A(n902), .B(n102), .C(n101), .Y(n237) );
  AO22X1 U1128 ( .A0(n873), .A1(\yi[1][7] ), .B0(n753), .B1(n729), .Y(yb[7])
         );
  OAI31X1 U1129 ( .A0(n959), .A1(n872), .A2(n865), .B0(n146), .Y(x2[3]) );
  AO22X1 U1130 ( .A0(n873), .A1(\xi[1][3] ), .B0(n737), .B1(n870), .Y(xb[3])
         );
  AO22X1 U1131 ( .A0(n873), .A1(\xi[1][2] ), .B0(x1[2]), .B1(n870), .Y(xb[2])
         );
  AO22X1 U1132 ( .A0(n872), .A1(\xi[1][5] ), .B0(n741), .B1(n870), .Y(xb[5])
         );
  OAI31XL U1133 ( .A0(n945), .A1(n873), .A2(n865), .B0(n131), .Y(y2[8]) );
  AO22X1 U1134 ( .A0(n873), .A1(\yi[1][8] ), .B0(n757), .B1(n729), .Y(yb[8])
         );
  OAI2BB2XL U1135 ( .B0(n869), .B1(n950), .A0N(n729), .A1N(\yi[0][3] ), .Y(
        y0[3]) );
  OAI2BB2XL U1136 ( .B0(n869), .B1(n957), .A0N(n729), .A1N(\xi[0][5] ), .Y(
        x0[5]) );
  AND2X2 U1137 ( .A(n362), .B(n363), .Y(n147) );
  AOI222XL U1138 ( .A0(\xi[1][2] ), .A1(n730), .B0(\xi[6][2] ), .B1(n822), 
        .C0(\xi[0][2] ), .C1(n823), .Y(n362) );
  AOI221XL U1139 ( .A0(\xi[2][2] ), .A1(n826), .B0(\xi[3][2] ), .B1(n232), 
        .C0(n364), .Y(n363) );
  AND2X2 U1140 ( .A(n358), .B(n359), .Y(n146) );
  AOI222XL U1141 ( .A0(\xi[1][3] ), .A1(n730), .B0(\xi[6][3] ), .B1(n822), 
        .C0(\xi[0][3] ), .C1(n823), .Y(n358) );
  AOI221XL U1142 ( .A0(\xi[2][3] ), .A1(n231), .B0(\xi[3][3] ), .B1(n232), 
        .C0(n360), .Y(n359) );
  AND2X2 U1143 ( .A(n259), .B(n260), .Y(n137) );
  AOI221XL U1144 ( .A0(\yi[2][2] ), .A1(n231), .B0(\yi[3][2] ), .B1(n232), 
        .C0(n261), .Y(n260) );
  AND2X2 U1145 ( .A(n255), .B(n256), .Y(n136) );
  AOI222XL U1146 ( .A0(n730), .A1(\yi[1][3] ), .B0(\yi[6][3] ), .B1(n822), 
        .C0(\yi[0][3] ), .C1(n824), .Y(n255) );
  AOI221XL U1147 ( .A0(\yi[2][3] ), .A1(n825), .B0(\yi[3][3] ), .B1(n232), 
        .C0(n257), .Y(n256) );
  AND2X2 U1148 ( .A(n251), .B(n252), .Y(n135) );
  AOI222XL U1149 ( .A0(n730), .A1(\yi[1][4] ), .B0(\yi[6][4] ), .B1(n822), 
        .C0(\yi[0][4] ), .C1(n824), .Y(n251) );
  AOI221XL U1150 ( .A0(\yi[2][4] ), .A1(n826), .B0(\yi[3][4] ), .B1(n232), 
        .C0(n253), .Y(n252) );
  AO22X1 U1151 ( .A0(n727), .A1(\yi[5][4] ), .B0(n866), .B1(\yi[4][4] ), .Y(
        n253) );
  AND2X2 U1152 ( .A(n373), .B(n374), .Y(n149) );
  MX3XL U1153 ( .A(\yi[2][0] ), .B(\yi[3][0] ), .C(\yi[6][0] ), .S0(n815), 
        .S1(n813), .Y(n778) );
  OR3X2 U1154 ( .A(n324), .B(counter[0]), .C(n105), .Y(n777) );
  BUFX4 U1155 ( .A(cs[0]), .Y(n873) );
  MX3XL U1156 ( .A(\yi[2][1] ), .B(\yi[3][1] ), .C(\yi[6][1] ), .S0(n815), 
        .S1(n812), .Y(n780) );
  MX3XL U1157 ( .A(\yi[2][2] ), .B(\yi[3][2] ), .C(\yi[6][2] ), .S0(n816), 
        .S1(n732), .Y(n782) );
  MX3XL U1158 ( .A(\yi[2][3] ), .B(\yi[3][3] ), .C(\yi[6][3] ), .S0(n815), 
        .S1(n812), .Y(n784) );
  MX3XL U1159 ( .A(\xi[2][3] ), .B(\xi[3][3] ), .C(\xi[6][3] ), .S0(n815), 
        .S1(n812), .Y(n802) );
  MX3XL U1160 ( .A(\xi[2][4] ), .B(\xi[3][4] ), .C(\xi[6][4] ), .S0(n816), 
        .S1(n814), .Y(n804) );
  OAI2BB2XL U1161 ( .B0(n869), .B1(n953), .A0N(n729), .A1N(\yi[0][0] ), .Y(
        y0[0]) );
  AO22X1 U1162 ( .A0(n873), .A1(\yi[1][1] ), .B0(n738), .B1(n870), .Y(yb[1])
         );
  AO22X1 U1163 ( .A0(n873), .A1(\xi[1][1] ), .B0(n733), .B1(n870), .Y(xb[1])
         );
  AO22X1 U1164 ( .A0(n873), .A1(\yi[1][0] ), .B0(n735), .B1(n729), .Y(yb[0])
         );
  AO22X1 U1165 ( .A0(n873), .A1(\xi[1][0] ), .B0(x1[0]), .B1(n870), .Y(xb[0])
         );
  OAI2BB2XL U1166 ( .B0(n869), .B1(n961), .A0N(n869), .A1N(\xi[0][1] ), .Y(
        x0[1]) );
  OAI2BB2XL U1167 ( .B0(n869), .B1(n952), .A0N(n729), .A1N(\yi[0][1] ), .Y(
        y0[1]) );
  OAI2BB2XL U1168 ( .B0(n869), .B1(n959), .A0N(n729), .A1N(\xi[0][3] ), .Y(
        x0[3]) );
  OAI2BB2XL U1169 ( .B0(n869), .B1(n951), .A0N(n729), .A1N(\yi[0][2] ), .Y(
        y0[2]) );
  OAI2BB2XL U1170 ( .B0(n869), .B1(n956), .A0N(n729), .A1N(\xi[0][6] ), .Y(
        x0[6]) );
  OAI2BB2XL U1171 ( .B0(n869), .B1(n949), .A0N(n869), .A1N(\yi[0][4] ), .Y(
        y0[4]) );
  OAI2BB2XL U1172 ( .B0(n869), .B1(n948), .A0N(n869), .A1N(\yi[0][5] ), .Y(
        y0[5]) );
  OAI2BB2XL U1173 ( .B0(n870), .B1(n947), .A0N(n729), .A1N(\yi[0][6] ), .Y(
        y0[6]) );
  OAI2BB2XL U1174 ( .B0(n870), .B1(n946), .A0N(n869), .A1N(\yi[0][7] ), .Y(
        y0[7]) );
  OAI2BB2XL U1175 ( .B0(n870), .B1(n945), .A0N(n729), .A1N(\yi[0][8] ), .Y(
        y0[8]) );
  AO22X1 U1176 ( .A0(n873), .A1(\yi[1][5] ), .B0(n751), .B1(n729), .Y(yb[5])
         );
  OAI31XL U1177 ( .A0(n951), .A1(n873), .A2(n865), .B0(n137), .Y(y2[2]) );
  AO22X1 U1178 ( .A0(n873), .A1(\yi[1][2] ), .B0(n739), .B1(n729), .Y(yb[2])
         );
  OAI31XL U1179 ( .A0(n949), .A1(n873), .A2(n865), .B0(n135), .Y(y2[4]) );
  AO22X1 U1180 ( .A0(n873), .A1(\yi[1][4] ), .B0(n752), .B1(n729), .Y(yb[4])
         );
  OAI31XL U1181 ( .A0(n947), .A1(n873), .A2(n865), .B0(n133), .Y(y2[6]) );
  AO22X1 U1182 ( .A0(n873), .A1(\yi[1][6] ), .B0(n761), .B1(n729), .Y(yb[6])
         );
  OAI31XL U1183 ( .A0(n958), .A1(n872), .A2(n865), .B0(n145), .Y(x2[4]) );
  AO22X1 U1184 ( .A0(n873), .A1(\xi[1][4] ), .B0(n740), .B1(n870), .Y(xb[4])
         );
  OAI31XL U1185 ( .A0(n956), .A1(n872), .A2(n865), .B0(n143), .Y(x2[6]) );
  AO22X1 U1186 ( .A0(cs[0]), .A1(\xi[1][6] ), .B0(n750), .B1(n870), .Y(xb[6])
         );
  OAI31XL U1187 ( .A0(n955), .A1(n872), .A2(n865), .B0(n142), .Y(x2[7]) );
  AO22X1 U1188 ( .A0(cs[0]), .A1(\xi[1][7] ), .B0(n754), .B1(n870), .Y(xb[7])
         );
  OAI31XL U1189 ( .A0(n954), .A1(n872), .A2(n865), .B0(n141), .Y(x2[8]) );
  AO22X1 U1190 ( .A0(cs[0]), .A1(\xi[1][8] ), .B0(n758), .B1(n870), .Y(xb[8])
         );
  OAI2BB2XL U1191 ( .B0(n869), .B1(n944), .A0N(n729), .A1N(\yi[0][9] ), .Y(
        y0[9]) );
  OAI31XL U1192 ( .A0(n944), .A1(n873), .A2(n865), .B0(n130), .Y(y2[9]) );
  AO22X1 U1193 ( .A0(n873), .A1(\yi[1][9] ), .B0(n765), .B1(n729), .Y(yb[9])
         );
  OAI31XL U1194 ( .A0(n963), .A1(n872), .A2(n865), .B0(n140), .Y(x2[9]) );
  AO22X1 U1195 ( .A0(n873), .A1(\xi[1][9] ), .B0(n762), .B1(n870), .Y(xb[9])
         );
  AND2X2 U1196 ( .A(n354), .B(n355), .Y(n145) );
  AOI222XL U1197 ( .A0(\xi[1][4] ), .A1(n730), .B0(\xi[6][4] ), .B1(n822), 
        .C0(\xi[0][4] ), .C1(n823), .Y(n354) );
  AOI221XL U1198 ( .A0(\xi[2][4] ), .A1(n825), .B0(\xi[3][4] ), .B1(n232), 
        .C0(n356), .Y(n355) );
  AO22X1 U1199 ( .A0(n727), .A1(\xi[5][4] ), .B0(n866), .B1(\xi[4][4] ), .Y(
        n356) );
  AND2X2 U1200 ( .A(n350), .B(n351), .Y(n144) );
  AOI222XL U1201 ( .A0(\xi[1][5] ), .A1(n730), .B0(\xi[6][5] ), .B1(n822), 
        .C0(\xi[0][5] ), .C1(n823), .Y(n350) );
  AOI221XL U1202 ( .A0(\xi[2][5] ), .A1(n826), .B0(\xi[3][5] ), .B1(n232), 
        .C0(n352), .Y(n351) );
  AO22X1 U1203 ( .A0(n727), .A1(\xi[5][5] ), .B0(n728), .B1(\xi[4][5] ), .Y(
        n352) );
  AND2X2 U1204 ( .A(n346), .B(n347), .Y(n143) );
  AOI222XL U1205 ( .A0(\xi[1][6] ), .A1(n730), .B0(\xi[6][6] ), .B1(n822), 
        .C0(\xi[0][6] ), .C1(n823), .Y(n346) );
  AOI221XL U1206 ( .A0(\xi[2][6] ), .A1(n231), .B0(\xi[3][6] ), .B1(n232), 
        .C0(n348), .Y(n347) );
  AO22X1 U1207 ( .A0(n727), .A1(\xi[5][6] ), .B0(n728), .B1(\xi[4][6] ), .Y(
        n348) );
  AND2X2 U1208 ( .A(n342), .B(n343), .Y(n142) );
  AOI222XL U1209 ( .A0(\xi[1][7] ), .A1(n730), .B0(\xi[6][7] ), .B1(n822), 
        .C0(\xi[0][7] ), .C1(n823), .Y(n342) );
  AOI221XL U1210 ( .A0(\xi[2][7] ), .A1(n825), .B0(\xi[3][7] ), .B1(n232), 
        .C0(n344), .Y(n343) );
  AO22X1 U1211 ( .A0(n727), .A1(\xi[5][7] ), .B0(n728), .B1(\xi[4][7] ), .Y(
        n344) );
  AND2X2 U1212 ( .A(n338), .B(n339), .Y(n141) );
  AOI222XL U1213 ( .A0(\xi[1][8] ), .A1(n730), .B0(\xi[6][8] ), .B1(n822), 
        .C0(\xi[0][8] ), .C1(n824), .Y(n338) );
  AOI221XL U1214 ( .A0(\xi[2][8] ), .A1(n826), .B0(\xi[3][8] ), .B1(n232), 
        .C0(n340), .Y(n339) );
  AO22X1 U1215 ( .A0(n727), .A1(\xi[5][8] ), .B0(n866), .B1(\xi[4][8] ), .Y(
        n340) );
  AND2X2 U1216 ( .A(n247), .B(n248), .Y(n134) );
  AOI222XL U1217 ( .A0(n730), .A1(\yi[1][5] ), .B0(\yi[6][5] ), .B1(n822), 
        .C0(\yi[0][5] ), .C1(n824), .Y(n247) );
  AOI221XL U1218 ( .A0(\yi[2][5] ), .A1(n231), .B0(\yi[3][5] ), .B1(n232), 
        .C0(n249), .Y(n248) );
  AO22X1 U1219 ( .A0(n727), .A1(\yi[5][5] ), .B0(n866), .B1(\yi[4][5] ), .Y(
        n249) );
  AND2X2 U1220 ( .A(n243), .B(n244), .Y(n133) );
  AOI222XL U1221 ( .A0(n730), .A1(\yi[1][6] ), .B0(\yi[6][6] ), .B1(n822), 
        .C0(\yi[0][6] ), .C1(n824), .Y(n243) );
  AOI221XL U1222 ( .A0(\yi[2][6] ), .A1(n825), .B0(\yi[3][6] ), .B1(n232), 
        .C0(n245), .Y(n244) );
  AO22X1 U1223 ( .A0(n727), .A1(\yi[5][6] ), .B0(n866), .B1(\yi[4][6] ), .Y(
        n245) );
  AND2X2 U1224 ( .A(n239), .B(n240), .Y(n132) );
  AOI222XL U1225 ( .A0(n730), .A1(\yi[1][7] ), .B0(\yi[6][7] ), .B1(n822), 
        .C0(\yi[0][7] ), .C1(n824), .Y(n239) );
  AOI221XL U1226 ( .A0(\yi[2][7] ), .A1(n826), .B0(\yi[3][7] ), .B1(n232), 
        .C0(n241), .Y(n240) );
  AND2X2 U1227 ( .A(n229), .B(n230), .Y(n131) );
  AOI222XL U1228 ( .A0(n730), .A1(\yi[1][8] ), .B0(\yi[6][8] ), .B1(n822), 
        .C0(\yi[0][8] ), .C1(n824), .Y(n229) );
  AOI221XL U1229 ( .A0(\yi[2][8] ), .A1(n231), .B0(\yi[3][8] ), .B1(n232), 
        .C0(n233), .Y(n230) );
  AO22X1 U1230 ( .A0(n727), .A1(\yi[5][8] ), .B0(n728), .B1(\yi[4][8] ), .Y(
        n233) );
  MX3XL U1231 ( .A(\yi[2][4] ), .B(\yi[3][4] ), .C(\yi[6][4] ), .S0(n816), 
        .S1(n812), .Y(n786) );
  MX3XL U1232 ( .A(\yi[2][5] ), .B(\yi[3][5] ), .C(\yi[6][5] ), .S0(n816), 
        .S1(n814), .Y(n788) );
  MX3XL U1233 ( .A(\xi[2][5] ), .B(\xi[3][5] ), .C(\xi[6][5] ), .S0(n816), 
        .S1(n814), .Y(n806) );
  MX3XL U1234 ( .A(\xi[2][6] ), .B(\xi[3][6] ), .C(\xi[6][6] ), .S0(n815), 
        .S1(n814), .Y(n808) );
  MX3XL U1235 ( .A(\yi[2][6] ), .B(\yi[3][6] ), .C(\yi[6][6] ), .S0(n815), 
        .S1(n814), .Y(n790) );
  MX3XL U1236 ( .A(\yi[2][7] ), .B(\yi[3][7] ), .C(\yi[6][7] ), .S0(n816), 
        .S1(n814), .Y(n792) );
  MX3XL U1237 ( .A(\yi[2][8] ), .B(\yi[3][8] ), .C(\yi[6][8] ), .S0(n815), 
        .S1(n814), .Y(n794) );
  AND2X2 U1238 ( .A(n379), .B(n380), .Y(n140) );
  AOI222XL U1239 ( .A0(\xi[1][9] ), .A1(n730), .B0(\xi[6][9] ), .B1(n822), 
        .C0(\xi[0][9] ), .C1(n823), .Y(n379) );
  AOI221XL U1240 ( .A0(\xi[2][9] ), .A1(n826), .B0(\xi[3][9] ), .B1(n232), 
        .C0(n381), .Y(n380) );
  AO22X1 U1241 ( .A0(n727), .A1(\xi[5][9] ), .B0(n728), .B1(\xi[4][9] ), .Y(
        n381) );
  AND2X2 U1242 ( .A(n274), .B(n275), .Y(n130) );
  AOI222XL U1243 ( .A0(n730), .A1(\yi[1][9] ), .B0(\yi[6][9] ), .B1(n822), 
        .C0(\yi[0][9] ), .C1(n824), .Y(n274) );
  AOI221XL U1244 ( .A0(\yi[2][9] ), .A1(n231), .B0(\yi[3][9] ), .B1(n232), 
        .C0(n276), .Y(n275) );
  AO22X1 U1245 ( .A0(n727), .A1(\yi[5][9] ), .B0(n866), .B1(\yi[4][9] ), .Y(
        n276) );
  OAI221XL U1246 ( .A0(n140), .A1(n848), .B0(n851), .B1(n903), .C0(n312), .Y(
        n499) );
  OAI221XL U1247 ( .A0(n140), .A1(n860), .B0(n863), .B1(n903), .C0(n286), .Y(
        n479) );
  OAI221XL U1248 ( .A0(n149), .A1(n848), .B0(n851), .B1(n810), .C0(n321), .Y(
        n508) );
  OAI221XL U1249 ( .A0(n149), .A1(n860), .B0(n863), .B1(n810), .C0(n295), .Y(
        n488) );
  OAI221XL U1250 ( .A0(n148), .A1(n849), .B0(n851), .B1(n910), .C0(n320), .Y(
        n507) );
  OAI221XL U1251 ( .A0(n148), .A1(n861), .B0(n863), .B1(n910), .C0(n294), .Y(
        n487) );
  OAI221XL U1252 ( .A0(n147), .A1(n850), .B0(n851), .B1(n811), .C0(n319), .Y(
        n506) );
  OAI221XL U1253 ( .A0(n147), .A1(n862), .B0(n863), .B1(n811), .C0(n293), .Y(
        n486) );
  OAI221XL U1254 ( .A0(n146), .A1(n850), .B0(n851), .B1(n909), .C0(n318), .Y(
        n505) );
  OAI221XL U1255 ( .A0(n146), .A1(n862), .B0(n863), .B1(n909), .C0(n292), .Y(
        n485) );
  OAI221XL U1256 ( .A0(n145), .A1(n848), .B0(n851), .B1(n908), .C0(n317), .Y(
        n504) );
  OAI221XL U1257 ( .A0(n145), .A1(n860), .B0(n863), .B1(n908), .C0(n291), .Y(
        n484) );
  OAI221XL U1258 ( .A0(n144), .A1(n848), .B0(n851), .B1(n907), .C0(n316), .Y(
        n503) );
  OAI221XL U1259 ( .A0(n144), .A1(n860), .B0(n863), .B1(n907), .C0(n290), .Y(
        n483) );
  OAI221XL U1260 ( .A0(n143), .A1(n849), .B0(n851), .B1(n906), .C0(n315), .Y(
        n502) );
  OAI221XL U1261 ( .A0(n143), .A1(n861), .B0(n863), .B1(n906), .C0(n289), .Y(
        n482) );
  OAI221XL U1262 ( .A0(n142), .A1(n850), .B0(n851), .B1(n905), .C0(n314), .Y(
        n501) );
  OAI221XL U1263 ( .A0(n142), .A1(n862), .B0(n863), .B1(n905), .C0(n288), .Y(
        n481) );
  OAI221XL U1264 ( .A0(n141), .A1(n849), .B0(n851), .B1(n904), .C0(n313), .Y(
        n500) );
  OAI221XL U1265 ( .A0(n141), .A1(n861), .B0(n863), .B1(n904), .C0(n287), .Y(
        n480) );
  OAI221XL U1266 ( .A0(n130), .A1(n861), .B0(n863), .B1(n911), .C0(n170), .Y(
        n409) );
  OAI221XL U1267 ( .A0(n139), .A1(n849), .B0(n920), .B1(n851), .C0(n208), .Y(
        n438) );
  OAI221XL U1268 ( .A0(n139), .A1(n861), .B0(n920), .B1(n863), .C0(n181), .Y(
        n418) );
  OAI221XL U1269 ( .A0(n130), .A1(n849), .B0(n911), .B1(n851), .C0(n198), .Y(
        n429) );
  OAI221XL U1270 ( .A0(n138), .A1(n850), .B0(n919), .B1(n851), .C0(n207), .Y(
        n437) );
  OAI221XL U1271 ( .A0(n138), .A1(n862), .B0(n919), .B1(n863), .C0(n180), .Y(
        n417) );
  OAI221XL U1272 ( .A0(n137), .A1(n850), .B0(n918), .B1(n851), .C0(n206), .Y(
        n436) );
  OAI221XL U1273 ( .A0(n137), .A1(n862), .B0(n918), .B1(n863), .C0(n179), .Y(
        n416) );
  OAI221XL U1274 ( .A0(n136), .A1(n848), .B0(n917), .B1(n851), .C0(n205), .Y(
        n435) );
  OAI221XL U1275 ( .A0(n136), .A1(n860), .B0(n917), .B1(n863), .C0(n178), .Y(
        n415) );
  OAI221XL U1276 ( .A0(n135), .A1(n848), .B0(n916), .B1(n851), .C0(n204), .Y(
        n434) );
  OAI221XL U1277 ( .A0(n135), .A1(n860), .B0(n916), .B1(n863), .C0(n177), .Y(
        n414) );
  OAI221XL U1278 ( .A0(n134), .A1(n849), .B0(n915), .B1(n851), .C0(n203), .Y(
        n433) );
  OAI221XL U1279 ( .A0(n134), .A1(n861), .B0(n915), .B1(n863), .C0(n176), .Y(
        n413) );
  OAI221XL U1280 ( .A0(n133), .A1(n850), .B0(n914), .B1(n851), .C0(n202), .Y(
        n432) );
  OAI221XL U1281 ( .A0(n133), .A1(n862), .B0(n914), .B1(n863), .C0(n175), .Y(
        n412) );
  OAI221XL U1282 ( .A0(n132), .A1(n849), .B0(n913), .B1(n851), .C0(n201), .Y(
        n431) );
  OAI221XL U1283 ( .A0(n132), .A1(n861), .B0(n913), .B1(n863), .C0(n174), .Y(
        n411) );
  OAI221XL U1284 ( .A0(n131), .A1(n848), .B0(n912), .B1(n851), .C0(n200), .Y(
        n430) );
  OAI221XL U1285 ( .A0(n131), .A1(n860), .B0(n912), .B1(n863), .C0(n173), .Y(
        n410) );
  CLKINVX1 U1286 ( .A(n323), .Y(n874) );
  NOR2X1 U1287 ( .A(cs[1]), .B(reset), .Y(n372) );
  OAI222XL U1288 ( .A0(n833), .A1(n885), .B0(n834), .B1(n810), .C0(n736), .C1(
        n943), .Y(n538) );
  CLKINVX1 U1289 ( .A(X[0]), .Y(n885) );
  OAI222XL U1290 ( .A0(n833), .A1(n884), .B0(n834), .B1(n910), .C0(n736), .C1(
        n942), .Y(n537) );
  CLKINVX1 U1291 ( .A(X[1]), .Y(n884) );
  OAI222XL U1292 ( .A0(n833), .A1(n883), .B0(n834), .B1(n811), .C0(n736), .C1(
        n941), .Y(n536) );
  CLKINVX1 U1293 ( .A(X[2]), .Y(n883) );
  OAI222XL U1294 ( .A0(n833), .A1(n882), .B0(n834), .B1(n909), .C0(n736), .C1(
        n940), .Y(n535) );
  CLKINVX1 U1295 ( .A(X[3]), .Y(n882) );
  OAI222XL U1296 ( .A0(n833), .A1(n881), .B0(n834), .B1(n908), .C0(n736), .C1(
        n939), .Y(n534) );
  CLKINVX1 U1297 ( .A(X[4]), .Y(n881) );
  OAI222XL U1298 ( .A0(n833), .A1(n880), .B0(n834), .B1(n907), .C0(n736), .C1(
        n938), .Y(n533) );
  CLKINVX1 U1299 ( .A(X[5]), .Y(n880) );
  OAI222XL U1300 ( .A0(n833), .A1(n879), .B0(n834), .B1(n906), .C0(n736), .C1(
        n937), .Y(n532) );
  CLKINVX1 U1301 ( .A(X[6]), .Y(n879) );
  OAI222XL U1302 ( .A0(n833), .A1(n878), .B0(n834), .B1(n905), .C0(n736), .C1(
        n936), .Y(n531) );
  CLKINVX1 U1303 ( .A(X[7]), .Y(n878) );
  OAI222XL U1304 ( .A0(n833), .A1(n877), .B0(n834), .B1(n904), .C0(n736), .C1(
        n935), .Y(n530) );
  CLKINVX1 U1305 ( .A(X[8]), .Y(n877) );
  OAI222XL U1306 ( .A0(n833), .A1(n876), .B0(n834), .B1(n903), .C0(n736), .C1(
        n934), .Y(n529) );
  CLKINVX1 U1307 ( .A(X[9]), .Y(n876) );
  OAI222XL U1308 ( .A0(n895), .A1(n833), .B0(n920), .B1(n834), .C0(n736), .C1(
        n933), .Y(n468) );
  CLKINVX1 U1309 ( .A(Y[0]), .Y(n895) );
  OAI222XL U1310 ( .A0(n894), .A1(n833), .B0(n919), .B1(n834), .C0(n736), .C1(
        n932), .Y(n467) );
  CLKINVX1 U1311 ( .A(Y[1]), .Y(n894) );
  OAI222XL U1312 ( .A0(n893), .A1(n833), .B0(n918), .B1(n834), .C0(n736), .C1(
        n931), .Y(n466) );
  CLKINVX1 U1313 ( .A(Y[2]), .Y(n893) );
  OAI222XL U1314 ( .A0(n892), .A1(n833), .B0(n917), .B1(n834), .C0(n736), .C1(
        n930), .Y(n465) );
  CLKINVX1 U1315 ( .A(Y[3]), .Y(n892) );
  OAI222XL U1316 ( .A0(n891), .A1(n833), .B0(n916), .B1(n834), .C0(n736), .C1(
        n929), .Y(n464) );
  CLKINVX1 U1317 ( .A(Y[4]), .Y(n891) );
  OAI222XL U1318 ( .A0(n890), .A1(n833), .B0(n915), .B1(n834), .C0(n736), .C1(
        n928), .Y(n463) );
  CLKINVX1 U1319 ( .A(Y[5]), .Y(n890) );
  OAI222XL U1320 ( .A0(n889), .A1(n833), .B0(n914), .B1(n834), .C0(n736), .C1(
        n927), .Y(n462) );
  CLKINVX1 U1321 ( .A(Y[6]), .Y(n889) );
  OAI222XL U1322 ( .A0(n888), .A1(n833), .B0(n913), .B1(n834), .C0(n736), .C1(
        n926), .Y(n461) );
  CLKINVX1 U1323 ( .A(Y[7]), .Y(n888) );
  OAI222XL U1324 ( .A0(n887), .A1(n833), .B0(n912), .B1(n834), .C0(n736), .C1(
        n925), .Y(n460) );
  CLKINVX1 U1325 ( .A(Y[8]), .Y(n887) );
  OAI222XL U1326 ( .A0(n886), .A1(n833), .B0(n911), .B1(n834), .C0(n736), .C1(
        n924), .Y(n459) );
  CLKINVX1 U1327 ( .A(Y[9]), .Y(n886) );
  OAI221XL U1328 ( .A0(n140), .A1(n828), .B0(n831), .B1(n903), .C0(n376), .Y(
        n539) );
  OAI221XL U1329 ( .A0(n140), .A1(n836), .B0(n837), .B1(n903), .C0(n336), .Y(
        n519) );
  OAI221XL U1330 ( .A0(n140), .A1(n841), .B0(n845), .B1(n903), .C0(n325), .Y(
        n509) );
  OAI221XL U1331 ( .A0(n140), .A1(n853), .B0(n856), .B1(n903), .C0(n300), .Y(
        n489) );
  OAI221XL U1332 ( .A0(n149), .A1(n836), .B0(n837), .B1(n810), .C0(n369), .Y(
        n528) );
  OAI221XL U1333 ( .A0(n149), .A1(n841), .B0(n845), .B1(n810), .C0(n334), .Y(
        n518) );
  OAI221XL U1334 ( .A0(n149), .A1(n853), .B0(n856), .B1(n810), .C0(n309), .Y(
        n498) );
  OAI221XL U1335 ( .A0(n149), .A1(n829), .B0(n831), .B1(n810), .C0(n285), .Y(
        n478) );
  OAI221XL U1336 ( .A0(n148), .A1(n836), .B0(n837), .B1(n910), .C0(n365), .Y(
        n527) );
  OAI221XL U1337 ( .A0(n148), .A1(n842), .B0(n844), .B1(n910), .C0(n333), .Y(
        n517) );
  OAI221XL U1338 ( .A0(n148), .A1(n854), .B0(n856), .B1(n910), .C0(n308), .Y(
        n497) );
  OAI221XL U1339 ( .A0(n148), .A1(n830), .B0(n831), .B1(n910), .C0(n284), .Y(
        n477) );
  OAI221XL U1340 ( .A0(n147), .A1(n836), .B0(n837), .B1(n811), .C0(n361), .Y(
        n526) );
  OAI221XL U1341 ( .A0(n147), .A1(n843), .B0(n846), .B1(n811), .C0(n332), .Y(
        n516) );
  OAI221XL U1342 ( .A0(n147), .A1(n855), .B0(n856), .B1(n811), .C0(n307), .Y(
        n496) );
  OAI221XL U1343 ( .A0(n147), .A1(n830), .B0(n831), .B1(n811), .C0(n283), .Y(
        n476) );
  OAI221XL U1344 ( .A0(n146), .A1(n836), .B0(n837), .B1(n909), .C0(n357), .Y(
        n525) );
  OAI221XL U1345 ( .A0(n146), .A1(n843), .B0(n846), .B1(n909), .C0(n331), .Y(
        n515) );
  OAI221XL U1346 ( .A0(n146), .A1(n855), .B0(n856), .B1(n909), .C0(n306), .Y(
        n495) );
  OAI221XL U1347 ( .A0(n146), .A1(n828), .B0(n831), .B1(n909), .C0(n282), .Y(
        n475) );
  OAI221XL U1348 ( .A0(n145), .A1(n836), .B0(n837), .B1(n908), .C0(n353), .Y(
        n524) );
  OAI221XL U1349 ( .A0(n145), .A1(n841), .B0(n845), .B1(n908), .C0(n330), .Y(
        n514) );
  OAI221XL U1350 ( .A0(n145), .A1(n853), .B0(n856), .B1(n908), .C0(n305), .Y(
        n494) );
  OAI221XL U1351 ( .A0(n145), .A1(n828), .B0(n831), .B1(n908), .C0(n281), .Y(
        n474) );
  OAI221XL U1352 ( .A0(n144), .A1(n836), .B0(n837), .B1(n907), .C0(n349), .Y(
        n523) );
  OAI221XL U1353 ( .A0(n144), .A1(n841), .B0(n844), .B1(n907), .C0(n329), .Y(
        n513) );
  OAI221XL U1354 ( .A0(n144), .A1(n853), .B0(n856), .B1(n907), .C0(n304), .Y(
        n493) );
  OAI221XL U1355 ( .A0(n144), .A1(n829), .B0(n831), .B1(n907), .C0(n280), .Y(
        n473) );
  OAI221XL U1356 ( .A0(n143), .A1(n836), .B0(n837), .B1(n906), .C0(n345), .Y(
        n522) );
  OAI221XL U1357 ( .A0(n143), .A1(n842), .B0(n844), .B1(n906), .C0(n328), .Y(
        n512) );
  OAI221XL U1358 ( .A0(n143), .A1(n854), .B0(n856), .B1(n906), .C0(n303), .Y(
        n492) );
  OAI221XL U1359 ( .A0(n143), .A1(n830), .B0(n831), .B1(n906), .C0(n279), .Y(
        n472) );
  OAI221XL U1360 ( .A0(n142), .A1(n836), .B0(n837), .B1(n905), .C0(n341), .Y(
        n521) );
  OAI221XL U1361 ( .A0(n142), .A1(n843), .B0(n846), .B1(n905), .C0(n327), .Y(
        n511) );
  OAI221XL U1362 ( .A0(n142), .A1(n855), .B0(n856), .B1(n905), .C0(n302), .Y(
        n491) );
  OAI221XL U1363 ( .A0(n142), .A1(n829), .B0(n831), .B1(n905), .C0(n278), .Y(
        n471) );
  OAI221XL U1364 ( .A0(n141), .A1(n836), .B0(n837), .B1(n904), .C0(n337), .Y(
        n520) );
  OAI221XL U1365 ( .A0(n141), .A1(n842), .B0(n845), .B1(n904), .C0(n326), .Y(
        n510) );
  OAI221XL U1366 ( .A0(n141), .A1(n854), .B0(n856), .B1(n904), .C0(n301), .Y(
        n490) );
  OAI221XL U1367 ( .A0(n141), .A1(n828), .B0(n831), .B1(n904), .C0(n277), .Y(
        n470) );
  OAI221XL U1368 ( .A0(n130), .A1(n829), .B0(n831), .B1(n911), .C0(n273), .Y(
        n469) );
  OAI221XL U1369 ( .A0(n139), .A1(n830), .B0(n831), .B1(n920), .C0(n167), .Y(
        n408) );
  OAI221XL U1370 ( .A0(n138), .A1(n830), .B0(n831), .B1(n919), .C0(n166), .Y(
        n407) );
  OAI221XL U1371 ( .A0(n137), .A1(n828), .B0(n831), .B1(n918), .C0(n165), .Y(
        n406) );
  OAI221XL U1372 ( .A0(n136), .A1(n828), .B0(n831), .B1(n917), .C0(n164), .Y(
        n405) );
  OAI221XL U1373 ( .A0(n135), .A1(n829), .B0(n831), .B1(n916), .C0(n163), .Y(
        n404) );
  OAI221XL U1374 ( .A0(n134), .A1(n830), .B0(n831), .B1(n915), .C0(n162), .Y(
        n403) );
  OAI221XL U1375 ( .A0(n133), .A1(n829), .B0(n831), .B1(n914), .C0(n161), .Y(
        n402) );
  OAI221XL U1376 ( .A0(n132), .A1(n828), .B0(n831), .B1(n913), .C0(n160), .Y(
        n401) );
  OAI221XL U1377 ( .A0(n131), .A1(n829), .B0(n831), .B1(n912), .C0(n157), .Y(
        n400) );
  OAI221XL U1378 ( .A0(n139), .A1(n836), .B0(n920), .B1(n837), .C0(n266), .Y(
        n458) );
  OAI221XL U1379 ( .A0(n139), .A1(n842), .B0(n920), .B1(n844), .C0(n222), .Y(
        n448) );
  OAI221XL U1380 ( .A0(n139), .A1(n854), .B0(n920), .B1(n856), .C0(n195), .Y(
        n428) );
  OAI221XL U1381 ( .A0(n130), .A1(n836), .B0(n911), .B1(n837), .C0(n225), .Y(
        n449) );
  OAI221XL U1382 ( .A0(n130), .A1(n842), .B0(n911), .B1(n844), .C0(n211), .Y(
        n439) );
  OAI221XL U1383 ( .A0(n130), .A1(n854), .B0(n911), .B1(n856), .C0(n184), .Y(
        n419) );
  OAI221XL U1384 ( .A0(n138), .A1(n836), .B0(n919), .B1(n837), .C0(n262), .Y(
        n457) );
  OAI221XL U1385 ( .A0(n138), .A1(n843), .B0(n919), .B1(n846), .C0(n221), .Y(
        n447) );
  OAI221XL U1386 ( .A0(n138), .A1(n855), .B0(n919), .B1(n856), .C0(n194), .Y(
        n427) );
  OAI221XL U1387 ( .A0(n137), .A1(n836), .B0(n918), .B1(n837), .C0(n258), .Y(
        n456) );
  OAI221XL U1388 ( .A0(n137), .A1(n843), .B0(n918), .B1(n846), .C0(n220), .Y(
        n446) );
  OAI221XL U1389 ( .A0(n137), .A1(n855), .B0(n918), .B1(n856), .C0(n193), .Y(
        n426) );
  OAI221XL U1390 ( .A0(n136), .A1(n836), .B0(n917), .B1(n837), .C0(n254), .Y(
        n455) );
  OAI221XL U1391 ( .A0(n136), .A1(n841), .B0(n917), .B1(n845), .C0(n219), .Y(
        n445) );
  OAI221XL U1392 ( .A0(n136), .A1(n853), .B0(n917), .B1(n856), .C0(n192), .Y(
        n425) );
  OAI221XL U1393 ( .A0(n135), .A1(n836), .B0(n916), .B1(n837), .C0(n250), .Y(
        n454) );
  OAI221XL U1394 ( .A0(n135), .A1(n841), .B0(n916), .B1(n844), .C0(n218), .Y(
        n444) );
  OAI221XL U1395 ( .A0(n135), .A1(n853), .B0(n916), .B1(n856), .C0(n191), .Y(
        n424) );
  OAI221XL U1396 ( .A0(n134), .A1(n836), .B0(n915), .B1(n837), .C0(n246), .Y(
        n453) );
  OAI221XL U1397 ( .A0(n134), .A1(n842), .B0(n915), .B1(n844), .C0(n217), .Y(
        n443) );
  OAI221XL U1398 ( .A0(n134), .A1(n854), .B0(n915), .B1(n856), .C0(n190), .Y(
        n423) );
  OAI221XL U1399 ( .A0(n133), .A1(n836), .B0(n914), .B1(n837), .C0(n242), .Y(
        n452) );
  OAI221XL U1400 ( .A0(n133), .A1(n843), .B0(n914), .B1(n846), .C0(n216), .Y(
        n442) );
  OAI221XL U1401 ( .A0(n133), .A1(n855), .B0(n914), .B1(n856), .C0(n189), .Y(
        n422) );
  OAI221XL U1402 ( .A0(n132), .A1(n836), .B0(n913), .B1(n837), .C0(n238), .Y(
        n451) );
  OAI221XL U1403 ( .A0(n132), .A1(n842), .B0(n913), .B1(n845), .C0(n215), .Y(
        n441) );
  OAI221XL U1404 ( .A0(n132), .A1(n854), .B0(n913), .B1(n856), .C0(n188), .Y(
        n421) );
  OAI221XL U1405 ( .A0(n131), .A1(n836), .B0(n912), .B1(n837), .C0(n228), .Y(
        n450) );
  OAI221XL U1406 ( .A0(n131), .A1(n841), .B0(n912), .B1(n845), .C0(n214), .Y(
        n440) );
  OAI221XL U1407 ( .A0(n131), .A1(n853), .B0(n912), .B1(n856), .C0(n187), .Y(
        n420) );
  OAI221XL U1408 ( .A0(counter[0]), .A1(n382), .B0(n868), .B1(n923), .C0(n383), 
        .Y(n540) );
  NAND3X1 U1409 ( .A(sorting_counter[0]), .B(n378), .C(sorting_counter[1]), 
        .Y(n383) );
  NOR2X1 U1410 ( .A(n108), .B(sorting_counter[1]), .Y(n390) );
  OAI211X1 U1411 ( .A0(n921), .A1(n152), .B0(n154), .C0(n384), .Y(n541) );
  CLKINVX1 U1412 ( .A(n391), .Y(n921) );
  NAND2X1 U1413 ( .A(n386), .B(n387), .Y(n385) );
  OAI22XL U1414 ( .A0(n101), .A1(n923), .B0(n382), .B1(n395), .Y(n543) );
  OAI32X1 U1415 ( .A0(n107), .A1(n922), .A2(n108), .B0(n30), .B1(n152), .Y(
        ns[1]) );
  NOR2X1 U1416 ( .A(sorting_counter[0]), .B(sorting_counter[1]), .Y(n389) );
  OAI22XL U1417 ( .A0(n386), .A1(n922), .B0(n398), .B1(n107), .Y(n544) );
  NOR2X1 U1418 ( .A(n388), .B(n922), .Y(n398) );
  OAI22XL U1419 ( .A0(n399), .A1(n922), .B0(n378), .B1(n108), .Y(n545) );
  AOI222XL U1420 ( .A0(n389), .A1(n822), .B0(n390), .B1(n897), .C0(n867), .C1(
        n388), .Y(n399) );
  OAI21XL U1421 ( .A0(n153), .A1(n922), .B0(n154), .Y(ns[0]) );
  NOR2X1 U1422 ( .A(n108), .B(n107), .Y(n153) );
  INVX3 U1423 ( .A(reset), .Y(n875) );
  AOI2BB2XL U1424 ( .B0(n378), .B1(n385), .A0N(n923), .A1N(n105), .Y(n384) );
  OAI32XL U1425 ( .A0(n299), .A1(n324), .A2(n105), .B0(n775), .B1(n297), .Y(
        n323) );
  NAND3BXL U1426 ( .AN(is_inside), .B(n870), .C(cs[1]), .Y(N731) );
endmodule

