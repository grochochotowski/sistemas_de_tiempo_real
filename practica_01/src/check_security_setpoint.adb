with Ada.Directories; use Ada.Directories;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with All_Types; use All_Types;

package body Check_Security_Setpoint is
   procedure Check_Security(State : in Control_State; Iteration : in Integer) is
      Alarm_File : File_Type;
   begin
      -- Check temperature
      if State.ST2 > 95.0 then
         -- Show error on screen
         Put_Line("ALARM: ST2 exceeds 95°C at iteration " & Integer'Image(Iteration));

         -- Log error to error_log.txt
         Open(Alarm_File, Append_File, "src/alarm_log.txt");
         Put_Line(Alarm_File, "ALARM: ST2 exceeds 95°C at iteration " & Integer'Image(Iteration));
         Close(Alarm_File);
      end if;
   end Check_Security;
end Check_Security_Setpoint;
