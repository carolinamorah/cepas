require 'rails_helper'

RSpec.describe Strain, type: :model do
  it "name must be unique" do 
    name = Strain.create(name: 'Carmenere')
    dup_name = name.dup 
    expect(dup_name).to be_invalid
  end

  it "strain name cant be blank" do 
    strain = Strain.new(name: "")
    expect(strain).to be_invalid
  end

  it "is not valid without a name" do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid
  end
end
