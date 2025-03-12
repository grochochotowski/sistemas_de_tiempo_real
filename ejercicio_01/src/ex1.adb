with Ada.Text_IO; use Ada.Text_IO;

procedure Ex1 is

begin
   -- Define data types
   subtype A is Integer range -40 .. 160;
   subtype B is Integer range 0 .. 120;
   subtype C is Integer range 0 .. 225;

   -- Initialize variables
   A : A := -20;
   B : B := 30;
   C : C := 50;
   null;
end Main;
