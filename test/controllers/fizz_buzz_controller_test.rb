require 'test_helper'

class FizzBuzzControllerTest < ActionDispatch::IntegrationTest
  test 'can get new page' do
    get new_fizz_buzz_path
    assert_response :ok
    assert_select "form[action='#{fizz_buzz_index_url}'][method=post]" do
      assert_select 'input[name="fizz_buzz[number]"]'
      assert_select 'input[type=submit]'
    end
  end

  test 'can post to create page' do
    post fizz_buzz_index_path, xhr: true, params: { fizz_buzz: { number: '0' } }
    assert_response :ok
  end
end
