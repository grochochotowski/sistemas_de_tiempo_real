with All_Types; use All_Types;

package Calculate_Control_Signal is
   procedure Calculate_State(
                             Sensor : in  Sensor_Data;
                             Prev_State : in  Control_State;
                             New_State : out Control_State);
end Calculate_Control_Signal;
