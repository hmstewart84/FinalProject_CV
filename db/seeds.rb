Skill.delete_all()
Employment.delete_all()
Education.delete_all()
Person.delete_all()

person1 = Person.create({name: "Hannah Stewart", about: "Some text...", location: "Edinburgh, UK", email: "hmstewart84@gmail.com", phone: "1234"})

education1 = Education.create({name: "University of Glasgow", location: "Glasgow, UK", date: "2002-06-29", subject: "Politics", person_id: person1.id})
education2 = Education.create({name: "CodeClan", location: "Edinburgh, UK", date: "2016-11-05", subject: "Software Development", person_id: person1.id})

employment1 = Employment.create({name: "Crisis Clinic", location: "Seattle, USA", title: "Communications and Graphic Design Specialist", date: "2016-06-20", person_id: person1.id})
employment2 = Employment.create({name: "Behavioural Tech", location: "Seattle, USA", title: "Communications and Design Coordinator", date: "2015-12-01", person_id: person1.id})

skill1 = Skill.create({name: "Ruby on Rails", person_id: person1.id})
skill2 = Skill.create({name: "React", person_id: person1.id})