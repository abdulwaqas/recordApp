require "application_system_test_case"

class STransactionsTest < ApplicationSystemTestCase
  setup do
    @s_transaction = s_transactions(:one)
  end

  test "visiting the index" do
    visit s_transactions_url
    assert_selector "h1", text: "S Transactions"
  end

  test "creating a S transaction" do
    visit s_transactions_url
    click_on "New S Transaction"

    fill_in "Balance", with: @s_transaction.balance
    fill_in "Credit", with: @s_transaction.credit
    fill_in "Debit", with: @s_transaction.debit
    fill_in "Details", with: @s_transaction.details
    fill_in "Supplier", with: @s_transaction.supplier_id
    fill_in "Title", with: @s_transaction.title
    fill_in "User", with: @s_transaction.user_id
    click_on "Create S transaction"

    assert_text "S transaction was successfully created"
    click_on "Back"
  end

  test "updating a S transaction" do
    visit s_transactions_url
    click_on "Edit", match: :first

    fill_in "Balance", with: @s_transaction.balance
    fill_in "Credit", with: @s_transaction.credit
    fill_in "Debit", with: @s_transaction.debit
    fill_in "Details", with: @s_transaction.details
    fill_in "Supplier", with: @s_transaction.supplier_id
    fill_in "Title", with: @s_transaction.title
    fill_in "User", with: @s_transaction.user_id
    click_on "Update S transaction"

    assert_text "S transaction was successfully updated"
    click_on "Back"
  end

  test "destroying a S transaction" do
    visit s_transactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "S transaction was successfully destroyed"
  end
end
