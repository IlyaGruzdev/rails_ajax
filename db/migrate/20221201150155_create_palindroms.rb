class CreatePalindroms < ActiveRecord::Migration[7.0]
  def change
    create_table :palindroms do |t|
      t.integer :value
      t.string :total

      t.timestamps
    end
  end
end
