class CreateConfirmars < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmars do |t|
      t.string :nome
      t.integer :telefone
      t.integer :idade

      t.timestamps
    end
  end
end
