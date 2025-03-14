with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   type Matrix_Type is array (1 .. 5, 1 .. 10) of Integer;
   type Transposed_Matrix_Type is array (1 .. 10, 1 .. 5) of Integer;

   Matrix         : Matrix_Type := (others => (others => 0));
   Transposed     : Transposed_Matrix_Type := (others => (others => 0));


   -- Read matrix from input.txt
   procedure Read_Matrix is
      File : File_Type;
      Rows : Integer := 5;
      Columns : Integer := 10;
   begin
      Open(File, In_File, "src/input.txt");

      For I in 1 .. Rows loop
         For J in 1 .. Columns loop
            Get(File, Matrix(I, J));
         end loop;
      end loop;

      Close(File);
   end Read_Matrix;


   -- Transpose matrix
   procedure Transpose_Matrix is
      Rows : Integer := 5;
      Columns : Integer := 10;
   begin
      For I in 1 .. Rows loop
         For J in 1 .. Columns loop
            Transposed(J, I) := Matrix(I, J);
         end loop;
      end loop;
   end Transpose_Matrix;


   -- Write transposed matrix to output.txt
   procedure Write_Matrix is
      File: File_Type;
      Rows : Integer := 10;
      Columns : Integer := 5;
   begin
      Create(File, Out_File, "src/output.txt");

      for I in 1 .. Rows loop
         for J in 1 .. Columns loop
            Put(File, Transposed(I, J), Width => 0);
            Put(File, ' ');
         end loop;
         New_Line(File);
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
