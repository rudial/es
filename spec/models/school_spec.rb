require 'rails_helper'

RSpec.describe School, type: :model do
  
  it "is valid with valid attributes" do
	school = build(:school) 
  	expect(school).to  be_valid
  end

  it "is invalid without name" do 
    school = build(:school, Name: nil)
	expect(school).to be_invalid
  end
  
  it "is invalid with wrong number" do
  	school = build(:school, Call_number: "111-22-33")
	expect(school).to be_invalid   
  end
  
  it "is valid with right number" do
	school = build(:school)
  	expect(school).to be_valid
  end 

  it "has unique name"	do
	school = create(:school)
    school1 = build(:school, Name: "#{school.Name}")
	expect(school1).to be_invalid
  end

  it "has unique address" do
	school = create(:school)
  	school1 = build(:school, Address: "#{school.Address}")
	expect(school1).to be_invalid
  end

  it "can be blank" do
  	school1 = build(:school, Call_number: nil)
  	expect(school1).to be_valid
  end 

   	
end
