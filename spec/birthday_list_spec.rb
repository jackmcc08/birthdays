require 'birthday_list'

describe BirthdayList do

  it "Responds to store" do
    is_expected.to respond_to :store
  end

  it "Responds to display" do
    is_expected.to respond_to :display_birthdays
  end

  it "Responds to birthdays_today" do
    is_expected.to respond_to :birthdays_today
  end

  describe "#store" do
    before do
      @test_list = BirthdayList.new
    end

    it "Stores the given birthday and returns a confirmation" do
      expect(@test_list.store("Jack McCarthy", 1990, "Jun", 14)).to eq "Birthday Stored!"
    end
  end

  describe "#display_birthdays" do
    before do
      @test_list_2 = BirthdayList.new
      @test_list_2.store("Jack McCarthy", 1990, "Jun", 14)
      @test_list_2.store("Pamela Runnacles", 1990, "Jan", 4)
      @exp_display_result = "Jack McCarthy | Birthday: 14 Jun\nPamela Runnacles | Birthday: 4 Jan"
    end

    it "displays two names and their birthdays when two birthdays are stored" do
      expect(@test_list_2.display_birthdays).to eq @exp_display_result
    end
  end

  describe "#birthdays_today" do
    before do
      @test_list_2 = BirthdayList.new
      @test_list_2.store("Jack McCarthy", 1990, "Jun", 14)
      @test_list_2.store("Pamela Runnacles", 1990, "Jan", 4)
      @test_list_2.store("Random Guy", 1990, Time.now.month, Time.now.day)
    end

    it "displays today's birthdays - Random guy test entry defaults birthday to today" do
      expect(@test_list_2.birthdays_today).to eq "It's Random Guy's birthday today! They are #{Time.now.year - 1990} years old!"
    end
  end
end
