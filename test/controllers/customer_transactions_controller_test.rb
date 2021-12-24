require "test_helper"

class CustomerTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_transaction = customer_transactions(:one)
  end

  test "should get index" do
    get customer_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_transaction_url
    assert_response :success
  end

  test "should create customer_transaction" do
    assert_difference('CustomerTransaction.count') do
      post customer_transactions_url, params: { customer_transaction: { balance: @customer_transaction.balance, credit_amount: @customer_transaction.credit_amount, customer_id: @customer_transaction.customer_id, debit_amount: @customer_transaction.debit_amount, details: @customer_transaction.details, title: @customer_transaction.title, user: @customer_transaction.user } }
    end

    assert_redirected_to customer_transaction_url(CustomerTransaction.last)
  end

  test "should show customer_transaction" do
    get customer_transaction_url(@customer_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_transaction_url(@customer_transaction)
    assert_response :success
  end

  test "should update customer_transaction" do
    patch customer_transaction_url(@customer_transaction), params: { customer_transaction: { balance: @customer_transaction.balance, credit_amount: @customer_transaction.credit_amount, customer_id: @customer_transaction.customer_id, debit_amount: @customer_transaction.debit_amount, details: @customer_transaction.details, title: @customer_transaction.title, user: @customer_transaction.user } }
    assert_redirected_to customer_transaction_url(@customer_transaction)
  end

  test "should destroy customer_transaction" do
    assert_difference('CustomerTransaction.count', -1) do
      delete customer_transaction_url(@customer_transaction)
    end

    assert_redirected_to customer_transactions_url
  end
end
