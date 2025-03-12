with Ada.Text_IO; use Ada.Text_IO;


procedure Main is

   procedure Ex1 is
      -- Define data types
      subtype A_Type is Integer range -40 .. 160;
      subtype B_Type is Integer range 0 .. 120;
      subtype C_Type is Integer range 0 .. 225;

      -- Initialize variables
      A : A_Type := -20;
      B : B_Type := 30;
      C : C_Type := 50;

      -- Calculate operations
      Result_1 : Integer := A + B;
      Result_2 : Integer := A + C;
      Result_3 : Integer := B + C;

   begin
      -- Print results
      Put_Line ("A + B = " & Integer'Image(Result_1));
      Put_Line ("A + C = " & Integer'Image(Result_2));
      Put_Line ("B + C = " & Integer'Image(Result_3));
   end Ex1;

   procedure Ex2 is
      -- Define data type
      type Traffic_Light is (Red, Yellow, Green);

      -- Declare variables
      Light_1 : Traffic_Light := Red;;
      Light_2 : Traffic_Light := Yellow;
      Light_3 : Traffic_Light := Green;


begin
   -- Run procedures
   Ex1;
   EX2;
   null;
end Main;

