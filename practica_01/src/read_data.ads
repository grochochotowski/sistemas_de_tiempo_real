package Read_Data is
   type Row_Type is array (1 .. 3) of Float;
   type Array_Data is array (1 .. 20) of Row_Type;

   procedure Read_Text (File_Name:  in String; Data : out Array_Data);
end Read_Data;
