with Ada.Text_IO;
with Ada.Real_Time;
with Shared;

use Ada.Text_IO;
use Ada.Real_Time;
use Shared;

package body Tasks is

   -- task T1
   procedure T1_Work is
   begin
      Put_Line("T1: a1"); delay 0.002;
      Put_Line("T1: ax"); Resource_X.Access_Resource(Milliseconds(1));
      delay 0.001; 
      Put_Line("T1: ay"); Resource_Y.Access_Resource(Milliseconds(1));
      delay 0.001; 
      Put_Line("T1: a2"); delay 0.001;
   end T1_Work;

   task T1 is
      pragma Priority(4);
   end T1;

   task body T1 is
   begin
      Run_Task("T1", Milliseconds(15), T1_Work'Access);
   end T1;

   -- task T2
   procedure T2_Work is
   begin
      Put_Line("T2: b1"); delay 0.001;
      Put_Line("T2: by"); Resource_Y.Access_Resource(Milliseconds(2));
      Put_Line("T2: b2"); delay 0.001;
   end T2_Work;

   task T2 is
      pragma Priority(3);
   end T2;

   task body T2 is
   begin
      Run_Task("T2", Milliseconds(15), T2_Work'Access);
   end T2;

   -- task T3
   procedure T3_Work is
   begin
      Put_Line("T3: c1"); delay 0.002;
   end T3_Work;

   task T3 is
      pragma Priority(2);
   end T3;

   task body T3 is
   begin
      Run_Task("T3", Milliseconds(20), T3_Work'Access);
   end T3;

   -- task T4
    procedure T4_Work is
   begin
      Put_Line("T4: d1"); delay 0.001;
      Put_Line("T4: dx"); Resource_X.Access_Resource(Milliseconds(4));
      delay 0.004;
      Put_Line("T4: d2"); delay 0.001;
   end T4_Work;

   task T4 is
      pragma Priority(1);
   end T4;

   task body T4 is
   begin
      Run_Task("T4", Milliseconds(40), T4_Work'Access);
   end T4;

   -- Entry point
   procedure Start is
   begin
      null;
   end Start;

end Tasks;
