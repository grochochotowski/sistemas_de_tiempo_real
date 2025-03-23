with All_Types; use All_Types;
package Calculate_Optimal_Control is
   procedure Calculate_Optimal_State(
                                     Sensor : in  Sensor_Data;
                                     Prev_State : in  Control_State;
                                     New_State : out Control_State);
end Calculate_Optimal_Control;
