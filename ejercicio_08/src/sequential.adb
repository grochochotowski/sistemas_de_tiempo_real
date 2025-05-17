with Ada.Text_IO; use Ada.Text_IO;

procedure sequential is

   procedure Task_A(I : Positive) is
   begin
      Put_Line("Task A: " & I'Image);
   end Task_A;

   procedure Task_B(I : Positive) is
   begin
      Put_Line("Task B: " & I'Image);
   end Task_B;

   procedure Task_C(I : Positive) is
   begin
      Put_Line("Task C: " & I'Image);
   end Task_C;

begin
   for I in 1 .. 5 loop
      Task_A(I);
      Task_B(I);
      Task_C(I);
   end loop;
end sequential;
