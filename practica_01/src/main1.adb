with Ada.Text_IO; use Ada.Text_IO;
with Read_Data;

procedure Main1 is
   Data : Read_Data.Array_Data;

begin
   Read_Data.Read_Text("src/input.txt", Data);

   Put_Line("Data read from file:");
   for I in Data'Range loop
      Put_Line(Float'Image(Data(I)));
   end loop;

end Main1;
