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
      
end Calculate_Optimal_Control;
