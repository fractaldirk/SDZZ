class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.text :date
      t.text :start_time
      t.text :end_time
      t.text :event
      t.text :content

      t.timestamps
    end
  end
end
