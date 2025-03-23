with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with All_Types; use All_Types;

package body Write_On_Data_Log is
   procedure Write_Log(
                       Iteration : in Integer;
                       State : in Control_State;
                       Sensor : in Sensor_Data) is
      Log_File : File_Type;
      
   begin
      if Iteration = 1 then
         Create(Log_File, Out_File, "src/data_log.txt");
         Put_Line(Log_File, "k ST1(k) ST2(k) ST3(k) ST4(k) SC1(k) SC2(k) SR1(k) SD1(k)");
         Close(Log_File);
      end if;
      
      Open(Log_File, Append_File, "src/data_log.txt");
      
      Put(Log_File, Integer'Image(Iteration) & " ");
      Ada.Float_Text_IO.Put(Log_File, State.ST1, Fore => 6, Aft => 2, Exp => 0);
      Put(Log_File, " ");
      Ada.Float_Text_IO.Put(Log_File, State.ST2, Fore => 6, Aft => 2, Exp => 0);
      Put(Log_File, " ");
      Ada.Float_Text_IO.Put(Log_File, Sensor.ST3, Fore => 6, Aft => 2, Exp => 0);
      Put(Log_File, " ");
      Ada.Float_Text_IO.Put(Log_File, Sensor.ST4, Fore => 6, Aft => 2, Exp => 0);
      Put(Log_File, " ");
      Ada.Float_Text_IO.Put(Log_File, Sensor.SR1, Fore => 6, Aft => 2, Exp => 0);
      Put(Log_File, " ");
      Ada.Float_Text_IO.Put(Log_File, State.SD1, Fore => 6, Aft => 2, Exp => 0);
      New_Line(Log_File);
      
      Close(Log_File);
      
   end Write_Log;
end Write_On_Data_Log;
