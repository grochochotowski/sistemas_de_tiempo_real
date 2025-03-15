with Ada.Text_IO; use Ada.Text_IO;
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

   -- Dequeue and display elements
   while not Int_Queue.Is_Empty (Q) loop
      declare
         Item : Integer;
      begin
         Int_Queue.Dequeue (Q, Item);
         Put_Line ("Dequeued: " & Integer'Image(Item));
      end;
   end loop;

   null;
end Main;
