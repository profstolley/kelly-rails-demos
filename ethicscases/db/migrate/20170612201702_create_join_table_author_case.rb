class CreateJoinTableAuthorCase < ActiveRecord::Migration[5.1]
  def change
    create_join_table :authors, :cases do |t|
       t.index [:author_id, :case_id]
       t.index [:case_id, :author_id]
    end
  end
end
