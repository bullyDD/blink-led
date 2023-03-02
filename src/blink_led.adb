--------------------------------------------------------------------------------
--  A simple example that blinks a led for one second.                       ---
--------------------------------------------------------------------------------

with STM32.Device;  use STM32.Device;
with Ada.Real_Time; use Ada.Real_Time;

with Led_pkg;       use Led_pkg;

procedure Blink_Led is

   Period : constant Time_Span := Milliseconds (1000);
   Next : Time := Clock;

   Led_Pin : Digital_IO renames PG15;

begin
   Initialize_Led (This => Led_Pin);

   loop
      Toggle_Pin_Led (This => Led_Pin);
      Next := Next + Period;
      delay until Next;
   end loop;


end Blink_Led;
