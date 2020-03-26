# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(name: "Joe", email: "joe@yahoo.com", gender: "male", age: 20, description: "new to app", picture: "https://upload.wikimedia.org/wikipedia/en/2/21/Penn_Badgley_as_Joe_Goldberg_1.png")
u2 = User.create(name: "Selena", email: "selena@yahoo.com", gender: "female", age: 21, description: "I like salsa", picture: "https://static.billboard.com/files/media/Selena-Gomez-press-by-Ashley-Osborn-2020-billboard-1548-1024x677.jpg")
u3 = User.create(name: "George", email: "george@yahoo.com", gender: "male", age: 39, description: "no games", picture: "https://i.guim.co.uk/img/media/adef1b259f63de9c3be18b34de9553d83649fbf2/0_480_7197_4318/master/7197.jpg?width=300&quality=85&auto=format&fit=max&s=f24600d05e2dc058f7bdf13eaad8630c")
u4 = User.create(name: "Rita", email: "rita@yahoo.com", gender: "female", age: 18, description: "new to town", picture: "https://img.discogs.com/Znir5a0yc9ra0sYWNlPQLo2G-Jw=/600x403/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/A-967872-1555396367-3514.jpeg.jpg")
u5 = User.create(name: "Bruce", email: "bruce@yahoo.com", gender: "male", age: 20, description: "bars anyone?", picture: "https://i.pinimg.com/originals/cd/0a/7e/cd0a7eb0f8bd1d64343542154c758a0f.jpg")
u6 = User.create(name: "Grace", email: "grace@yahoo.com", gender: "female", age: 24, description: "single to mingle", picture: "https://cdn2.stylecraze.com/wp-content/uploads/2013/07/953-455722492.jpg")
u7 = User.create(name: "Mike", email: "mike@yahoo.com", gender: "male", age: 26, description: "looking for a hiking partner", picture: "https://i0.wp.com/communitynewspapers.com/wp-content/uploads/2020/03/Kenmel-Guzman-I-Am-MDC-Headshot-featured.jpg?fit=640%2C480&ssl=1")
u8 = User.create(name: "Margie", email: "margie@yahoo.com", gender: "female", age: 21, description: "cuffing season", picture: "https://www.superprof.us/images/teachers/teacher-home-college-girl-giving-english-classes-for-french-students-and-french-classes-for-francophone-students.jpg")
u9 = User.create(name: "Moe", email: "moe@yahoo.com", gender: "male", age: 23, description: "Gamer", picture: "https://images.assetsdelivery.com/compings_v2/stoockstudio/stoockstudio2001/stoockstudio200100180.jpg")
u10 = User.create(name: "Jennifer", email: "jennifer@yahoo.com", gender: "female", age: 24, description: "Bubble Tea", picture: "https://i.pinimg.com/originals/0e/6f/5d/0e6f5d72c6c4eff0c122c71bdaedc7e9.jpg")





m1 = Match.create(liker_id: u1.id, liked_id: u2.id, approval: nil)
m2 = Match.create(liker_id: u3.id, liked_id: u2.id, approval: nil)
m3 = Match.create(liker_id: u4.id, liked_id: u1.id, approval: nil)
m4 = Match.create(liker_id: u4.id, liked_id: u3.id, approval: nil)
m5 = Match.create(liker_id: u5.id, liked_id: u2.id, approval: nil)
m6 = Match.create(liker_id: u7.id, liked_id: u4.id, approval: nil)
m7 = Match.create(liker_id: u4.id, liked_id: u2.id, approval: nil)
m8 = Match.create(liker_id: u10.id, liked_id: u2.id, approval: nil)
