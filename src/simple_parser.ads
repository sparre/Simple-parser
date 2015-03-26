with Ada.Text_IO;

package Simple_Parser is
   use Ada.Text_IO;

   procedure Get (File : in     File_Type;
                  Key  : in     String)
     with Pre  => Is_Open (File) and then
                  Mode (File) = In_File;

   procedure Skip_Line (File  : in     File_Type;
                        Empty : in     Boolean)
     with Pre  => Is_Open (File) and then
                  Mode (File) = In_File;
end Simple_Parser;
