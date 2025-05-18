with Ada.Text_IO;       use Ada.Text_IO;
with Ada.Real_Time;     use Ada.Real_Time;
with Shared;            use Shared;
with AD_Converter;
with Data_Storage;
with Display;

package body Solar_Control is
   task body Solar_Task is
      Period : constant Time_Span := Milliseconds(50);
      Next_Release : Time := Clock;
   begin
      loop
         delay until Next_Release;
         Next_Release := Next_Release + Period;

         AD_Converter.AD_Task.Read("ST1, ST4, SR1");
         Put_Line("[Solar] Compute SC1");
         AD_Converter.AD_Task.Write("SC1");
         Display.Display_Task.Show("Solar: Updated");
         Data_Storage.Logger.Log("Solar data saved");

      end loop;
   end Solar_Task;
end Solar_Control;
