require "application_system_test_case"

class CTransactionsTest < ApplicationSystemTestCase
  setup do
    @c_transaction = c_transactions(:one)
  end

  test "visiting the index" do
    visit c_transactions_url
    assert_selector "h1", text: "C Transactions"
  end

  test "creating a C transaction" do
    visit c_transactions_url
    click_on "New C Transaction"

    fill_in "Balance", with: @c_transaction.balance
    fill_in "Credit", with: @c_transaction.credit
    fill_in "Customer", with: @c_transaction.customer_id
    fill_in "Debit", with: @c_transaction.debit
    fill_in "Details", with: @c_transaction.details
    fill_in "Title", with: @c_transaction.title
    fill_in "User", with: @c_transaction.user_id
    click_on "Create C transaction"

    assert_text "C transaction was successfully created"
    click_on "Back"
  end

  test "updating a C transaction" do
    visit c_transactions_url
    click_on "Edit", match: :first

    fill_in "Balance", with: @c_transaction.balance
    fill_in "Credit", with: @c_transaction.credit
    fill_in "Customer", with: @c_transaction.customer_id
    fill_in "Debit", with: @c_transaction.debit
    fill_in "Details", with: @c_transaction.details
    fill_in "Title", with: @c_transaction.title
    fill_in "User", with: @c_transaction.user_id
    click_on "Update C transaction"

    assert_text "C transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a C transaction" do
    visit c_transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C transaction was successfully destroyed"
  end
end
