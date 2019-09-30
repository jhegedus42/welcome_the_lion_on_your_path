import sys.process._
import ammonite.ops._
println("hello")
val l =pwd
println(pwd)
(ls!l).foreach(println(_))
// based on http://ammonite.io/#Ammonite-Ops

@main
def main(i: Int=42, s: String="137", path: os.Path = os.pwd) = {
  s"Hello! ${s * i} ${path.last}."
}


