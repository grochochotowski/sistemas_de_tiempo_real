with Ada.Text_IO;

package body Data_Storage is
   protected body Logger is
      procedure Log(Message : String) is
      begin
         Ada.Text_IO.Put_Line("[Storage] " & Message);
      end Log;
   end Logger;
end Data_Storage;
