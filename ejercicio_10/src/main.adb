with PutterServer; use PutterServer;

procedure Main is
   task type PutterClient(Name : Character);

   task body PutterClient is
   begin
      for I in 1 .. 5 loop
         Put_Line("Task " & Name & ": " & I'Image);
      end loop;
   end PutterClient;

   A : PutterClient('A');
   B : PutterClient('B');
   C : PutterClient('C');

begin
   null;
end Main;
