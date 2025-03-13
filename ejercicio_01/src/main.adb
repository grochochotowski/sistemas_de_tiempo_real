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
      type B_Type is digits 6 range -200.0 .. 220.0;

      -- Initialize variables
      A : A_Type := -23.12;
      B : B_Type := 123.123;

      -- Calculate
      Result : B_Type := B_Type(A) + B;

   begin
      -- Print result
      Put_Line("A + B = " & B_Type'Image(Result));
   end Ex3;

   procedure Ex4 is
      -- Define data types
      type A_Type is array (1 .. 24) of Float;
      type B_Type is array (1 .. 13, 1 .. 13, 1 .. 13) of Integer;
      type C_Type is array (Positive range <>) of Float;

      -- Initialize variables
      A : A_Type := (others => 0.0);
      B : B_Type := (others => (others => (others => 0)));
      C : C_Type (1 .. 10) := (others => 0.0);
   begin
      -- Print array A
      Put_Line("Array A: ");
      for I in A'Range loop
         Put(Float'Image(A(I)) & " ");
      end loop;

      -- Print array B
      New_Line;
      New_Line;
      Put_Line("Array B: ");
      for I in 1 .. 3 loop
         for J in  1 .. 3 loop
            for K in  1 .. 3 loop
               Put(Integer'Image(B(I, J, K)) & " ");
            end loop;
            New_Line;
         end loop;
         New_Line;
      end loop;

      -- Print array C
      Put_Line("Array C: ");
      for I in C'Range loop
         Put(Float'Image(C(I)) & " ");
      end loop;

   end Ex4;

begin
   -- Run procedures
   Put_Line("==========Ex 01==========");
   Ex1;
   Put_Line("==========Ex 02==========");
   EX2;
   Put_Line("==========Ex 03==========");
   EX3;
   Put_Line("==========Ex 04==========");
   EX4;
   null;
end Main;

