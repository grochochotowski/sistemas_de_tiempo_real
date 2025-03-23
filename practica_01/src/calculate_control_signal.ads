package Calculate_Control_Signal is
   
   type Simulation_State is record
      ST1 : Float; -- sensore ST1
      ST2 : Float; -- sensore ST2
      SD1 : Float; -- Distillate flow SD1
   end record;
   
   procedure Initialize(State : out Simulation_State);
   
   procedure Calculate_State(
      SR1 : in Float; -- Radiation sensor reading [W/m²]
      ST4 : in Float; -- Ambient temperature [°C]
      ST3 : in Float; -- Seawater temperature [°C]
      SC1 : in Float; -- Fixed flow rate for the solar field [L/min]
      SC2 : in Float; -- The simulation state from the previous iteration [L/h]
      Prev_State : in Simulation_State; -- The simulation state from the previousiteration
      New_State : out Simulation_State); -- The updated simulation state

end Calculate_Control_Signal;
