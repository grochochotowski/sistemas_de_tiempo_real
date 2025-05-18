with Ada.Text_IO; use Ada.Text_IO;

package body MD_Control is
   procedure Run is
   begin
      Put_Line("[MD] T1: Read sensors (ST2, ST3)");
      Put_Line("[MD] T2: Compute control signal SC2");
      Put_Line("[MD] T3: Send SC2 to actuator");
      Put_Line("[MD] T4: Send data to display and storage");
   end Run;
end MD_Control;
