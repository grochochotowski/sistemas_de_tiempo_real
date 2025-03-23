with All_Types; use All_Types;

package Write_On_Data_Log is
   procedure Write_Log(
                       Iteration : in Integer;
                       State : in Control_State;
                       Sensor : in Sensor_Data);
end Write_On_Data_Log;
