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
      Light_1 : Traffic_Light := Red;
      Light_2 : Traffic_Light := Yellow;
      Light_3 : Traffic_Light := Green;

   begin
      -- Print lights
      Put_Line("Light 1: " & Traffic_Light'Image(Light_1));
      Put_Line("Light 2: " & Traffic_Light'Image(Light_2));
      Put_Line("Light 3: " & Traffic_Light'Image(Light_3));
   end Ex2;


   procedure Ex3 is
      -- Define data types
      type A_Type is delta 0.001 range -30.0 .. 70.0;
      type B_Type is digits 6 range -200.0 .. 220.0

   begin

   end Ex3;

begin
   -- Run procedures
   Put_Line("==========Ex 01==========");
   Ex1;
   Put_Line("==========Ex 02==========");
   EX2;
   null;
end Main;

