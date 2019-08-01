class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|

      t.references :recipient, index: true
      t.references :sender, index: true
      t.timestamps
    end
  end
end
# on sépare les utilisateurs pour cette classe car il y a les gens
# qui envoient des messages et ceux qui les recoivent
