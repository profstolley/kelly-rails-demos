class CreateJoinTableCaseSubject < ActiveRecord::Migration[5.1]
  def change
    create_join_table :cases, :subjects do |t|
      t.index [:case_id, :subject_id]
      t.index [:subject_id, :case_id]
    end
  end
end
