with Ada.Text_IO;

with Simple_Parser.Mercurial;

procedure Simple_Parser.Demo is
begin
   Ada.Text_IO.Put_Line ("Revision: " & Mercurial.Revision);
end Simple_Parser.Demo;
