require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  fixtures :schools   

  test "school atributes must not be empty" do
	school_new = School.new
	assert school_new.invalid?
    assert school_new.errors[:Name].any?
	assert school_new.errors[:Address].any?
	assert school_new.errors[:Call_number].any?
  end

  test "Number's like RE" do

	school = School.new(Name: schools(:mbou).Name,
						Address: schools(:mbou).Address,
						Call_number: "14-25-11")
	 assert_match %r{(\d{2}-){2}\d{2}}, school.Call_number 

  	
  end 

  test "school is not valid without an unique name and address" do
  	school = School.new(Name: schools(:mbou).Name,
						Address: schools(:mbou).Address,
						Call_number: "14-25-11")
	assert !school.save
	assert_equal "has already been taken", school.errors[:Name].join('; ')
  end
	
end
