# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(name: "Joe", email: "joe@yahoo.com", gender: "male", dob: "01/01/1990", description: "new to app", picture: "https://images.fatherly.com/wp-content/uploads/2019/07/what-boys-need-today.jpg?q=65&enable=upscale&w=600")
u2 = User.create(name: "Selena", email: "selena@yahoo.com", gender: "female", dob: "02/02/1990", description: "I like salsa", picture: "https://static.billboard.com/files/media/Selena-Gomez-press-by-Ashley-Osborn-2020-billboard-1548-1024x677.jpg")
u3 = User.create(name: "George", email: "george@yahoo.com", gender: "male", dob: "03/03/1992", description: "no games", picture: "https://i.guim.co.uk/img/media/adef1b259f63de9c3be18b34de9553d83649fbf2/0_480_7197_4318/master/7197.jpg?width=300&quality=85&auto=format&fit=max&s=f24600d05e2dc058f7bdf13eaad8630c")
u4 = User.create(name: "Rita", email: "rita@yahoo.com", gender: "female", dob: "05/05/1991", description: "new to town", picture: "https://img.discogs.com/Znir5a0yc9ra0sYWNlPQLo2G-Jw=/600x403/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/A-967872-1555396367-3514.jpeg.jpg")
u5 = User.create(name: "Bruce", email: "bruce@yahoo.com", gender: "male", dob: "07/07/1991", description: "bars anyone?", picture: "https://i.pinimg.com/originals/cd/0a/7e/cd0a7eb0f8bd1d64343542154c758a0f.jpg")
u6 = User.create(name: "Grace", email: "grace@yahoo.com", gender: "female", dob: "09/09/1994", description: "single to mingle", picture: "https://cdn2.stylecraze.com/wp-content/uploads/2013/07/953-455722492.jpg")
u7 = User.create(name: "Mike", email: "mike@yahoo.com", gender: "male", dob: "10/10/1992", description: "looking for a hiking partner", picture: "https://lh3.googleusercontent.com/proxy/3odEKiMP3TgSGkh3xRufNWLTVZxbPVXWmuONcH5j07yMYq7n05r42TDKlwjqCj4pLtdnYlBQ3FefSCokgpMwv2nJd7UAsojdC9PD5gWFPQ1tb6jcLHw9_jQA8Pcsc9c-Bf59bG9xsf2b6WRFHxLuglqUHp2FU9ZZuwHshMpyIlGrU76wuP1f67GXCpiXRG1DrDeXhblq2dO1kQHfCn6Efm4eTP6QTKR5E5zHdxgTTPsYlwrCUxs")


m1 = Match.create(liker_id: u1.id, liked_id: u2.id, approval: nil)
m2 = Match.create(liker_id: u3.id, liked_id: u2.id, approval: nil)
m3 = Match.create(liker_id: u2.id, liked_id: u1.id, approval: true)
m4 = Match.create(liker_id: u4.id, liked_id: u3.id, approval: nil)
m5 = Match.create(liker_id: u5.id, liked_id: u2.id, approval: nil)
m6 = Match.create(liker_id: u7.id, liked_id: u4.id, approval: nil)