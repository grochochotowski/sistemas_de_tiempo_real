with Ada.Text_IO; use Ada.Text_IO;

package body Security_Check is
   procedure Run is
   begin
      Put_Line("[SEC] T1: Read sensors (ST2, ST3)");
      Put_Line("[SEC] T2: Check safety limits");
      Put_Line("[SEC] T3: Send alarm info to display and storage");
   end Run;
end Security_Check;
