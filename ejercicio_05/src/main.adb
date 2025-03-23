with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Complex_Numbers; use Complex_Numbers;

procedure Main is

   -- Procedure to print complex numbers
   procedure Print_Complex(Label : String; C : Complex) is
   begin
      Put(Label & " = (");
      Ada.Float_Text_IO.Put(Item => C.Re, Fore => 0, Aft => 2, Exp => 0);
      if C.Im >= 0.0 then
         Put(" + ");
         Ada.Float_Text_IO.Put(Item => C.Im, Fore => 0, Aft => 2, Exp => 0);
      else
         Put(" - ");
         Ada.Float_Text_IO.Put(Item => -C.Im, Fore => 0, Aft => 2, Exp => 0);
      end if;
      Put_Line("i)");
   end Print_Complex;

   -- Define complex numbers
   A, B, Sum, Diff, Prod, Quot, ConjA, ConjB : Complex;

begin
   -- Initialize complex numbers
   A := (Re => 3.0, Im => 2.0);
   B := (Re => 1.0, Im => -4.0);

   -- Do operations
   Sum  := A + B;
   Diff := A - B;
   Prod := A * B;
   Quot := A / B;
   ConjA := Conjugate(A);
   ConjB := Conjugate(B);

   -- Output the results
   Print_Complex("A", A);
   Print_Complex("B", B);
   Print_Complex("A + B", Sum);
   Print_Complex("A - B", Diff);
   Print_Complex("A * B", Prod);
   Print_Complex("A / B", Quot);
   Print_Complex("Conjugate of A", ConjA);
   Print_Complex("Conjugate of B", ConjB);

   null;
end Main;
