with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with read_data;

package body Read_Data is
    procedure Read_Text (File_Name : "src/input.txt"; Data : out Row_Table) is
      File : File_Type;
      Value : Float;
      Index : Integer := 0;
   begin
      Open (File, In_File, File_Name);

      while not End_Of_File(File) and then Index <= 9 loop
         Get (File, Value);
         Data(Index) := Value;
         Index := Index + 1;
      end loop;

      Close (File);
   end Read_Text;
end Read_Data;
