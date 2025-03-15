with Ada.Text_IO; use Ada.Text_IO
with Ada.Containers.Queues; use Ada.Containers.Queues;
with Ada.Containers.Vectors; use Ada.Containers.Vectors;

procedure Main is
   -- Queue implementation
   package Queue_Type is new Queue (Index_Type => Positive, Element_Type => Integer);
   Q : Queue_Type;

begin
   --  Insert code here.
   null;
end Main;
