class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :newsletter_email

      t.timestamps
    end
  end
end
