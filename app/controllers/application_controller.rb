class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/questions" do
    questions = Question.all
    questions.to_json
  end

  
  get "/question/:id" do
    question = Question.find(params[:id])
    question.to_json
  end

  patch "/question/:id" do
    question = Question.find(params[:id])
    question.update(
      correct_answer: params[:correct_answer]
    )
    question.to_json
  end

  ######################


  get "/subjects" do
    subjects = Subject.all
    subjects.to_json
  end

  get "/subject/:id" do
    subject = Subject.find(params[:id])
    subject.to_json(include: :questions)
  end

  post "/question" do
    question = Question.create(
      prompt: params[:prompt],
      answer1: params[:answer1],
      answer2: params[:answer2],
      answer3: params[:answer3],
      answer4: params[:answer4],
      correct_answer: params[:correct_answer],
      subject_id: params[:subject_id]
    )
    question.to_json
  end

  delete "/question/:id" do
    question = Question.find(params[:id])
    question.destroy
    question.to_json
  end


end
