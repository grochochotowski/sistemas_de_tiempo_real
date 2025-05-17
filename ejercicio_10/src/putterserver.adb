with Putter; use Putter;

package body PutterServer is

   task body Server_Task is
   begin
      loop
         accept Put_Line(Message : String) do
            Putter.Put_Line(Message);
         end Put_Line;
      end loop;
   end Server_Task;

   procedure Put_Line(Message : String) is
   begin
      Server_Task.Put_Line(Message);
   end Put_Line;

end PutterServer;
