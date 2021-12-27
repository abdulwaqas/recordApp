class SuppliersController < InheritedResources::Base
  before_action :set_supplier, only: %i[ show edit update destroy ]

  def index
    @suppliers=Supplier.all
    @s_transactions=STransaction.all
  end

  def show
    @supplier=Supplier.find(params[:id])
    $supplier=@supplier
    @s_transactions=STransaction.all
  end


  private

    def supplier_params
      params.require(:supplier).permit(:name, :phone, :email)
    end
    def set_supplier
      
      @supplier = Supplier.find(params[:id])
    end

end
