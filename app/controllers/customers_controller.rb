class CustomersController < InheritedResources::Base
  before_action :set_customer, only: %i[ show edit update destroy ]

  def index
    authorize Customer
    @customers=Customer.all
    @c_transactions=CTransaction.all
    
  end

  def show
    authorize Customer
    @customer=Customer.find(params[:id])
    $customer=@customer
    @c_transactions=CTransaction.all

  end

  def create
    authorize Customer
    @customer = Customer.new(customer_params)
  
    if !(@customer.name.nil? ||@customer.name.empty?)
     
      respond_to do |format|
        if @customer.save
          format.html { redirect_to @customer, notice: "Customer was successfully created." }
          format.json { render :show, status: :created, location: @customer }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @customer.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:notice] = "Please fill Name box"
      redirect_to(request.referrer || root_path)
    end
    
  end

  def new
    authorize Customer
    @customer=Customer.new

  end

  def update 
    authorize Customer
    @customer = Customer.find(params[:id])
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "Customer was successfully updated." }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    authorize Customer

  end

  def destroy
    authorize Customer
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end

  end


  private

    def customer_params
      params.require(:customer).permit(:name, :phone, :email)
    end

    def set_customer
      
      @customer = Customer.find(params[:id])
    end

end
