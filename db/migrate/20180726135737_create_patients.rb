class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
        t.string :first_name
        t.string :last_name
    
      t.timestamps
    end
  end
end


# first_name, qui est un string
# un last_name, qui est un string
# un specialty, qui est un string
# un postal_code
