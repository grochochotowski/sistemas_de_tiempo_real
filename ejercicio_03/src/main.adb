with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   -- Define matrix
   Max_Rows    : constant := 5;
   Max_Columns : constant := 10;

   type Matrix_Type is array (1 .. Max_Rows, 1 .. Max_Columns) of Integer;

   Matrix         : Matrix_Type := (others => (others => 0));
   Transposed     : Matrix_Type := (others => (others => 0));
   Rows, Columns  : Integer;

begin
   --  Insert code here.
   null;
end Main;
