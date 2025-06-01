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


procedure Main is

begin
   --  Insert code here.
   null;
end Main;
