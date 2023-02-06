<<<<<<< HEAD
json.extract! company, :id, :name, :created_at, :updated_at
=======
json.extract! company, :id, :name, :Address, :phone, :status, :created_at, :updated_at
>>>>>>> ff9fa4288ea21eff91f5e459b353f2e4b07899e0
json.url company_url(company, format: :json)
