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

   -- Read matrix from input.txt
   procedure Read_Matrix is
      File : File_Type;
   begin
      Open(File, In_File, input.txt);
      Get(File, Rows);
      Get(File, Columns);

      For I in 1 .. Rows loop
         For J in 1 .. Columns loop
            Get(File, Matrix(I, J));
         end loop;
      end loop;

      Close(File)
   end Read_Matrix;


begin
   --  Insert code here.
   null;
end Main;
