class STransactionsController < InheritedResources::Base
  before_action :set_s_transaction, only: %i[ show edit update destroy ]

  def index
    authorize STransaction
    @s_transaction = STransaction.all

  end
  def new
    authorize STransaction
    @suppliers=Supplier.all
    @s_transaction = STransaction.new
    @s_transaction.credit=params[:credit]
    @s_transaction.debit=params[:debit]

  end

  def show
    authorize STransaction
  end


  def create
    authorize STransaction
    @s_transaction = STransaction.new(s_transaction_params)
    @s_transaction.user_id= current_user.id
    @s_transaction.supplier_id=$supplier.id

    if !(@c_transaction.title.nil? ||@c_transaction.title.empty?)


      respond_to do |format|
        if @s_transaction.save
          format.html { redirect_to @s_transaction, notice: "Transction was successfully created." }
          format.json { render :show, status: :created, location: @s_transaction }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @s_transaction.errors, status: :unprocessable_entity }
        end
      end
    end
  end


  def update
    @s_transaction = STransaction.find(params[:id])
    authorize STransaction
    respond_to do |format|
      if @s_transaction.update(s_transaction_params)
        format.html { redirect_to @s_transaction, notice: "Transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @s_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @s_transaction.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
    authorize STransaction
  end


  def destroy
    authorize STransaction

    @s_transaction.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_url, notice: "Transction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def s_transaction_params
      params.require(:s_transaction).permit(:title, :details, :credit, :debit, :balance, :supplier_id, :user_id,:created_at)
    end
    def   set_s_transaction
      
      @s_transaction = STransaction.find(params[:id])
    end
    

end
