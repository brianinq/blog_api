puts "🌱 Seeding dummy data...."
CATEGORIES = Category.all
5.times do |i| 
    user = User.create(
    name: Faker::Name.name,
    username: Faker::Name.unique.first_name,
    password: Faker::Alphanumeric.alphanumeric(number: 8),
    bio: Faker::Company.catch_phrase,
    avatar: "https://robohash.org/#{i}.png?size=300x300"
    )
    3.times do
        
        blog= Blog.create(
            title: Faker::Lorem.paragraph_by_chars(number: 100),
            poster: Faker::LoremFlickr.image(size: "1920x1280", search_terms: ['technology']),
            user_id: user.id,
            category_id: CATEGORIES.sample.id,
            body: Faker::Lorem.paragraph_by_chars(number: 1500)
        )
        5.times do
            blog.comments.create(
                content: Faker::Lorem.paragraph_by_chars(number: 200),
                user_id: user.id
            )
        end      
    end 
end


puts "✔✔ Seeding done!"