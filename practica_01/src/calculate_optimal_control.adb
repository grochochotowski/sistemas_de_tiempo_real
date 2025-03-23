with All_Types; use All_Types;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
package body Calculate_Optimal_Control is

   procedure Calculate_Optimal_State(
                                     Sensor : in  Sensor_Data;
                                     Prev_State : in  Control_State;
                                     New_State : out Control_State) is

      -- Constants:
      Beta : constant Float := 0.13;
      Leq  : constant Float := 16.0;
      H    : constant Float := 4.0;
      c    : constant Float := 9.0 * 2.0 * 6.0 * 10000.0;
      Cp   : constant Float := 4190.0;
      Rho  : constant Float := 976.0;

      -- Optimal operating points:
      ST2_opt : constant Float := 80.0;  -- optimal solar field temperature
      SD1_opt : constant Float := 32.0;  -- optimal distillate flow

      Tt : Float;
      SC1_opt : Float;
      SC2_opt : Float;
      
   begin
      -- Equation 2
      Tt := (Prev_State.ST1 + Prev_State.ST2) / 2.0;
      
      -- Calculate optimal SC1
      if ST2_opt - Prev_State.ST1 = 0.0 then
         SC1_opt := 16.0;  -- fallback default
      else
         SC1_opt := (c / (Cp * Rho)) * (Beta * Leq * Sensor.SR1 - H * (Tt - Sensor.ST4)) /
                    (ST2_opt - Prev_State.ST1);
      end if;
      
      -- Clamp SC1_opt between 7.5 and 25.
      if SC1_opt < 7.5 then
         SC1_opt := 7.5;
      elsif SC1_opt > 25.0 then
         SC1_opt := 25.0;
      end if;
      
      -- Calculate optimal SC2
      declare
         A : Float := 0.135 + 0.003 * Prev_State.ST2 - 0.0203 * Sensor.ST3;
         Denom : Float := -0.001 + 0.00004 * Prev_State.ST2;
      begin
         if Denom = 0.0 then
            SC2_opt := 425.0;  -- fallback default
         else
            SC2_opt := (((SD1_opt / 24.0) - A) / Denom);
         end if;
      end;
      
      -- Clamp SC2_opt between 150 and 620.
      if SC2_opt < 150.0 then
         SC2_opt := 150.0;
      elsif SC2_opt > 620.0 then
         SC2_opt := 620.0;
      end if;
      
      -- Save the computed flow rates:
      New_State.SC1 := SC1_opt;
      New_State.SC2 := SC2_opt;
      
      -- Equation 1
      New_State.ST2 := Prev_State.ST1 + (c / (SC1_opt * Cp * Rho)) * (Beta * Leq * Sensor.SR1 - H * (Tt - Sensor.ST4));
      
      -- Equation 3
      New_State.ST1 := New_State.ST2 - 10.0;
      
      -- Equation 4
      New_State.SD1 := 24.0 * (0.135 + 0.003 * Prev_State.ST2 - 0.0203 * Sensor.ST3 - 0.001 * SC2_opt +
                               0.00004 * Prev_State.ST2 * SC2_opt);
   end Calculate_Optimal_State;
end Calculate_Optimal_Control;
