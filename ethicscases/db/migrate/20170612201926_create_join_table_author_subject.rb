class CreateJoinTableAuthorSubject < ActiveRecord::Migration[5.1]
  def change
    create_join_table :authors, :subjects do |t|
       t.index [:author_id, :subject_id]
       t.index [:subject_id, :author_id]
    end
  end
end
