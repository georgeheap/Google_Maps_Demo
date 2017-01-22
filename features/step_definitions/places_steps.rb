Given(/^sample data has been loaded$/) do
  Location.destroy_all


  @simba = User.find_by(email: "lion@king.org")
  @simba = User.create(email: "lion@king.org", password: "123456") if @simba.nil?

  Location.find_or_create_by(user_id: @simba.id, lat: 51.7447815393778, lng: -0.04119873046875, icon: "volcano", notes: "Take it")
  Location.find_or_create_by(user_id: @simba.id, lat: 51.5326686067416, lng: 0.087890625, icon: "volcano", notes: "Volcano")

end
