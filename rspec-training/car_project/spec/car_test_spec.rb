require 'car'
require 'shared_examples/a_standard_vehicle'

describe Car do

  it "test one" do
    p subject
    puts "subject.make = #{subject.make}"
    subject.make = "dennisbot"
    puts "subject.make = #{subject.make}"
  end

  it "test two" do
    puts "subject.make = #{subject.make}"
    p subject
  end

end