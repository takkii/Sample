object Dragon {
  def main(args: Array[String]): Unit = {
    val w: Wrapper = new Wrapper(9)
    w.print()
  }
}

trait Printable extends Any {
  def print(): Unit = println(this)
}

class Wrapper(val underlying: Int) extends AnyVal with Printable
