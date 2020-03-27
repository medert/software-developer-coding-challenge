require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'should have many' do
    it {should have_many(:auctions)}
    it {should have_many(:bids)}
  end

  describe 'should not belog to' do
    it {should_not belong_to(:auction)}
    it {should_not belong_to(:bid)}
  end

  describe 'validations' do
    it {should have_valid(:first_name).when("John") }
    it {should_not have_valid(:first_name).when("", nil) }

    it {should have_valid(:last_name).when("Doe") }
    it {should_not have_valid(:last_name).when("", nil) }

    it {should have_valid(:email).when("toms@gmail.com") }
    it {should_not have_valid(:email).when("", nil, "Tom") }
  end

  it "has none to begin with" do
    expect(User.count).to eq(0)
  end

  it "has one after adding one" do
    User.create(first_name: "John",last_name: "Doe",email: "free@gmail.com", password: "password")

    expect(User.count).to eq(1)
  end

  it "has none after one was created in a previous example" do
    expect(User.count).to eq(0)
  end
end