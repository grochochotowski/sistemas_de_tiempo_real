with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with All_Types; use All_Types;

package body Show_On_Screen is
   procedure Display_State(State : in Control_State; Sensor : in Sensor_Data) is
   begin
      Put("State ->  ST1: ");
      Ada.Float_Text_IO.Put(State.ST1, Fore => 3, Aft => 2, Exp => 0);
      Put("  ST2: ");
      Ada.Float_Text_IO.Put(State.ST2, Fore => 3, Aft => 2, Exp => 0);
      Put("  SD1: ");
      Ada.Float_Text_IO.Put(State.SD1, Fore => 3, Aft => 2, Exp => 0);
      New_Line;
      Put("Sensor -> SR1: ");
      Ada.Float_Text_IO.Put(Sensor.SR1, Fore => 3, Aft => 2, Exp => 0);
      Put("  ST4: ");
      Ada.Float_Text_IO.Put(Sensor.ST4, Fore => 3, Aft => 2, Exp => 0);
      Put("  SD3: ");
      Ada.Float_Text_IO.Put(Sensor.ST3, Fore => 3, Aft => 2, Exp => 0);
      New_Line;
      New_Line;
   end Display_State;
end Show_On_Screen;
