module geofence ( clk,reset,X,Y,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
output valid;
output is_inside;
//reg valid;
//reg is_inside;

parameter LOAD = 2'd0;
parameter SORT = 2'd1;
parameter CHECK = 2'd2;
integer i;

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
wire sort_done,load_done,check_done;

assign valid = (counter == 3'd5 && cs == CHECK) ? 1'b1 : 1'b0;
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
        LOAD : ns = (counter == 3'd6) ? SORT : LOAD;
        SORT : ns = (sorting_counter == 2'd3) ? CHECK : SORT;
        CHECK : ns = (counter == 3'd5) ? LOAD : CHECK; 
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
                if (cross_result[20] == 1'b1) begin
                    xi[counter + 3'd2] <= xi[counter + 3'd3];
                    xi[counter + 3'd3] <= xi[counter + 3'd2];
                    yi[counter + 3'd2] <= yi[counter + 3'd3];
                    yi[counter + 3'd3] <= yi[counter + 3'd2];
                end
            end
            default: begin
                for (i=0 ; i<7 ; i=i+1) begin
                    xi[i] <= xi[i];
                    yi[i] <= yi[i];
                end
            end 
        endcase
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        in_reg <= 1'b1;
    end
    else if (cs == CHECK) begin
        in_reg <= (cross_result[20] == 1'b0) ? in_reg : 1'b0;
    end
    else begin
        in_reg <= 1'b1;
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter <= 3'd0;
        sorting_counter <= 2'd0;
    end
    else begin
        case (cs)
            LOAD : counter <= (counter == 3'd6) ? 3'd0 : counter + 3'd1;
            SORT : begin 
                case (sorting_counter) //bubble sort
                    2'd0 : begin 
                        counter <= (counter == 3'd3) ? 3'd0 : counter + 3'd1;
                        sorting_counter <= (counter == 3'd3) ? 2'd1 : sorting_counter;  //////
                    end
                    2'd1 : begin
                        counter <= (counter == 3'd2) ? 3'd0 : counter + 3'd1;
                        sorting_counter <= (counter == 3'd2) ? 2'd2 : sorting_counter;  //////
                    end
                    2'd2 : begin
                        counter <= (counter == 3'd1) ? 3'd0 : counter + 3'd1;
                        sorting_counter <= (counter == 3'd1) ? 2'd3 : sorting_counter;  //////
                    end
                    2'd3 : begin
                        counter <= 3'd0;
                        sorting_counter <= 2'd0;  //////
                    end
                endcase
            end
            CHECK : counter <= (counter == 3'd5) ? 3'd0 : counter + 3'd1;
            default : counter <= counter;
        endcase
    end
end

always @(*) begin
    case (cs)
        LOAD : begin
            x0 = 10'd0;
            x1 = 10'd0;
            x2 = 10'd0;
            xb = 10'd0;
            y0 = 10'd0;
            y1 = 10'd0;
            y2 = 10'd0;
            yb = 10'd0;
        end 
        SORT : begin
            x0 = xi[1];
            x1 = xi[counter + 3'd2];
            x2 = xi[counter + 3'd3];
            xb = x0;                        //(x1-x0)(y2-y0)-(x2-x0)(y1-y0)
            y0 = yi[1];
            y1 = yi[counter + 3'd2];
            y2 = yi[counter + 3'd3];
            yb = y0;
        end
        CHECK : begin
            x0 = xi[0];
            x1 = xi[counter + 3'd1];
            x2 = (counter == 3'd5) ? xi[1] : xi[counter + 3'd2];
            xb = x1;                        //(x1-x0)(y2-y1)-(x2-x1)(y1-y0)
            y0 = yi[0];
            y1 = yi[counter + 3'd1];
            y2 = (counter == 3'd5) ? yi[1] : yi[counter + 3'd2];
            yb = y1;
        end
        default : begin
            x0 = 10'd0;
            x1 = 10'd0;
            x2 = 10'd0;
            xb = 10'd0;
            y0 = 10'd0;
            y1 = 10'd0;
            y2 = 10'd0;
            yb = 10'd0;
        end 
    endcase
end


// cross_result calculation
always @(*) begin
    temp1 = ($signed({1'b0,x1}) - $signed({1'b0,x0})) * ($signed({1'b0,y2}) - $signed({1'b0,yb}));
    temp2 = ($signed({1'b0,y1}) - $signed({1'b0,y0})) * ($signed({1'b0,x2}) - $signed({1'b0,xb}));
    cross_result = temp1 - temp2;
end


endmodule

