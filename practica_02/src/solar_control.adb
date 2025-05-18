with Ada.Text_IO; use Ada.Text_IO;

package body Solar_Control is
   procedure Run is
   begin
      Put_Line("[Solar] T1: Read sensors (ST1, ST4, SR1)");
      Put_Line("[Solar] T2: Compute control signal SC1");
      Put_Line("[Solar] T3: Send SC1 to actuator");
      Put_Line("[Solar] T4: Send data to display and storage");
   end Run;
end Solar_Control;
