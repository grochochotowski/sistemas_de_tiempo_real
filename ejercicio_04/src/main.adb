with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Main is
   -- Define the Queue using Containers.Vector
   package Integer_Vector is new Ada.Containers.Vectors (Index_Type => Positive, Element_Type => Integer);
   Queue : Integer_Vector.Vector;

   procedure Queue_Implementation is
   begin
      -- Initialize the queue
      Integer_Vector.Clear(Queue);
      New_Line;

      -- Add 10 elements to the queue (FIFO - First In, First Out)
      for I in 1 .. 10 loop
         Put_Line("Appending to queue: " & Integer'Image(I));
         Integer_Vector.Append(Queue, I);
      end loop;
      New_Line;

      -- Display the elements in the queue (FIFO)
      Put_Line("Queue elements (FIFO):");
      for Element of Queue loop
         Put(Integer'Image(Element) & ",");
      end loop;
   end Queue_Implementation;


begin
   Put_Line("========== Queue iplementation ==========");
   Queue_Implementation;
   New_Line;
   New_Line;
end Main;
