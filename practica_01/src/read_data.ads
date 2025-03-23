with All_Types; use All_Types;
with Ada.Text_IO; use Ada.Text_IO;

package Read_Data is
   procedure Read_Row(File : in out File_Type; Data : out Sensor_Data);
end Read_Data;
