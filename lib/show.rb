class Show
  attr_accessor :line1, :line2, :line3

  def initialize(line1, line2, line3)
    @line1 = line1
    @line2 = line2
    @line3 = line3
  end

  def screen
    puts "    1       2      3"
    puts "        |      |"
    print "A \s\s#{@line1[0]}\s\s\s|"
    print "\s\s#{@line1[1]}\s\s\s|"
    print "\s\s#{@line1[2]}\s\s\s\n"
    puts "  ------|------|------"
    print "B \s\s#{@line2[0]}\s\s\s|"
    print "\s\s#{@line2[1]}\s\s\s|"
    print "\s\s#{@line2[2]}\s\s\s\n"
    puts "  ------|------|------"
    print "C \s\s#{@line3[0]}\s\s\s|"
    print "\s\s#{@line3[1]}\s\s\s|"
    print "\s\s#{@line3[2]}\s\s\s\n"
    puts "        |      |"
    puts ""
  end

end