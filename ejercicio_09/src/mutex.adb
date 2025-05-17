with Putter; use Putter;
with Semaphores; use Semaphores;

procedure Mutex is
   
   Mutex : Semaphore := Create(1);

   task type Task_Type(Name : Character);
   task body Task_Type is
   begin
      for I in 1 .. 5 loop
         Wait(Mutex);
         Put_Line("Task " & Name & ": " & I'Image);
         Signal(Mutex);
      end loop;
   end Task_Type;

   A, B, C : Task_Type('A'), Task_Type('B'), Task_Type('C');
   
begin
   null;
end Mutex;
