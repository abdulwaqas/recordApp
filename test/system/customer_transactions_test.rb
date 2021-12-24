require "application_system_test_case"

class CustomerTransactionsTest < ApplicationSystemTestCase
  setup do
    @customer_transaction = customer_transactions(:one)
  end

  test "visiting the index" do
    visit customer_transactions_url
    assert_selector "h1", text: "Customer Transactions"
  end

  test "creating a Customer transaction" do
    visit customer_transactions_url
    click_on "New Customer Transaction"

    fill_in "Balance", with: @customer_transaction.balance
    fill_in "Credit amount", with: @customer_transaction.credit_amount
    fill_in "Customer", with: @customer_transaction.customer_id
    fill_in "Debit amount", with: @customer_transaction.debit_amount
    fill_in "Details", with: @customer_transaction.details
    fill_in "Title", with: @customer_transaction.title
    fill_in "User", with: @customer_transaction.user
    click_on "Create Customer transaction"

    assert_text "Customer transaction was successfully created"
    click_on "Back"
  end

  test "updating a Customer transaction" do
    visit customer_transactions_url
    click_on "Edit", match: :first

    fill_in "Balance", with: @customer_transaction.balance
    fill_in "Credit amount", with: @customer_transaction.credit_amount
    fill_in "Customer", with: @customer_transaction.customer_id
    fill_in "Debit amount", with: @customer_transaction.debit_amount
    fill_in "Details", with: @customer_transaction.details
    fill_in "Title", with: @customer_transaction.title
    fill_in "User", with: @customer_transaction.user
    click_on "Update Customer transaction"

    assert_text "Customer transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer transaction" do
    visit customer_transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer transaction was successfully destroyed"
  end
end
