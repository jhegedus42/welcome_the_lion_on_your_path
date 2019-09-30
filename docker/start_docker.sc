import sys.process._
import ammonite.ops._

// see more at 
// http://ammonite.io/#ScalaScripts
// http://ammonite.io/#Ammonite-REPL
// http://ammonite.io/#Ammonite-Ops
// http://ammonite.io/#Ammonite-Shell
// https://ammonite.io/


@main
def main(tag:String) = {

	val d =    "docker run " 
	val p1=    " -p 5902:5902 " 
	val p2=    " -p 5901:5901 " 
	val p3=    " -p 5900:5900 " 
	val p4=    " -p 9000:8888 "
	val p_ssh= " -p 8022:22 "
	val env=   " -e GRANT_SUDO=yes "
	val mount= " -v /tmp:/tmp_of_host "
	val user=  " --user joco " 
	val base_name = "welcome_the_lion_on_your_path"
	val ctr_name  = s" --name ${base_name}_$tag "
	val interactive= " -it " 
	val image_name= s" jhegedus42/$base_name:$tag "
	val process_to_start= " bash "

	val s2=  d +
	        p1+p2+p3+p4 + p_ssh+
		env +
		mount +
		user +
		interactive +
		ctr_name +
		image_name +
		process_to_start	
	        	

	println(s2)
}

