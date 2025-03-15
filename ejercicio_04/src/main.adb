with Ada.Text_IO; use Ada.Text_IO
with Ada.Containers.Queues; use Ada.Containers.Queues;
with Ada.Containers.Vectors; use Ada.Containers.Vectors;

procedure Main is
   -- Queue implementation
   package Int_Queue is new Queue (Index_Type => Positive, Element_Type => Integer);
   Q : Int_Queue.Queue;

begin
   -- Add elements to queue
   for I in 1 .. 10 loop
       Int_Queue.Enqueue (Q, I);
   end loop;



   null;
end Main;
