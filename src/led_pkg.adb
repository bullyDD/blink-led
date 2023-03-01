package body Led_pkg is

   --------------------
   -- Initialize_Led --
   --------------------
   procedure Initialize_Led (This : in out Digital_IO) is
      Pin_Mode : GPIO_Port_Configuration (Mode_Out);
   begin

      Pin_Mode.Resistors := Floating;
      Pin_Mode.Output_Type := Push_Pull;
      Pin_Mode.Speed := Speed_100MHz;

      Enable_Clock (This);
      Configure_IO (This, Pin_Mode);

   end Initialize_Led;

   --------------------
   -- Toggle_Pin_Led --
   --------------------
   procedure Toggle_Pin_Led (This : in out Digital_IO) is
   begin
      Toggle (This);
   end Toggle_Pin_Led;



end Led_pkg;
