package Semaphores is
   type Semaphore is limited private;

   function Create(Initial : Natural) return Semaphore;
   procedure Wait(S : in out Semaphore);
   procedure Signal(S : in out Semaphore);

private
   protected type Semaphore_Type is
      entry Wait;
      procedure Signal;
   private
      Count : Natural := 0;
   end Semaphore_Type;

   type Semaphore is access Semaphore_Type;
end Semaphores;
