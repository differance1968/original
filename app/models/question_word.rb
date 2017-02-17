class QuestionWord < ActiveRecord::Base
    belongs_to:question,as::questionable
end
