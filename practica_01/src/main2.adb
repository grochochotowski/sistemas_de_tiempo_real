with Ada.Text_IO; use Ada.Text_IO;
with Read_Data;
with Calculate_Optimal_Control;
with Check_Security_Setpoint;
with Show_On_Screen;
with Write_On_Data_Log;
with Global_Flags; use Global_Flags;
with All_Types; use All_Types;

procedure Main2 is
   Sensor      : Sensor_Data;
   Prev_State, New_State : Control_State;
   File_Sensor : File_Type;
   Iteration   : Integer := 0;
begin
   
end Main2;
