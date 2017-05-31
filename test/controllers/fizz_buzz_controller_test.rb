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

  test 'create page contains link back to new page' do
    post fizz_buzz_index_path, xhr: true, params: { fizz_buzz: { number: '0' } }
    assert_response :ok
    assert_select "a[href='#{new_fizz_buzz_url}']"
  end

  test 'create with 1 displays 1' do
    post fizz_buzz_index_path, xhr: true, params: { fizz_buzz: { number: '1' } }
    assert_response :ok
    assert_select '.js-fizz_buzz_answer', text: '1'
  end

  test 'fizz_buzz with 1 returns 1' do
    assert_equal 1, FizzBuzzController.fizz_buzz(1)
  end
end
