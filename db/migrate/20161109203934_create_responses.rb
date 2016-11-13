class CreateResponses < ActiveRecord::Migration[5.0]
  def change

    create_table :responses do |t|
      t.string :name
      t.string :email
      t.string :response_phone

  	end
  end
end
