require 'test_helper'

class FizzBuzzControllerTest < ActionController::TestCase
  test 'new page contains form to input number to create' do
    get :new
    assert_response :ok
    assert_select "form[action='#{fizz_buzz_index_url}'][method=post]" do
      assert_select 'input[name="fizz_buzz[number]"]'
      assert_select 'input[type=submit]'
    end
  end

  test 'create page contains answer and link back to new page' do
    post :create, params: { fizz_buzz: { number: '0' } }
    assert_response :ok
    assert_select '.js-fizz_buzz_answer'
    assert_select "a[href='#{new_fizz_buzz_url}']", text: 'FizzBuzz again!'
  end

  test 'create with 1 displays 1' do
    post :create, params: { fizz_buzz: { number: '1' } }
    assert_response :ok
    assert_select '.js-fizz_buzz_answer', text: '1'
  end
end
