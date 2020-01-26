json.extract! respondent, :id, :title, :name, :string, :lead_date, :email, :lead_source, :select_executive, :phone, :lead_type, :company_name, :company_address, :site, :created_at, :updated_at
json.url respondent_url(respondent, format: :json)
