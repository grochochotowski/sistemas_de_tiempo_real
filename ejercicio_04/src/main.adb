with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;

procedure Main is
 -- Define the queue type
   type Data_Type is array (1 .. 10) of Integer;

   -- Define the Queue using Containers.Vector
   package Integer_Vector is new Ada.Containers.Vectors (Index_Type => Positive, Element_Type => Integer);
   Queue : Integer_Vector.Vector;

begin
   -- Initialize the queue
   Integer_Vector.Clear(Queue);

   -- Add 10 elements to the queue (FIFO - First In, First Out)
   for I in 1 .. 10 loop
      Integer_Vector.Append(Queue, I);
   end loop;

   -- Display the elements in the queue (FIFO order)
   Put_Line("Queue elements (FIFO order):");
   for I in 1 .. Integer_Vector.Length(Queue) loop
      Put_Line(Integer'Image(Integer_Vector.Element(Queue, I)));
   end loop;
end Main;
