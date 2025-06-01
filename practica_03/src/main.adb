with Ada.Text_IO;
with Ada.Real_Time;
with System;

use Ada.Text_IO;
use Ada.Real_Time;
use System;

Period_Safety  : constant Time_Span := Milliseconds(25);
Period_Solar   : constant Time_Span := Milliseconds(50);
Period_MD      : constant Time_Span := Milliseconds(100);

-------------- Shared resources
protected Data_Storage is
   procedure Store(Data : String);
end Data_Storage;

protected body Data_Storage is
   procedure Store(Data : String) is
   begin
      Put_Line("Storing data: " & Data);
   end Store;
end Data_Storage;


task type Display_Task is
   entry Show(Message : String);
end Display_Task;

task body Display_Task is
begin
   loop
      select
         accept Show(Message : String) do
            delay Milliseconds(10); -- display time
            Put_Line("DISPLAY: " & Message);
         end Show;
      or
         delay Milliseconds(15); -- timeout protection
         Put_Line("DISPLAY: Timeout occurred.");
      end select;
   end loop;
end Display_Task;

Display : Display_Task;




procedure Main is

begin
   --  Insert code here.
   null;
end Main;
