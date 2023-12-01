class AddCompanyNameToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :company_name, :string
  end
end
