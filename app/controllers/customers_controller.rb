class CustomersController < InheritedResources::Base
  before_action :set_customer, only: %i[ show edit update destroy ]

  def index
    @customers=Customer.all
    @c_transactions=CTransaction.all
  end

  def show
    @customer=Customer.find(params[:id])
    $customer=@customer
    @c_transactions=CTransaction.all
  end


  private

    def customer_params
      params.require(:customer).permit(:name, :phone, :email)
    end

    def set_customer
      
      @customer = Customer.find(params[:id])
    end

end
