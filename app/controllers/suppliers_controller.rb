class SuppliersController < InheritedResources::Base
  before_action :set_supplier, only: %i[ show edit update destroy ]

  def index
    @suppliers=Supplier.all
    @s_transactions=STransaction.all
    authorize Supplier
  end

  def show
    @supplier=Supplier.find(params[:id])
    $supplier=@supplier
    @s_transactions=STransaction.all
  end


  def create
    authorize Supplier
    @supplier = Supplier.new(supplier_params)
  
    if !(@supplier.name.nil? ||@supplier.name.empty?)
     
      respond_to do |format|
        if @supplier.save
          format.html { redirect_to @supplier, notice: "Supplier was successfully created." }
          format.json { render :show, status: :created, location: @supplier }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @supplier.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:notice] = "Please fill Name box"
      redirect_to(request.referrer || root_path)
    end
    
  end

  def new
    authorize Supplier
    @supplier=Supplier.new

  end

  def update 
    authorize Supplier
    @supplier = Supplier.find(params[:id])
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to @supplier, notice: "Supplier was successfully updated." }
        format.json { render :show, status: :ok, location: @supplier }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @Supplier.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    authorize Supplier

  end

  def destroy
    authorize Supplier
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: "Customer was successfully destroyed." }
      format.json { head :no_content }
    end

  end


  private

    def supplier_params
      params.require(:supplier).permit(:name, :phone, :email)
    end
    def set_supplier
      
      @supplier = Supplier.find(params[:id])
    end

end
