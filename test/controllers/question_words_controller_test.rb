require 'test_helper'

class QuestionWordsControllerTest < ActionController::TestCase
  test "should get quiz" do
    get :quiz
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

end
