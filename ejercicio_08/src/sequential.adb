procedure sequential is

   procedure Task_A(I : Positive) is
   begin
      Put_Line("Task A: " & I'Image);
   end Task_A;

   procedure Task_B(I : Positive) is
   begin
      Put_Line("Task B: " & I'Image);
   end Task_B;

begin
   for I in 1 .. 5 loop
      Task_A(I);
      Task_B(I);
      Task_C(I);
   end loop;
end sequential;
