require "test_helper"

class CTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_transaction = c_transactions(:one)
  end

  test "should get index" do
    get c_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_c_transaction_url
    assert_response :success
  end

  test "should create c_transaction" do
    assert_difference('CTransaction.count') do
      post c_transactions_url, params: { c_transaction: { balance: @c_transaction.balance, credit: @c_transaction.credit, customer_id: @c_transaction.customer_id, debit: @c_transaction.debit, details: @c_transaction.details, title: @c_transaction.title, user_id: @c_transaction.user_id } }
    end

    assert_redirected_to c_transaction_url(CTransaction.last)
  end

  test "should show c_transaction" do
    get c_transaction_url(@c_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_transaction_url(@c_transaction)
    assert_response :success
  end

  test "should update c_transaction" do
    patch c_transaction_url(@c_transaction), params: { c_transaction: { balance: @c_transaction.balance, credit: @c_transaction.credit, customer_id: @c_transaction.customer_id, debit: @c_transaction.debit, details: @c_transaction.details, title: @c_transaction.title, user_id: @c_transaction.user_id } }
    assert_redirected_to c_transaction_url(@c_transaction)
  end

  test "should destroy c_transaction" do
    assert_difference('CTransaction.count', -1) do
      delete c_transaction_url(@c_transaction)
    end

    assert_redirected_to c_transactions_url
  end
end
