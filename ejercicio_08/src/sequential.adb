procedure sequential is

begin
   for I in 1 .. 5 loop
      Task_A(I);
      Task_B(I);
      Task_C(I);
   end loop;
end sequential;
