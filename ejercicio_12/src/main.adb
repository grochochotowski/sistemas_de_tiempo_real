with Ada.Text_IO, Ada.Real_Time, System;
use Ada.Text_IO, Ada.Real_Time, System;

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

   -- Task T1
   procedure T1_Work is
   begin
      Put_Line("T1: a1");
      delay Milliseconds(2);
      Put_Line("T1: ax");
      Resource_X.Use(Milliseconds(1));
      Put_Line("T1: ay");
      Resource_Y.Use(Milliseconds(1));
      Put_Line("T1: a2");
      delay Milliseconds(1);
   end T1_Work;

   task body T1 is
   begin
      Run_Task("T1", Milliseconds(15), T1_Work'Access);
   end T1;

   -- Task T2
   procedure T2_Work is
   begin
      Put_Line("T2: b1");
      delay Milliseconds(1);
      Put_Line("T2: by");
      Resource_Y.Use(Milliseconds(2));
      Put_Line("T2: b2");
      delay Milliseconds(1);
   end T2_Work;

   task T2;
   pragma Priority(3);
   task body T2 is
   begin
      Run_Task("T2", Milliseconds(15), T2_Work'Access);
   end T2;

   -- Task T3
   procedure T3_Work is
   begin
      Put_Line("T3: c1");
      delay Milliseconds(2);
   end T3_Work;

   task T3;
   pragma Priority(2);
   task body T3 is
   begin
      Run_Task("T3", Milliseconds(20), T3_Work'Access);
   end T3;

   -- Task T4
   procedure T4_Work is
   begin
      Put_Line("T4: d1");
      delay Milliseconds(1);
      Put_Line("T4: dx");
      Resource_X.Use(Milliseconds(4));
      Put_Line("T4: d2");
      delay Milliseconds(1);
   end T4_Work;

   task T4;
   pragma Priority(1);
   task body T4 is
   begin
      Run_Task("T4", Milliseconds(40), T4_Work'Access);
   end T4;

begin
   null;
end Main;
