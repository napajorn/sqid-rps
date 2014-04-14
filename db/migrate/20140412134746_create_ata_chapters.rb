class CreateAtaChapters < ActiveRecord::Migration
  def change
    create_table :ata_chapters do |t|
      t.string :chapter_name

      t.timestamps
    end
  end

  
end
