with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is

   -- Function for reading letters and giving right option
   procedure Read_String (String_Input : String) is
   begin
      -- Loop for checking string
      for I in String_Input'range loop
         -- Q W
         if String_Input(I) = 'Q' or String_Input(I) = 'W' then
            Put_Line("Option 1");
         -- E R T
         elsif String_Input(I) = 'E' or String_Input(I) = 'R' or String_Input(I) = 'T' then
            Put_Line("Option 2");
         -- Y
         elsif String_Input(I) = 'Y' then
            Put_Line("Option 3");
         -- other
         else
            Put_Line("Another option");
         end if;
      end loop;
   end Read_String;

   -- ============================ Static String ============================
   procedure Static_String is
      -- Initialize QWERTYU
      String_Input : String := "QWERTYU";
   begin
      -- Run function for displaying options
      Read_String(String_Input);

   end Static_String;

   -- ============================ Input String ============================

-- =================================== Main ===================================
begin
   New_Line;

   Put_Line("=====Excersise 1&2=====");
   Put_Line("=====Reading from QWERTYU=====");
   Static_String;
   New_Line;

   null;
end Main;
