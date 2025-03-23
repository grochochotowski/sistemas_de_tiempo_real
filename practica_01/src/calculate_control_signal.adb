with Ada.Text_IO; use Ada.Text_IO;
package body Calculate_Control_Signal is

   -- Define constants:
   Beta : constant Float := 0.13;
   Leq : constant Float := 16.0;
   H : constant Float := 4.0;
   c : constant Float := 9.0 * 2.0 * 6.0 * 10000.0;
   Cp : constant Float := 4190.0;
   Rho : constant Float := 976.0;

   -- Initialize procedure
   procedure Initialize(State : out Simulation_State) is
   begin
      State.ST1 := 48.0;
      State.ST2 := 58.0;
      State.SD1 := 0.0;
   end Initialize;

   
end Calculate_Control_Signal;
