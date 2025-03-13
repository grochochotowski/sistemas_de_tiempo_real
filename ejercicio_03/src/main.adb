with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   -- Define matrix
   Max_Rows    : constant := 10;
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


   -- Transpose matrix
   procedure Transpose_Matrix is
   begin
      For I in 1 .. Rows loop
         For J in 1 .. Columns loop
            Transposed(J, I) := Matrix(i, J);
         end loop;
      end loop;
   end Transpose_Matrix;


   -- Write transposed matrix to output.txt
   procedure Write_Matrix is
      File: File_Type;
   begin
      Create(File, Out_Type, output.txt);
      Put(File, Columns);
      Put(File, ' ');
      Put(File, Rows);
      New_Line(File);

      for I in 1 .. Columns loop
         for J in 1 .. Rows loop
            Put(File, Transposed(I, J));
         end loop;
      end loop;

      Close(File);
   end Write_Matrix;


begin
   --  Insert code here.
   Read_Matrix;
   Transpose_Matrix;
   Write_Matrix;
   null;
end Main;
