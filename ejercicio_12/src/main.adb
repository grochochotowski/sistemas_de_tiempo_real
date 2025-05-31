procedure Main is

   -- Shared Resource X
   protected Resource_X is
      procedure Use(Time_In_Use : Time_Span);
   end Resource_X;

   protected body Resource_X is
      procedure Use(Time_In_Use : Time_Span) is
      begin
         delay Time_In_Use;
      end Use;
   end Resource_X;

   -- Shared Resource Y
   protected Resource_Y is
      procedure Use(Time_In_Use : Time_Span);
   end Resource_Y;

   protected body Resource_Y is
      procedure Use(Time_In_Use : Time_Span) is
      begin
         delay Time_In_Use;
      end Use;
   end Resource_Y;

   -- Main loop for running tasks
   procedure Run_Task(Task_Name : String; Period : Time_Span; Do_Work : not null access procedure) is
   Next : Time := Clock;
   begin
      loop
         Next := Next + Period;
         Put_Line(Task_Name & ": cycle start");
         Do_Work.all;
         delay until Next;
      end loop;
   end Run_Task;

begin

   null;
end Main;
