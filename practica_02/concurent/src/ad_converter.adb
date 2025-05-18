with Ada.Text_IO; use Ada.Text_IO;

package body AD_Converter is
   task body AD_Task is
   begin
      loop
         select
            accept Read(Sensor : String) do
               Put_Line("[A/D] Reading " & Sensor);
            end Read;
         or
            accept Write(Actuator : String) do
               Put_Line("[A/D] Writing to " & Actuator);
            end Write;
         end select;
      end loop;
   end AD_Task;
end AD_Converter;
