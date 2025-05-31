with Ada.Real_Time;

package Shared is
   use Ada.Real_Time;

   protected Resource_X is
      procedure Access_Resource(Time : Time_Span);
   end Resource_X;

   protected Resource_Y is
      procedure Access_Resource(Time : Time_Span);
   end Resource_Y;

   procedure Run_Task(Name : String; Period : Time_Span; Work : not null access procedure);

end Shared;
