with Ada.IO_Exceptions;

package body Simple_Parser is
   procedure Get (File : in     File_Type;
                  Key  : in     String) is
      Buffer : String (Key'Range);
   begin
      Ada.Text_IO.Get (File => File,
                       Item => Buffer);

      if Buffer /= Key then
         raise Ada.IO_Exceptions.Data_Error
           with "Found '" & Buffer & "' where '" & Key & "' was expected.";
      end if;
   end Get;

   procedure Skip_Line (File  : in     File_Type;
                        Empty : in     Boolean) is
   begin
      if Empty and then
         not End_Of_Line (File)
      then
         raise Ada.IO_Exceptions.Data_Error
           with "Expected the remainder of the line to be empty.";
      end if;

      Ada.Text_IO.Skip_Line (File => File);
   end Skip_Line;
end Simple_Parser;
