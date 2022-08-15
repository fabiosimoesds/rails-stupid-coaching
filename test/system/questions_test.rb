# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Asking a question yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "How are you?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end
