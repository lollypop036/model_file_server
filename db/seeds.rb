
# agent = Agent.create(name: "Lola", username: "lola123")


# model1 = Model.create(name: "Tanah Lot", dob:DateTime.new(1999,7,1) , sex: 'F', location: 'North London', mobile: '0791112233', image1: 'tanah1.jpg', image2: 'tanah2.jpg', image3: 'tanah3.jpg', height: 172, shoe: 7, clothing: '6', agent_id: 1 )
# model2 = Model.create(name: "Jack Dahl", dob:DateTime.new(1992,6,9) , sex: 'M', location: 'Manchester', mobile: '0791188833', image1: 'jack1.jpg', image2: 'jack2.jpg', image3:'jack3.jpg', height: 190, shoe: 12, clothing: 'M', agent_id: 1 )
# model3 = Model.create(name: "Adaeze Nkwo", dob:DateTime.new(1995,1,4) , sex: 'F', location: 'South London', mobile: '07911094233', image1: 'ada1.jpg', image2: 'ada2.jpg', image3: 'ada3.jpg', height: 171, shoe: 8, clothing: '8', agent_id: 1 )
# model4 = Model.create(name: "Jessica Randall", dob:DateTime.new(1994,8,10) , sex: 'F', location: 'West London', mobile: '079884433', image1: 'jessica1.jpg', image2:'jessica2.jpg', image3: 'jessica3.jpg', height: 174, shoe: 7, clothing: '8', agent_id: 1 )
# model5 = Model.create(name: "Harry Davis", dob:DateTime.new(1996,10,3) , sex: 'M', location: 'East London', mobile: '0791448832', image1: 'harry1.jpg', image2: 'harry2.jpg',  image3: 'harry3.jpg', height: 187, shoe: 11, clothing: 'M', agent_id: 1 )

# model6 = Model.create(name: "Damon Jones", dob:DateTime.new(1992,10,3) , sex: 'M', location: 'West London', mobile: '0791448832', image1: 'damon1.jpg', image2: 'damon2.jpg',  image3: 'damon3.jpg', height: 185, shoe: 10, clothing: 'M', agent_id: 1 )
# model7 = Model.create(name: "Dan Smith", dob:DateTime.new(1996,10,4) , sex: 'M', location: 'Surrey', mobile: '07914488424', image1: 'dan1.jpg', image2: 'dan2.jpg',  image3: 'dan3.jpg', height: 188, shoe: 11, clothing: 'S', agent_id: 1 )
# model8 = Model.create(name: "Maria Adenuga", dob:DateTime.new(1991,1,3) , sex: 'F', location: 'North London', mobile: '07914488843', image1: 'maria1.jpg', image2: 'maria2.jpg',  image3: 'maria3.jpg', height: 174, shoe: 7, clothing: '6', agent_id: 1 )
# model9 = Model.create(name: "Matthew Morris", dob:DateTime.new(1996,5,6) , sex: 'M', location: 'East London', mobile: '0791448832', image1: 'matt1.jpg', image2: 'matt2.jpg',  image3: 'matt3.jpg', height: 184, shoe: 9, clothing: 'S', agent_id: 1 )
# model10 = Model.create(name: "Philip De Souza", dob:DateTime.new(1995,2,4) , sex: 'M', location: 'South London', mobile: '0791448832', image1: 'philip1.jpg', image2: 'philip2.jpg',  image3: 'philip3.jpg', height: 182, shoe: 10, clothing: 'S', agent_id: 1 )
# model11= Model.create(name: "Wendy Tran", dob:DateTime.new(1990,10,3) , sex: 'F', location: 'East London', mobile: '0791448832', image1: 'wendy1.jpg', image2: 'wendy2.jpg',  image3: 'wendy3.jpg', height: 171, shoe: 8, clothing: '6', agent_id: 1 )

model12= Model.create(name: "Stef Orewale", dob:DateTime.new(1993,1,3) , sex: 'F', location: 'South London', mobile: '0791448832', image1: 'stef1.jpg', image2: 'stef2.jpg',  image3: 'stef3.jpg', height: 169, shoe: 8, clothing: '6', agent_id: 1 )



# job1 = Job.create(brand:'Burberry', agent_id: 1, description: 'A video shoot for Burberry' )
# job2 = Job.create(brand:'Next', agent_id: 1, description: "Global campaign for Next SS19")
# job3 = Job.create(brand:'Mango', agent_id: 1, description: '2 female models required for an ecommerce shoot for the Mango shoot' )

# casting1 =  Casting.create(job_id: 1, date:DateTime.new(2018,12,11, 9), time:DateTime.new(2018,12,11, 9), location:'Central London', details:'please be on time')
# casting2 = Casting.create(job_id: 2, date:DateTime.new(2018,11,11, 12), time:DateTime.new(2018,11,11, 12), location:'East London', details:'please be on time')
# casting3 = Casting.create(job_id: 3, date:DateTime.new(2018,12,1, 14), time:DateTime.new(2018,12,1, 14), location:'East London', details:'please be on time')


# shoot1 = Shoot.create(job_id: 1, date:DateTime.new(2019,4,1, 10), time:DateTime.new(2019,4,1, 10), location:'West London', pay:7000)
# shoot2 = Shoot.create(job_id: 2, date:DateTime.new(2019,3,7, 6), time:DateTime.new(2019,3,7, 6), location:'Barcelona', pay:6500)
# shoot3 = Shoot.create(job_id: 3, date:DateTime.new(2019,2,2, 9), time:DateTime.new(2019,2,2, 9), location:'Central London', pay:800)




# modelcasting1 = ModelCasting.create(model_id: model4.id, casting_id:casting1.id)
# modelcasting2 = ModelCasting.create(model_id: model3.id, casting_id:casting2.id)
# modelcasting3 = ModelCasting.create(model_id: model5.id, casting_id:casting2.id)
# modelcasting4 = ModelCasting.create(model_id: model1.id, casting_id:casting3.id)
# modelcasting5 = ModelCasting.create(model_id: model2.id, casting_id:casting1.id)
# modelcasting6 = ModelCasting.create(model_id: model3.id, casting_id:casting3.id)

# modelshoot1 = ModelShoot.create(shoot_id: shoot1.id, model_id: model2.id)
# modelshoot1 = ModelShoot.create(shoot_id: shoot2.id, model_id: model5.id)
# modelshoot1 = ModelShoot.create(shoot_id: shoot3.id, model_id: model3.id)
# modelshoot1 = ModelShoot.create(shoot_id: shoot3.id, model_id: model1.id)