with Putter; use Putter;

procedure No_Mutex is

   task type Task_Type(Name : Character);
   task body Task_Type is
   begin
      for I in 1 .. 5 loop
         Put_Line("Task " & Name & ": " & I'Image);
      end loop;
   end Task_Type;

   A : Task_Type('A');
   B : Task_Type('B');
   C : Task_Type('C');


begin
   null;
end No_Mutex;
