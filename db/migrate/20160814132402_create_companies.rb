class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :subdomain, null: false

      t.timestamps null: false
    end

    add_index :companies, :subdomain, unique: true
  end
end
