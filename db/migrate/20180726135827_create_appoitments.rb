class CreateAppoitments < ActiveRecord::Migration[5.2]
  def change
    create_table :appoitments do |t|
        t.datetime :date
        t.belongs_to :doctor, foreign_key: true
        t.belongs_to :patient, foreign_key: true

      t.timestamps
    end
  end
end
