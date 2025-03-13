with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
   -- Initialize QWERTYU
   Var : String := "QWERTYU";

   begin
      -- Loop for checking string
      for I in Var'range loop
         if Var(I) = 'Q' or Var(I) = 'W' then
            Put_Line("Option 1");
         elsif Var(I) = 'E' or Var(I) = 'R' or Var(I) = 'T' then
            Put_Line("Option 2");
         elsif Var(I) = 'Y' then
            Put_Line("Option 3");
         else
            Put_Line("Another option");
         end if;
      end loop;

   null;
end Main;
