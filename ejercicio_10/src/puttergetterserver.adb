with Putter; use Putter;

package body PutterGetterServer is

   task body PutterGetter is
      Buffer : String(1 .. 100);
      Last   : Natural := 0;
   begin
      loop
         select
            accept Put_Line(Message : String) do
               Putter.Put_Line("SERVER RECEIVED: " & Message);
               Buffer(1 .. Message'Length) := Message;
               Last := Message'Length;
            end Put_Line;
         or
            accept Get_Line(Response : out String) do
               Response := Buffer(1 .. Last);
            end Get_Line;
         end select;
      end loop;
   end PutterGetter;

   procedure Put_Line(Message : String) is
   begin
      PutterGetter.Put_Line(Message);
   end Put_Line;

   function Get_Line return String is
      Result : String(1 .. 100);
   begin
      PutterGetter.Get_Line(Result);
      return Result;
   end Get_Line;

end PutterGetterServer;
