require "test_helper"

class STransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @s_transaction = s_transactions(:one)
  end

  test "should get index" do
    get s_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_s_transaction_url
    assert_response :success
  end

  test "should create s_transaction" do
    assert_difference('STransaction.count') do
      post s_transactions_url, params: { s_transaction: { balance: @s_transaction.balance, credit: @s_transaction.credit, debit: @s_transaction.debit, details: @s_transaction.details, supplier_id: @s_transaction.supplier_id, title: @s_transaction.title, user_id: @s_transaction.user_id } }
    end

    assert_redirected_to s_transaction_url(STransaction.last)
  end

  test "should show s_transaction" do
    get s_transaction_url(@s_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_s_transaction_url(@s_transaction)
    assert_response :success
  end

  test "should update s_transaction" do
    patch s_transaction_url(@s_transaction), params: { s_transaction: { balance: @s_transaction.balance, credit: @s_transaction.credit, debit: @s_transaction.debit, details: @s_transaction.details, supplier_id: @s_transaction.supplier_id, title: @s_transaction.title, user_id: @s_transaction.user_id } }
    assert_redirected_to s_transaction_url(@s_transaction)
  end

  test "should destroy s_transaction" do
    assert_difference('STransaction.count', -1) do
      delete s_transaction_url(@s_transaction)
    end

    assert_redirected_to s_transactions_url
  end
end
