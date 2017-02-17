class Question < ActiveRecord::Base
    has_one:questionable,polymorphic:true
    has_many:categories_questions
    has_many:categories,through:categories_questions
end
