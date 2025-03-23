with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Read_Data;

procedure Main1 is
   Data : Read_Data.Array_Data;

begin
   Read_Data.Read_Text("src/input.txt", Data);

   Put_Line("Data read from file:");
   for I in Data'Range loop
      Ada.Float_Text_IO.Put(Data(I)(1), Fore => 6, Aft => 2, Exp => 0);
      Put(" ");
      Ada.Float_Text_IO.Put(Data(I)(2), Fore => 6, Aft => 2, Exp => 0);
      Put(" ");
      Ada.Float_Text_IO.Put(Data(I)(3), Fore => 6, Aft => 2, Exp => 0);
      New_Line;
   end loop;
end Main1;
