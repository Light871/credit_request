class CreateLoanRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :loan_requests do |t|
      t.integer :age, null: false
      t.string :gender, null: false
      t.integer :salary, null: false
      t.boolean :history_available, null: false
      t.integer :amount, null: false
      t.integer :score, null: false
      t.boolean :approved, null: false

      t.timestamps
    end
  end
end
