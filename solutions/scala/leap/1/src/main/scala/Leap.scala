object Leap {
  def leapYear(year: Int): Boolean = {
    val isDivBy4 = (year % 4 == 0)
    val isDivBy100 = (year % 100 == 0)
    val isDivBy400 = (year % 400 == 0)
    isDivBy4 && (!isDivBy100 || isDivBy400)
  }
}
