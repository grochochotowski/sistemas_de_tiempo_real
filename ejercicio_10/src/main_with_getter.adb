with PutterGetterServer; use PutterGetterServer;
with Putter; use Putter;

procedure Main_With_Getter is
   task type PutterGetterClient(Name : Character);

   task body PutterGetterClient is
      Received : String(1 .. 100);
   begin
      for I in 1 .. 3 loop
         PutterGetterServer.Put_Line("Task " & Name & ": " & I'Image);
      end loop;

      delay 0.1;
      Received := Get_Line;
      PutterGetterServer.Put_Line("Task " & Name & " read back: " & Received);
   end PutterGetterClient;

   A : PutterGetterClient('X');

begin
   null;
end Main_With_Getter;
