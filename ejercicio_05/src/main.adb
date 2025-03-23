with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Complex_Numbers; use Complex_Numbers;

procedure Main is

   procedure Print_Complex(Label : String; C : Complex) is
   begin
      Put(Label & " = (");
      Put(C.Re, Fore => 0, Aft => 2);
      Put(", ");
      Put(C.Im, Fore => 0, Aft => 2);
      Put_Line(")");
   end Print_Complex;

   -- Define complex numbers
   A, B, Sum, Diff, Prod, Quot, Conj : Complex;

begin
   -- Initialize complex numbers
   A := (Re => 3.0, Im => 2.0);
   B := (Re => 1.0, Im => -4.0);

   -- Do operations
   Sum  := A + B;
   Diff := A - B;
   Prod := A * B;
   Quot := A / B;
   Conj := Conjugate(A);

   null;
end Main;
