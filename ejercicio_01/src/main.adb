with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;


procedure Main is

   -- ==============================Ex 01==============================
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

   -- ==============================Ex 02==============================
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

   -- ==============================Ex 03==============================
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

   -- ==============================Ex 04==============================
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
   New_Line;
   end Ex4;

   -- ==============================Ex 05==============================
   procedure Ex5 is
      -- Define string
      RealTime : constant String := "REALTIME";
   begin
      -- Print string
      Put_Line(RealTime);
   end Ex5;

   -- ===========================Ex 06 & 07===========================
   -- Define data types
   type Date_of_Birth is record
      Day : Integer;
      Month : Integer;
      Year : Integer;
   end record;

   type Personal_Data is record
      Name : Unbounded_String;
      Last_Name : Unbounded_String;
      Birth : Date_of_Birth;
   end record;

   -- Format Day and Month
   function Format_Day_Month (Num : Integer) return String is
   begin
      if Num < 10 then
         return "0" & Integer'Image(Num)(2..2);
      else
         return Integer'Image(Num)(2..3);
      end if;
   end Format_Day_Month;

   -- ==============================Ex 06==============================
   procedure Ex6 is
      -- Initialize variables
      Person : Personal_Data := (
         Name => To_Unbounded_String("Michal"),
         Last_Name => To_Unbounded_String("Grochowski"),
         Birth => (Day => 1, Month => 1, Year => 2000)
      );

   begin
      -- Print personal data
      Put_Line(To_String(Person.Name) & " " &
               To_String(Person.Last_Name) & " " &
                 Format_Day_Month(Person.Birth.Day) & "-" &
                 Format_Day_Month(Person.Birth.Month) & "-" &
                 Integer'Image(Person.Birth.Year)(2..5)
              );
   end Ex6;

   -- ==============================Ex 07==============================
   procedure Ex7 is
      -- Define linked list access
      type Personal_Data_Access is access Personal_Data;

      type Node is record
         Data : Personal_Data;
         Next : Personal_Data_Access;
      end record;

      First_Node : Node := (Data => (
         Name => To_Unbounded_String("Jakub"),
         Last_Name => To_Unbounded_String("Stelmaszuk"),
         Birth => (Day => 2, Month => 2, Year => 2002)
      ), Next => null);

   begin
      -- Print personal data
      Put_Line(To_String(First_Node.Data.Name) & " " &
               To_String(First_Node.Data.Last_Name) & " " &
                 Format_Day_Month(First_Node.Data.Birth.Day) & "-" &
                 Format_Day_Month(First_Node.Data.Birth.Month) & "-" &
                 Integer'Image(First_Node.Data.Birth.Year)(2..5)
              );
   end Ex7;

-- ============================= Run Procedures ==============================
begin
   -- Run procedures
   New_Line;
   Put_Line("==========Ex 01==========");
   Ex1;

   New_Line;
   Put_Line("==========Ex 02==========");
   Ex2;

   New_Line;
   Put_Line("==========Ex 03==========");
   Ex3;

   New_Line;
   Put_Line("==========Ex 04==========");
   Ex4;

   New_Line;
   Put_Line("==========Ex 05==========");
   Ex5;

   New_Line;
   Put_Line("==========Ex 06==========");
   Ex6;

   New_Line;
   Put_Line("==========Ex 07==========");
   Ex7;

   New_Line;
   New_Line;

   null;
end Main;

