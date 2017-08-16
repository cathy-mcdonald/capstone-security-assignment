class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :subject
      t.string :text

      t.timestamps null: false
    end
  end
end
