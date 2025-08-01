object Bob {
  def response(statement: String): String = {
    val trimmed = statement.trim

    val isSilent = trimmed.isEmpty
    val isQuestion = trimmed.endsWith("?")
    val letters = trimmed.filter(_.isLetter)
    val isShouting = letters.nonEmpty && letters.forall(_.isUpper)

    (isSilent, isShouting, isQuestion) match {
      case (true, _, _)            => "Fine. Be that way!"
      case (_, true, true)         => "Calm down, I know what I'm doing!"
      case (_, true, false)        => "Whoa, chill out!"
      case (_, false, true)        => "Sure."
      case _                       => "Whatever."
    }
  }
}
