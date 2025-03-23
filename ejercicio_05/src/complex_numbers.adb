package body Complex_Numbers is

   -- Addition: (a + bi) + (c + di) = (a+c) + (b+d)i
   function "+" (Left, Right : Complex) return Complex is
   begin
      return (Re => Left.Re + Right.Re, Im => Left.Im + Right.Im);
   end "+";

   -- Subtraction: (a + bi) - (c + di) = (a-c) + (b-d)i
   function "-" (Left, Right : Complex) return Complex is
   begin
      return (Re => Left.Re - Right.Re, Im => Left.Im - Right.Im);
   end "-";

   -- Multiplication: (a + bi) * (c + di) = (ac - bd) + (ad + bc)i
   function "*" (Left, Right : Complex) return Complex is
   begin
      return (Re => Left.Re * Right.Re - Left.Im * Right.Im,
              Im => Left.Re * Right.Im + Left.Im * Right.Re);
   end "*";
   
   -- Conjugate: the conjugate of (a + bi) is (a - bi)
   function Conjugate (C : Complex) return Complex is
   begin
      return (Re => C.Re, Im => -C.Im);
   end Conjugate;

end Complex_Numbers;
