# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Hello World!'
puts "這個種子檔會自動建立一個帳號, 並且創建 20 個 groups, 每個 group 各 30 個 posts"
create_account = User.create([email: 'example@roshiko.com', password: '11111111', password_confirmation: '11111111', name: '測試用帳號'])
@example_user = User.find_by(email: 'example@roshiko.com')
create_groups = 
	for i in 1..20 do
		create_group = Group.create!([title: "Group no.#{i}", description: "這是用種子建立的第 #{i} 個討論版", user_id: "1"])
		@example_user.join!(create_group)
		
		for j in 1..30 do
			Post.create!([group_id: "#{i}",content: "這是用種子建立的第 #{j} 個留言", user_id: "1"])
		end
	end