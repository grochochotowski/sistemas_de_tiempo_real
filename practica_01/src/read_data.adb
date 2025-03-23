with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with All_Types; use All_Types;

package body Read_Data is
   procedure Read_Row(File : in out File_Type; Data : out Sensor_Data) is
      Dummy_Index : Integer;
   begin
      -- Skip empty lines and finish program if needed:
      while End_Of_Line(File) loop
         Skip_Line(File);
         if End_Of_File(File) then
            return;
         end if;
      end loop;

      Get(File, Dummy_Index);

      Get(File, Data.SR1);
      Get(File, Data.ST4);
      Get(File, Data.ST3);

      Skip_Line(File);

   end Read_Row;
end Read_Data;
