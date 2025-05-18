with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Real_Time;       use Ada.Real_Time;
with Shared;
with Solar_Control;
with MD_Control;
with Security_Check;

procedure Sequential is
use Shared;
   Period_Solar    : constant Time_Span := Milliseconds(50);
   Period_MD       : constant Time_Span := Milliseconds(100);
   Period_Security : constant Time_Span := Milliseconds(25);

   Next_Solar      : Time := Clock;
   Next_MD         : Time := Clock;
   Next_Security   : Time := Clock;

   Iteration : Integer := 0;

begin
   Put_Line("Starting Cyclic Executive Simulation...");

   loop
      Iteration := Iteration + 1;
      declare
         Current_Time : constant Time := Clock;
      begin
         if Current_Time >= Next_Security then
            Security_Check.Run;
            Next_Security := Next_Security + Period_Security;
         end if;

         if Current_Time >= Next_Solar then
            Solar_Control.Run;
            Next_Solar := Next_Solar + Period_Solar;
         end if;

         if Current_Time >= Next_MD then
            MD_Control.Run;
            Next_MD := Next_MD + Period_MD;
         end if;

         delay until Current_Time + Milliseconds(5);
      end;
   end loop;
end Sequential;
