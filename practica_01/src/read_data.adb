with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Read_Data;

package body Read_Data is
    procedure Read_Text (File_Name :  in String; Data : out Array_Data) is
      File : File_Type;
      Dummy_Index : Integer;
      Value1, Value2, Value3 : Float;
      Index : Integer := 1;

   begin
      Open (File, In_File, File_Name);

      while not End_Of_File(File) and then Index <= Data'Last loop
         Get (File, Dummy_Index);
         Get (File, Value1);
         Get (File, Value2);
         Get (File, Value3);

         Data(Index)(1) := Value1;
         Data(Index)(2) := Value2;
         Data(Index)(3) := Value3;

         Index := Index + 1;
      end loop;

      Close (File);
   end Read_Text;
end Read_Data;
