with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Complex_Numbers; use Complex_Numbers;

procedure Main is

   -- Define complex numbers
   A, B, Sum, Diff, Prod, Quot, Conj : Complex;

begin
   -- Initialize complex numbers
   A := (Re => 3.0, Im => 2.0);
   B := (Re => 1.0, Im => -4.0);

   null;
end Main;
