require 'test_helper'

class FizzBuzzControllerTest < ActionDispatch::IntegrationTest
  test 'new page contains form to input number to create' do
    get new_fizz_buzz_path
    assert_response :ok
    assert_select "form[action='#{fizz_buzz_index_url}'][method=post]" do
      assert_select 'input[name="fizz_buzz[number]"]'
      assert_select 'input[type=submit]'
    end
  end

  test 'create page contains answer and link back to new page' do
    post fizz_buzz_index_path, xhr: true, params: { fizz_buzz: { number: '0' } }
    assert_response :ok
    assert_select '.js-fizz_buzz_answer', text: '0'
    assert_select "a[href='#{new_fizz_buzz_url}']"
  end
end
