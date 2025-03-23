with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Read_Data;
with Calculate_Control_Signal;
with Check_Security_Setpoint;
with Show_On_Screen;
with Write_On_Data_Log;
with All_Types; use All_Types;
with Global_Flags; use Global_Flags;

package body Simulate is
   procedure Run is
      Sensor : Sensor_Data;
      Prev_State, New_State : Control_State;
      File_Sensor : File_Type;
      Iteration : Integer := 0;
      Alarm_File : File_Type;

   begin
      -- Initialize initial values
      Prev_State.ST1 := 48.0;
      Prev_State.ST2 := 58.0;
      Prev_State.SD1 := 0.0;

      -- Create error_log file
      Create(Alarm_File, Out_File, "alarm_log.txt");
      Close(Alarm_File);

      -- Open input file
      Open(File_Sensor, In_File, "input.txt");

      while not End_Of_File(File_Sensor) loop
         Iteration := Iteration + 1;

         -- Read row
         Read_Data.Read_Row(File_Sensor, Sensor);

         -- Check if row is not empty
         if Stop_Simulation then
            exit;
         end if;

         -- Calculate new control state
         Calculate_Control_Signal.Calculate_State(Sensor, Prev_State, New_State);

         -- Check security setpoint
         Check_Security_Setpoint.Check_Security(New_State, Iteration);

         -- Display on screen
         Show_On_Screen.Display_State(New_State, Sensor);

         -- Write data log
         Write_On_Data_Log.Write_Log(Iteration, New_State, Sensor);

         -- Update previous state for the next iteration.
         Prev_State := New_State;

      end loop;

      Close(File_Sensor);
      Put_Line("Simulation complete.");
   end Run;
end Simulate;
