# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = User.create!([{ name: 'User1', email: 'user1@mail.ru', password: '123user1'  },
                      { name: 'User2', email: 'user2@mail.ru', password: '123user2' },
                      { name: 'User3', email: 'user3@mail.ru', password: '123user3' },
                      { name: 'User4', email: 'user4@mail.ru', password: '123user4' }])

categories = Category.create!([{ title: 'Category_1' }, { title: 'Category_2' }, { title: 'Категория_3' }])

tests = Test.create([{title: 'Test1', level: 0, category_id: categories[1].id, author_id: users[0].id },
                     {title: 'Test2', level: 1, category_id: categories[1].id, author_id: users[1].id },
                     {title: 'Test3', level: 0, category_id: categories[0].id, author_id: users[2].id }])

questions = Question.create([{body: 'Question1_Test1', test_id: tests[0].id},
                             {body: 'Question2_Test1', test_id: tests[0].id},
                             {body: 'Question1_Test2', test_id: tests[1].id},
                             {body: 'Question2_Test2', test_id: tests[1].id},
                             {body: 'Question1_Test3', test_id: tests[2].id},
                             {body: 'Question2_Test3', test_id: tests[2].id}])

answers = Answer.create([{answer: "Answer1_Question1_Test1",question_id: questions[0].id, correct: true},
                         {answer: "Answer2_Question1_Test1",question_id: questions[0].id, correct: false},
                         {answer: "Answer1_Question2_Test1",question_id: questions[1].id, correct: true},
                         {answer: "Answer1_Question2_Test1",question_id: questions[1].id, correct: false},
                         {answer: "Answer1_Question1_Test2",question_id: questions[2].id, correct: true},
                         {answer: "Answer2_Question1_Test2",question_id: questions[2].id, correct: false},
                         {answer: "Answer1_Question2_Test2",question_id: questions[3].id, correct: true},
                         {answer: "Answer1_Question2_Test2",question_id: questions[3].id, correct: false},
                         {answer: "Answer1_Question1_Test3",question_id: questions[4].id, correct: true},
                         {answer: "Answer2_Question1_Test3",question_id: questions[4].id, correct: false},
                         {answer: "Answer1_Question2_Test3",question_id: questions[5].id, correct: true},
                         {answer: "Answer1_Question2_Test3",question_id: questions[5].id, correct: false}])
