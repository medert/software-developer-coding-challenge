class UserSeeder
  USERS = [
    {
      first_name: "John",
      last_name: "AA",
      email: "JohnA@gmail.com",
      admin: true,
      password: "password",
      password_confirmation: "password",
    }, {
      first_name: "Anne",
      last_name: "BB",
      email: "AnneB@gmail.com",
      admin: false,
      password: "password",
      password_confirmation: "password",
    }
  ]

  def self.seed!
    USERS.each do |user_params|
      first_name = user_params[:first_name]
      user = User.find_or_initialize_by(first_name: first_name)
      user.assign_attributes(user_params)
      user.save!
    end
  end
end