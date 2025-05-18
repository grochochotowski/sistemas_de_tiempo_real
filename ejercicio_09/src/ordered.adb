with Putter; use Putter;
with Semaphores; use Semaphores;

procedure Ordered is
   Sem_A : Semaphore := Create(0);
   Sem_B : Semaphore := Create(0);
   Sem_C : Semaphore := Create(1);

   task Task_A;
   task Task_B;
   task Task_C;
   
   task body Task_A is
   begin
      for I in 1 .. 5 loop
         Wait(Sem_A);
         Put_Line("Task A: " & I'Image);
         Signal(Sem_C);
      end loop;
   end Task_A;

   task body Task_B is
   begin
      for I in 1 .. 5 loop
         Wait(Sem_B);
         Put_Line("Task B: " & I'Image);
         Signal(Sem_A);
      end loop;
   end Task_B;

   task body Task_C is
   begin
      for I in 1 .. 5 loop
         Wait(Sem_C);
         Put_Line("Task C: " & I'Image);
         Signal(Sem_B);
      end loop;
   end Task_C;
   
begin
   null;
end Ordered;
