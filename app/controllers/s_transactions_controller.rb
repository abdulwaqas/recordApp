class STransactionsController < InheritedResources::Base

  private

    def s_transaction_params
      params.require(:s_transaction).permit(:title, :details, :credit, :debit, :balance, :supplier_id, :user_id)
    end

end
