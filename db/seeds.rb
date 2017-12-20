password = '123456'

1.upto(5) do |i|
  User.create(
      email: "user_#{i}@bdipo.com",
      password: password,
      password_confirmation: password
  )
end