puts "Deleting old data..."
Question.destroy_all
Subject.destroy_all

puts "🌱 Seeding Subjects..."
java_script = Subject.create(category: "JavaScript")
html = Subject.create(category: "HTML")
css = Subject.create(category: "CSS")
python = Subject.create(category: "Python")
sql = Subject.create(category: "SQL")
java = Subject.create(category: "Java")
c = Subject.create(category: "C++")


puts "🌱 Seeding Questions..."
# JS
Question.create(prompt: "Inside which HTML element do we put the JavaScript?", answer1: "<script>", answer2: "<js>", answer3: "<javascript>", answer4: "<scripting>", correct_answer: "<script>", subject_id: java_script.id)
Question.create(prompt: "Where is the correct place to insert a JavaScript?", answer1: "The <head> section", answer2: "Both the <head> section and the <body> section are correct", answer3: "The <body> section", answer4: "None of the answers are correct", correct_answer: "Both the <head> section and the <body> section are correct ", subject_id: java_script.id)
Question.create(prompt: "How do you write 'Hello World' in an alert box?", answer1: "alert('Hello World');", answer2: "msg('Hello World');", answer3: "alertBox('Hello World');", answer4: "msgBox('Hello World');", correct_answer: "alert('Hello World');", subject_id: java_script.id)
Question.create(prompt: "What is the correct syntax for referring to an external script called 'xxx.js'?", answer1: "<script src='xxx.js'>" , answer2: "<script name='xxx.js'>", answer3: "<script href='xxx.js'>", answer4: "None of the answers are correct", correct_answer: "<script src='xxx.js'>", subject_id: java_script.id)
Question.create(prompt: "How do you call a function named 'myFunction'?", answer1: "function myFunction()" , answer2: "function = myFunction()", answer3: "function:myFunction()", answer4: "None of the answers are correct", correct_answer: "function myFunction()", subject_id: java_script.id)
# HTML
Question.create(prompt: "What does HTML stand for?", answer1: "Hyperlinks and Text Markup Language" , answer2: "Home Tool Markup Language", answer3: "Hyper Text Markup Language", answer4: "None of the answers are correct", correct_answer: "Hyper Text Markup Language", subject_id: html.id)
Question.create(prompt: "Who is making the Web standards?", answer1: "Mozilla" , answer2: "Google", answer3: "Microsoft", answer4: "The World Wide Web Consortium", correct_answer: "The World Wide Web Consortium", subject_id: html.id)
Question.create(prompt: "Choose the correct HTML element for the largest heading:", answer1: "<h1>" , answer2: "<heading>", answer3: "<h6>", answer4: "<head>", correct_answer: "<h1>", subject_id: html.id)
Question.create(prompt: "What is the correct HTML element for inserting a line break?", answer1: "<lb>" , answer2: "<br>", answer3: "<break>", answer4: "None of the answers are correct", correct_answer: "<br>", subject_id: html.id)
Question.create(prompt: "Choose the correct HTML element to define important text", answer1: "<i>" , answer2: "<b>", answer3: "<important>", answer4: "<strong>", correct_answer: "<strong>", subject_id: html.id)
# CSS



puts "✅ Done seeding!"
