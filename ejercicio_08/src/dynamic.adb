with Ada.Text_IO; use Ada.Text_IO;

procedure dynamic 
   task type Task_Type(Name : Character);

   task body Task_Type is
   begin
      for I in 1 .. 5 loop
         Put_Line("Task " & Name & ": " & I'Image);
      end loop;
   end Task_Type;

   type Task_Access is access Task_Type;
   A, B, C : Task_Access;
   
begin
   A := new Task_Type('A');
   B := new Task_Type('B');
   C := new Task_Type('C');
end dynamic;
