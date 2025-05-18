pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__concurrent.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__concurrent.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E069 : Short_Integer; pragma Import (Ada, E069, "system__os_lib_E");
   E020 : Short_Integer; pragma Import (Ada, E020, "ada__exceptions_E");
   E016 : Short_Integer; pragma Import (Ada, E016, "system__soft_links_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "system__exception_table_E");
   E037 : Short_Integer; pragma Import (Ada, E037, "ada__containers_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "ada__io_exceptions_E");
   E011 : Short_Integer; pragma Import (Ada, E011, "ada__strings_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings__maps_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__strings__maps__constants_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "interfaces__c_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exceptions_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "system__object_reader_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "system__dwarf_lines_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "system__soft_links__initialize_E");
   E036 : Short_Integer; pragma Import (Ada, E036, "system__traceback__symbolic_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "ada__strings__utf_encoding_E");
   E104 : Short_Integer; pragma Import (Ada, E104, "ada__tags_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "ada__strings__text_buffers_E");
   E132 : Short_Integer; pragma Import (Ada, E132, "interfaces__c__strings_E");
   E112 : Short_Integer; pragma Import (Ada, E112, "ada__streams_E");
   E124 : Short_Integer; pragma Import (Ada, E124, "system__file_control_block_E");
   E123 : Short_Integer; pragma Import (Ada, E123, "system__finalization_root_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "ada__finalization_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "system__file_io_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "system__task_info_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "ada__real_time_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "ada__text_io_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "system__tasking__initialization_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "system__tasking__protected_objects_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "system__tasking__protected_objects__entries_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "system__tasking__queuing_E");
   E181 : Short_Integer; pragma Import (Ada, E181, "system__tasking__stages_E");
   E007 : Short_Integer; pragma Import (Ada, E007, "ad_converter_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "data_storage_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "display_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "shared_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "md_control_E");
   E193 : Short_Integer; pragma Import (Ada, E193, "security_check_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "solar_control_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E187 := E187 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "data_storage__finalize_spec");
      begin
         F1;
      end;
      E173 := E173 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E110 := E110 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__file_io__finalize_body");
      begin
         E120 := E120 - 1;
         F4;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           True, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, False, True, True, False, False, 
           False, False, False, True, True, True, True, False, 
           False, False, False, True, True, False, True, True, 
           False, True, True, False, True, True, True, True, 
           False, False, False, False, False, True, False, False, 
           True, False, False, False, True, True, False, False, 
           False, True, True, False, False, True, False, False, 
           False, False, False, False, False, False, True, False, 
           True, True, True, False, False, True, False, True, 
           True, True, False, True, True, False, True, True, 
           True, True, False, False, False, False, False, False, 
           False, False, False, True, True, True, False, True, 
           False),
         Count => (0, 0, 0, 0, 2, 2, 5, 0, 3, 0),
         Unknown => (False, False, False, False, False, False, False, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E014 := E014 + 1;
      Ada.Containers'Elab_Spec;
      E037 := E037 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E065 := E065 + 1;
      Ada.Strings'Elab_Spec;
      E011 := E011 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E052 := E052 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E056 := E056 + 1;
      Interfaces.C'Elab_Spec;
      E075 := E075 + 1;
      System.Exceptions'Elab_Spec;
      E023 := E023 + 1;
      System.Object_Reader'Elab_Spec;
      E077 := E077 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E046 := E046 + 1;
      System.Os_Lib'Elab_Body;
      E069 := E069 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E094 := E094 + 1;
      E016 := E016 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E036 := E036 + 1;
      E020 := E020 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E098 := E098 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E104 := E104 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      Ada.Strings.Text_Buffers'Elab_Body;
      E010 := E010 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E132 := E132 + 1;
      Ada.Streams'Elab_Spec;
      E112 := E112 + 1;
      System.File_Control_Block'Elab_Spec;
      E124 := E124 + 1;
      System.Finalization_Root'Elab_Spec;
      System.Finalization_Root'Elab_Body;
      E123 := E123 + 1;
      Ada.Finalization'Elab_Spec;
      E121 := E121 + 1;
      System.File_Io'Elab_Body;
      E120 := E120 + 1;
      System.Task_Info'Elab_Spec;
      E149 := E149 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E183 := E183 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E110 := E110 + 1;
      System.Tasking.Initialization'Elab_Body;
      E163 := E163 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E171 := E171 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E173 := E173 + 1;
      System.Tasking.Queuing'Elab_Body;
      E177 := E177 + 1;
      System.Tasking.Stages'Elab_Body;
      E181 := E181 + 1;
      Ad_Converter'Elab_Spec;
      Ad_Converter'Elab_Body;
      E007 := E007 + 1;
      Data_Storage'Elab_Spec;
      E187 := E187 + 1;
      Display'Elab_Spec;
      Display'Elab_Body;
      E189 := E189 + 1;
      E191 := E191 + 1;
      Md_Control'Elab_Spec;
      Md_Control'Elab_Body;
      E005 := E005 + 1;
      Security_Check'Elab_Spec;
      Security_Check'Elab_Body;
      E193 := E193 + 1;
      Solar_Control'Elab_Spec;
      Solar_Control'Elab_Body;
      E195 := E195 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_concurrent");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\ad_converter.o
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\data_storage.o
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\display.o
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\shared.o
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\md_control.o
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\security_check.o
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\solar_control.o
   --   C:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\concurrent.o
   --   -LC:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\
   --   -LC:\nonSystem\IT\Code\sistemas_de_tiempo_real\practica_02\concurent\obj\
   --   -LD:/programs/gnat/lib/gcc/x86_64-w64-mingw32/10.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
