class QuestionGrammar < ActiveRecord::Base
    belongs_to:question,as::questionable
    has_many:grammar_selects
end
