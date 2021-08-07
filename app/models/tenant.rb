class Tenant < ApplicationRecord
  validates :subdomain, uniqueness: true
  after_create :create_apartment_tenant

  def create_apartment_tenant
    Apartment::Tenant.create self.subdomain
  end
end
