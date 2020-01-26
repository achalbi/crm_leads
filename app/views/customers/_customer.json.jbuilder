json.extract! customer, :id, :title, :name, :string, :email, :phone, :company_name, :company_address, :site_name, :site_address, :hand_over_date, :created_at, :updated_at
json.url customer_url(customer, format: :json)
