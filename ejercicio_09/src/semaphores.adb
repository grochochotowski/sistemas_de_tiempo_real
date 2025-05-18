package body Semaphores is

   function Create(Initial : Natural) return Semaphore is
      S : Semaphore := new Semaphore_Type;
   begin
      for I in 1 .. Initial loop
         S.Signal;
      end loop;
      return S;
   end Create;

   procedure Wait(S : in out Semaphore) is
   begin
      S.Wait;
   end Wait;

   procedure Signal(S : in out Semaphore) is
   begin
      S.Signal;
   end Signal;

   protected body Semaphore_Type is
      entry Wait when Count > 0 is
      begin
         Count := Count - 1;
      end Wait;

      procedure Signal is
      begin
         Count := Count + 1;
      end Signal;
   end Semaphore_Type;

end Semaphores;
