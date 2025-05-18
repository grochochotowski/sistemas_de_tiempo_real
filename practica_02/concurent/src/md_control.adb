with Ada.Text_IO;       use Ada.Text_IO;
with Ada.Real_Time;     use Ada.Real_Time;
with Shared;            use Shared;
with AD_Converter;
with Data_Storage;
with Display;

package body MD_Control is
   task body MD_Task is
      Period : constant Time_Span := Milliseconds(100);
      Next_Release : Time := Clock;
   begin
      loop
         delay until Next_Release;
         Next_Release := Next_Release + Period;

         AD_Converter.AD_Task.Read("ST2, ST3");
         Put_Line("[MD] Compute SC2");
         AD_Converter.AD_Task.Write("SC2");
         Display.Display_Task.Show("MD: Updated");
         Data_Storage.Logger.Log("MD data saved");
      end loop;
   end MD_Task;
end MD_Control;
