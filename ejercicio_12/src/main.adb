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

begin

   null;
end Main;
