class School {
  type DB = Map[Int, Seq[String]]
  private var database: DB = Map()

  def add(name: String, g: Int) = {
    if (database.contains(g)) {
      val values = database(g)
      if (values.contains(name)) {
        throw new Exception("Already exists")
      } else {
        database = database.updated(g, values :+ name)
      }
    } else {
      database = database + (g -> Seq(name))
    }
  }

  def db: DB = database

  def grade(g: Int): Seq[String] = database.getOrElse(g, Seq())

  def sorted: DB = {
    database
      .toList
      .sortBy(_._1)
      .map { case (k, v) => (k, v.sorted) }
      .toMap
  }
}

