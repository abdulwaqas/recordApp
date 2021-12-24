class CTransactionsController < InheritedResources::Base
before_action :set_c_transaction, only: %i[ show edit update destroy ]
  

  def new
    @customers=Customer.all
    @cust=@customers.name
    @c_transaction = CTransaction.new
    @c_transaction.credit=params[:credit]
    @c_transaction.debit=params[:debit]

  
  end
  

  def create
    
    @c_transaction = CTransaction.new(c_transaction_params)
    @c_transaction.user_id= current_user.id
    @c_transaction.customer_id=$customer.id

    

    respond_to do |format|
      if @c_transaction.save
        format.html { redirect_to @c_transaction, notice: "Transction was successfully created." }
        format.json { render :show, status: :created, location: @c_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @c_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    
    @c_transaction.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Transction was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private

    def c_transaction_params
      params.require(:c_transaction).permit(:title, :details, :credit, :debit, :balance, :customer_id, :user_id)
    end
  
    def   set_c_transaction
      
      @c_transaction = CTransaction.find(params[:id])
    end
    

end
