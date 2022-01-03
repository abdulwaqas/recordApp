class CTransactionsController < InheritedResources::Base
before_action :set_c_transaction, only: %i[ show edit update destroy ]
  

  def index
    authorize CTransaction
    @C_transaction = CTransaction.all
  end

  def new
    authorize CTransaction
    @customers=Customer.all
    @c_transaction = CTransaction.new
    @c_transaction.credit=params[:credit]
    @c_transaction.debit=params[:debit]

  end

  def show
    authorize CTransaction
  end


  def create
    authorize CTransaction
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

  def update
    authorize CTransaction
    @c_transaction = CTransaction.find(params[:id])
    respond_to do |format|
      if @c_transaction.update(c_transaction_params)
        format.html { redirect_to @c_transaction, notice: "Transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @c_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @c_transaction.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
    authorize CTransaction
  end


  def destroy
    authorize CTransaction
    @c_transaction.destroy
    respond_to do |format|
      format.html { redirect_to customer_url(:id => @c_transaction.customer), notice: "Transction was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private

    def c_transaction_params
      params.require(:c_transaction).permit(:title, :details, :credit, :debit, :balance, :customer_id, :user_id,:created_at)
    end
  
    def   set_c_transaction
      
      @c_transaction = CTransaction.find(params[:id])
    end
    

end
