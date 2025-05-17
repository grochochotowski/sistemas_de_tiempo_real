package PutterServer is
   task Server_Task is
      entry Put_Line(Message : String);
   end Server_Task;

   procedure Put_Line(Message : String);
end PutterServer;
