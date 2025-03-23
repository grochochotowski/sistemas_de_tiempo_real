with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with All_Types; use All_Types;

package body Read_Text_Module is
    procedure Read_Text (File_Name :  in String; Data : out Array_Data) is
      File : File_Type;
      Value : Float;
      Index : Integer := Data'First;

   begin
      Open (File, In_File, File_Name);

      while not End_Of_File(File) and then Index <= Data'Last loop
         Get(File, Value);
         Data(Index) := Value;
         Index := Index + 1;
      end loop;
      Close(File);

   end Read_Text;
end Read_Text_Module;
