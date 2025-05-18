package body Shared is
   function Milliseconds(MS : Integer) return Duration is
   begin
      return Duration(MS) / 1000.0;
   end Milliseconds;
end Shared;
