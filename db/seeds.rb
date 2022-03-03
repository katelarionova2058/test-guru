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

tests = Test.create!([{title: 'Test1', level: 0, category: categories[1], author: users[0] },
                     {title: 'Test2', level: 1, category: categories[1], author: users[1] },
                     {title: 'Test3', level: 0, category: categories[0], author: users[2] }])

questions = Question.create!([{body: 'Question1_Test1', test: tests[0]},
                             {body: 'Question2_Test1', test: tests[0]},
                             {body: 'Question1_Test2', test: tests[1]},
                             {body: 'Question2_Test2', test: tests[1]},
                             {body: 'Question1_Test3', test: tests[2]},
                             {body: 'Question2_Test3', test: tests[2]}])

Answer.create!([{answer: "Answer1_Question1_Test1",question: questions[0], correct: true},
                {answer: "Answer2_Question1_Test1",question: questions[0], correct: false},
                {answer: "Answer1_Question2_Test1",question: questions[1], correct: true},
                {answer: "Answer2_Question2_Test1",question: questions[1], correct: false},
                {answer: "Answer1_Question1_Test2",question: questions[2], correct: true},
                {answer: "Answer2_Question1_Test2",question: questions[2], correct: false},
                {answer: "Answer1_Question2_Test2",question: questions[3], correct: true},
                {answer: "Answer2_Question2_Test2",question: questions[3], correct: false},
                {answer: "Answer1_Question1_Test3",question: questions[4], correct: true},
                {answer: "Answer2_Question1_Test3",question: questions[4], correct: false},
                {answer: "Answer1_Question2_Test3",question: questions[5], correct: true},
                {answer: "Answer2_Question2_Test3",question: questions[5], correct: false}])
