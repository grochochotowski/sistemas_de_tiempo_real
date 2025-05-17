with Putter; use Putter;

package PutterGetterServer is
   task PutterGetter is
      entry Put_Line(Message : String);
      entry Get_Line(Response : out String);
   end PutterGetter;

   procedure Put_Line(Message : String);
   function Get_Line return String;
end PutterGetterServer;
