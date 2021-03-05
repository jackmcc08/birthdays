
class BirthdayList

  def initialize
    @birthdays = []
  end

  def store(name, year, month, day)
    @birthdays << {name: name, birthday: [day, month], year_of_birth: year }
    "Birthday Stored!"
  end

  def display_birthdays
    result = []
    @birthdays.each { |person| result << "#{person[:name]} | Birthday: #{person[:birthday][0]} #{person[:birthday][1]}"}
    result.join("\n")
  end

  def birthdays_today
    t = Time.now()
    results = []
    @birthdays.each do |person|
      p = Time.new(person[:year_of_birth], person[:birthday][1], person[:birthday][0])
      if [p.month, p.day] == [t.month, t.day]
        results << "It\'s #{person[:name]}'s birthday today! They are #{((t - p)/(60*60*24*365)).to_i} years old!"
      end
    end
    results.join('\n')
  end

end
#
# birthdays = BirthdayList.new
# birthdays.store("Jack McCarthy", 1990, "Jun", 14)
# birthdays.store("Pamela Runnacles", 1990, "Jan", 4)
# puts birthdays.display_birthdays
# puts birthdays.birthdays_today
# #
# t = Time.new(1990, "Jun", 14)
# puts t
# puts Time.now.year
# puts Time.now.month
# puts Time.now.day
