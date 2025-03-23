package Read_Data is
   type Array_Data is array (1 .. 15) of Float;
   procedure Read_Text (File_Name:  in String; Data : out Array_Data);
end Read_Data;
