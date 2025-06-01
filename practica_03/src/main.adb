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


task type AD_Card_Server is
   entry Read(Sensor : out Integer);
   entry Write(ControlSignal : Integer);
end AD_Card_Server;

task body AD_Card_Server is
   Internal_Value : Integer := 0;
begin
   loop
      select
         accept Read(Sensor : out Integer) do
            Sensor := Internal_Value;
            Put_Line("A/D Read: " & Integer'Image(Sensor));
         end Read;
      or
         accept Write(ControlSignal : Integer) do
            Internal_Value := ControlSignal;
            Put_Line("A/D Write: " & Integer'Image(ControlSignal));
         end Write;
      end select;
   end loop;
end AD_Card_Server;

ADC : AD_Card_Server;


-------------- Control tasks


procedure Main is
begin
   null;
end Main;
