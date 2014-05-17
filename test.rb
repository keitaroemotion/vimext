
# /gar/ScalaExtension/src/Test
# com/Kei/_
# src  - com
#     |- Test
#
#  src/Test/com/Kei/_
#  src/com/Kei/_
#  src/Kei/_
#  /Kei/_


def Deminish(rdir,dir, d,filename)
   nodet=""
   rdir=rdir.strip
   dir.split('/').each do |node|
      nodet+=node+"/"
      root=(nodet+d).gsub("//","/").strip
      if root.gsub("/","") == (rdir+d).strip.gsub("/","")
          next
      end
      targetfile= "#{root}/#{filename}".gsub("//","/")
      if File.exists? targetfile
         puts "[FOUND] #{targetfile}"
         return targetfile 
      end 
   end
   puts "[NOT FOUND]"
   abort
end



Deminish("/gar/ScalaExtension","/gar/ScalaExtension/src/Test","/com/Kei","Excel.scala")
Deminish("/gar/ScalaExtension","/gar/ScalaExtension/src/Test","/com/Kei","Excel.scalae")


def Test()


end
