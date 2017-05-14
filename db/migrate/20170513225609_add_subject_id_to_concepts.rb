class AddSubjectIdToConcepts < ActiveRecord::Migration
  def change
    add_reference :concepts, :subject, index: true, foreign_key: true
  end
end
