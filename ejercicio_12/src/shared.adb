with Ada.Text_IO;
with Ada.Real_Time;
use Ada.Text_IO;
use Ada.Real_Time;

package body Shared is

   protected body Resource_X is
      procedure Access_Resource(Time : Time_Span) is
      begin
         Put_Line("X locked for " & Duration'Image(To_Duration(Time)) & " seconds");
      end Access_Resource;
   end Resource_X;

   protected body Resource_Y is
      procedure Access_Resource(Time : Time_Span) is
      begin
         Put_Line("Y locked for " & Duration'Image(To_Duration(Time)) & " seconds");
      end Access_Resource;
   end Resource_Y;

   procedure Run_Task(Name : String; Period : Time_Span; Work : not null access procedure) is
      Next : Time := Clock;
   begin
      loop
         Put_Line(Name & ": start");
         Work.all;
         Next := Next + Period;
         delay until Next;
      end loop;
   end Run_Task;

end Shared;
