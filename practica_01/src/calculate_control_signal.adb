with All_Types; use All_Types;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body Calculate_Control_Signal is
   procedure Calculate_State(
                             Sensor : in Sensor_Data;
                             Prev_State : in Control_State;
                             New_State : out Control_State) is
      
      -- Constants:
      Beta : constant Float := 0.13;
      Leq : constant Float := 16.0;
      H : constant Float := 4.0;
      c : constant Float := 9.0 * 2.0 * 6.0 * 10000.0;
      Cp : constant Float := 4190.0;
      Rho : constant Float := 976.0;
      
      -- Fixed flow rates:
      SC1 : constant Float := 16.0;  -- [L/min]
      SC2 : constant Float := 425.0; -- [L/h]
      
      Tt : Float;
      Term1, Term2 : Float;
      
   begin
      -- Equation 2 (Tt)
      Tt := (Prev_State.ST1 + Prev_State.ST2) / 2.0;

      -- Equation 1 (Two quotients)
      Term1 := (Beta * Leq * Sensor.SR1 * c) / (SC1 * Cp * Rho);
      Term2 := (H * (Tt - Sensor.ST4) * c) / (SC1 * Cp * Rho);

      -- Equation 1 (ST2) 
      New_State.ST2 := Prev_State.ST1 + Term1 - Term2;

      -- Equation 3 (ST1)
      New_State.ST1 := New_State.ST2 - 10.0;

      -- Equation 4 (SD1)
      New_State.SD1 :=
         24.0 * (0.135 + 0.003 * Prev_State.ST2 - 0.0203 * Sensor.ST3 - 0.001 * SC2
                 + 0.00004 * Prev_State.ST2 * SC2);
      
      -- Set SC* const for logging
      New_State.SC1 := SC1;
      New_State.SC2 := SC2;
   end Calculate_State;
end Calculate_Control_Signal;
