with Ada.Text_IO; use Ada.Text_IO;

package body Display is
   task body Display_Task is
      Msg : String(1..100);
      Len : Natural;
   begin
      loop
         accept Show(Message : String) do
            Len := Message'Length;
            Msg(1..Len) := Message;
         end Show;
         Put_Line("[Display] " & Msg(1..Len));
      end loop;
   end Display_Task;
end Display;
