class Shop < ApplicationRecord
    before_destroy :destory_tenant
    after_create :create_tenant 



private

    def create_tenant
        Apartment::Tenant.create(subdomain)
        
    end

    def destory_tenant
        shop = Shop.find(self.id)
        Apartment::Tenant.drop(shop.subdomain)
       
        
    end
end
