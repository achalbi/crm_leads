json.extract! employee, :id, :name, :email, :status, :password, :address, :created_at, :updated_at
json.url employee_url(employee, format: :json)
