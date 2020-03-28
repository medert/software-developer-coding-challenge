require "rails_helper"

RSpec.describe UserSeeder do
  it "does not create dublicates records on multiple runs" do
    UserSeeder.seed!
    first_count = User.count
    UserSeeder.seed!
    expect(User.count).to eq(first_count)
  end
end
