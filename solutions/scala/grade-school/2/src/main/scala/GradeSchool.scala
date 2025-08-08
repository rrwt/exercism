import scala.collection.immutable.SortedMap

class School {
  type DB = Map[Int, Seq[String]]
  private var database: DB = SortedMap[Int, Seq[String]]()

  def add(name: String, g: Int) = {
    val students = database.getOrElse(g, Seq.empty)
    database = database.updated(g, (students :+ name).sorted)
  }

  def db: DB = database

  def grade(g: Int): Seq[String] = database.getOrElse(g, Seq.empty)

  def sorted: DB = db
}

