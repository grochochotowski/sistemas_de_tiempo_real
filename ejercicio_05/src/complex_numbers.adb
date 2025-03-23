package body Complex_Numbers is

   -- Addition: (a + bi) + (c + di) = (a+c) + (b+d)i
   function "+" (Left, Right : Complex) return Complex is
   begin
      return (Re => Left.Re + Right.Re, Im => Left.Im + Right.Im);
   end "+";

end Complex_Numbers;
