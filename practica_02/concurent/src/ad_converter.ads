package AD_Converter is
   task AD_Task is
      entry Read(Sensor : String);
      entry Write(Actuator : String);
   end AD_Task;
end AD_Converter;
