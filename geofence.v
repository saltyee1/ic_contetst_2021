module geofence ( clk,reset,X,Y,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
output valid;
output is_inside;
// reg valid;
// reg is_inside;

parameter LOAD = 2'd0;
parameter SORT = 2'd1;
parameter CHECK = 2'd2;
//integer i;

reg [9:0] xi [0:6];
reg [9:0] yi [0:6];
reg [1:0] cs,ns;
reg in_reg;
reg [3:0] counter; 
reg [1:0] sorting_counter;
reg [9:0] x0, x1, x2, xb;
reg [9:0] y0, y1, y2, yb;
reg signed [20:0] temp1;
reg signed [20:0] temp2;
reg signed [20:0] cross_result;



wire counter_6 = (counter == 4'd6); 

assign valid = (counter_6 && cs == CHECK) ? 1'b1 : 1'b0;
assign is_inside = in_reg & (~cross_result[20]); // in_reg(past) was positive / cross_result(current) is positive 


//FSM
always @(posedge clk or posedge reset) begin
    if(reset) begin
        cs <= LOAD;
    end
    else begin
        cs <= ns;
    end
end

//next state logic
always @(*) begin
    case (cs)
        LOAD : ns = (counter_6) ? SORT : LOAD;
        SORT : ns = (sorting_counter == 2'd3) ? CHECK : SORT;
        CHECK : ns = (counter_6) ? LOAD : CHECK; 
        default: ns = LOAD;
    endcase
end

always @(posedge clk) begin
    // if (reset) begin
    //     for (i=0 ; i<7 ; i=i+1) begin
    //         xi[i] <= 10'd0;
    //         yi[i] <= 10'd0;
    //     end 
    // end
    //else begin
    if (!reset) begin
        case (cs)
            LOAD : begin
                xi[counter] <= X;
                yi[counter] <= Y;
            end
            SORT : begin
                if (cross_result[20]) begin
                    xi[counter] <= xi[counter + 4'd1];
                    xi[counter + 4'd1] <= xi[counter];
                    yi[counter] <= yi[counter + 4'd1];
                    yi[counter + 4'd1] <= yi[counter];
                end
            end
            // default: begin
            //     for (i=0 ; i<7 ; i=i+1) begin
            //         xi[i] <= xi[i];
            //         yi[i] <= yi[i];
            //     end
            // end 
        endcase
    end
    
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        in_reg <= 1'b1;
    end
    else if (cs == CHECK) begin
        in_reg <= (cross_result[20]) ? 1'b0 : in_reg;
    end
    else begin
        in_reg <= 1'b1;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter <= 4'd0;
        sorting_counter <= 2'd0;
    end
    else begin
        case (cs)
            LOAD : counter <= (counter_6) ? 4'd2 : counter + 4'd1;
            SORT : begin 
                case (sorting_counter) //bubble sort
                    2'd0 : begin 
                        counter <= (counter == 4'd5) ? 4'd2 : counter + 4'd1;
                        sorting_counter <= (counter == 4'd5) ? 2'd1 : sorting_counter;  //////
                    end
                    2'd1 : begin
                        counter <= (counter == 4'd4) ? 4'd2 : counter + 4'd1;
                        sorting_counter <= (counter == 4'd4) ? 2'd2 : sorting_counter;  //////
                    end
                    2'd2 : begin
                        counter <= (counter == 4'd3) ? 4'd2 : counter + 4'd1;
                        sorting_counter <= (counter == 4'd3) ? 2'd3 : sorting_counter;  //////
                    end
                    2'd3 : begin
                        counter <= 4'd1;
                        sorting_counter <= 2'd0;  //////
                    end
                endcase
            end
            CHECK : counter <= (counter_6) ? 4'd0 : counter + 4'd1;
            default : begin 
                counter <= counter;
                sorting_counter <= sorting_counter;
            end
        endcase
    end
end

//wire [2:0] counter_2 = counter + 4'd2;

always @(*) begin
    case (cs)
        // LOAD : begin
        //     x0 = 10'dx;
        //     x1 = 10'dx;
        //     x2 = 10'dx;
        //     xb = 10'dx;
        //     y0 = 10'dx;
        //     y1 = 10'dx;
        //     y2 = 10'dx;
        //     yb = 10'dx;
        // end 
        SORT : begin
            x0 = xi[1];
            x1 = xi[counter]; 
            x2 = xi[counter + 4'd1];
            xb = x0;                        //(x1-x0)(y2-y0)-(x2-x0)(y1-y0)
            y0 = yi[1];
            y1 = yi[counter];
            y2 = yi[counter + 4'd1];
            yb = y0;
        end
        CHECK : begin
            x0 = xi[0];
            x1 = xi[counter];
            x2 = (counter_6) ? xi[1] : xi[counter + 4'd1];
            xb = x1;                        //(x1-x0)(y2-y1)-(x2-x1)(y1-y0)
            y0 = yi[0];
            y1 = yi[counter];
            y2 = (counter_6) ? yi[1] : yi[counter + 4'd1];
            yb = y1;
        end
        default : begin
            x0 = 10'dx;
            x1 = 10'dx;
            x2 = 10'dx;
            xb = 10'dx;
            y0 = 10'dx;
            y1 = 10'dx;
            y2 = 10'dx;
            yb = 10'dx;
        end 
    endcase
end


//cross_result calculation
// always @(*) begin
//     temp1 = ($signed({1'b0,x1}) - $signed({1'b0,x0})) * ($signed({1'b0,y2}) - $signed({1'b0,yb}));
//     temp2 = ($signed({1'b0,y1}) - $signed({1'b0,y0})) * ($signed({1'b0,x2}) - $signed({1'b0,xb}));
//     cross_result = temp1 - temp2;
// end
always @(*) begin
    temp1 = ({1'b0,x1} - {1'b0,x0}) * ({1'b0,y2} - {1'b0,yb});
    temp2 = ({1'b0,y1} - {1'b0,y0}) * ({1'b0,x2} - {1'b0,xb});
    cross_result = temp1 - temp2;
end


endmodule

