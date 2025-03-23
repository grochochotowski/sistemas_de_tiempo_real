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
   -- Initialize control state with initial values.
   Prev_State.ST1 := 48.0;
   Prev_State.ST2 := 58.0;
   Prev_State.SD1 := 0.0;

   Open(File_Sensor, In_File, "input.txt");

   while not End_Of_File(File_Sensor) loop
      
      -- Check if lines are not empty
      if Stop_Simulation then
         exit;
      end if;
      Iteration := Iteration + 1;

      -- Check if it is not en of the file
      Read_Data.Read_Row(File_Sensor, Sensor);
      if End_Of_File(File_Sensor) then
         exit;
      end if;

      -- Calculate optimal control state
      Calculate_Optimal_Control.Calculate_Optimal_State(Sensor, Prev_State, New_State);

      -- Check security setpoint
      Check_Security_Setpoint.Check_Security(New_State, Iteration);

      -- Display results on screen
      Show_On_Screen.Display_State(New_State, Sensor);

      -- Write log for the iteration
      Write_On_Data_Log.Write_Log(Iteration, New_State, Sensor);

      -- Update previous state
      Prev_State := New_State;
   end loop;

   Close(File_Sensor);
   Put_Line("Simulation complete.");
end Main2;
