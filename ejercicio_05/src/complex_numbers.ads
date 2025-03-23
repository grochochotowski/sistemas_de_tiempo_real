package Complex_Numbers is
   
   -- Define the Complex Number type (real and imaginary)
   type Complex is record
      Re : Float;
      Im : Float;
   end record;
   
   -- Operations complex numbers.
   function "+" (Left, Right : Complex) return Complex;
   function "-" (Left, Right : Complex) return Complex;
   function "*" (Left, Right : Complex) return Complex;
   function "/" (Left, Right : Complex) return Complex;
   function Conjugate (C : Complex) return Complex;

end Complex_Numbers;
