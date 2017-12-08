# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

exame = Exame.create()
questions = Questio_reader.ler_question_txt("Question_2015_1.txt")

questions.each do |question|
	q = Question.create(knowledge_area:question[0], 
		statement:question[1], 
		alternative_0:question[2], 
		alternative_1:question[3], 
		alternative_2:question[4],
		alternative_3:question[5], 
		alternative_4:question[6],
		corret_alternative:question[7],
		image_url: question[8],
		references:quesiton[9])
	q.save!
	p.build(question_id:q)
end