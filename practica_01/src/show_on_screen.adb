with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with All_Types; use All_Types;

package body Show_On_Screen is
   procedure Display_State(State : in Control_State; Sensor : in Sensor_Data) is
   begin
      Put("ST1: ");
      Ada.Float_Text_IO.Put(State.ST1, Fore => 6, Aft => 2, Exp => 0);
      Put("  ST2: ");
      Ada.Float_Text_IO.Put(State.ST2, Fore => 6, Aft => 2, Exp => 0);
      Put("  SD1: ");
      Ada.Float_Text_IO.Put(State.SD1, Fore => 6, Aft => 2, Exp => 0);
      New_Line;
      Put_Line("Sensor -> SR1: " & Float'Image(Sensor.SR1) &
               "  ST4: " & Float'Image(Sensor.ST4) &
               "  ST3: " & Float'Image(Sensor.ST3));
   end Display_State;
end Show_On_Screen;
