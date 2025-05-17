with Ada.Text_IO; use Ada.Text_IO;

procedure static is
   task Task_A;
   task Task_B;
   task Task_C;
   
    task body Task_A is
   begin
      for I in 1 .. 5 loop
         Put_Line("Task A: " & I'Image);
      end loop;
   end Task_A;
   
    task body Task_B is
   begin
      for I in 1 .. 5 loop
         Put_Line("Task B: " & I'Image);
      end loop;
   end Task_B;

   
begin
   null;
end static;
