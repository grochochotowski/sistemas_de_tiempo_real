package All_Types is

   type Control_State is record
      ST1 : Float;
      ST2 : Float;
      SD1 : Float;
      SC1 : Float;
      SC2 : Float;
   end record;

   type Sensor_Data is record
      SR1 : Float;  -- Radiation sensor [W/m²]
      ST4 : Float;  -- Ambient temperature [°C]
      ST3 : Float;  -- Seawater temperature [°C]
   end record;

end All_Types;
