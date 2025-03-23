with Ada.Text_IO; use Ada.Text_IO;
with All_Types; use All_Types;

package body Check_Security_Setpoint is
   procedure Check_Security(State : in Control_State) is
   begin
      if State.ST2 > 95.0 then
         Put_Line("ALARM: ST2 exceeds 95°C!");
      end if;
   end Check_Security;
end Check_Security_Setpoint;
