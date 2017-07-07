class RemoveTopicIdFromTopics < ActiveRecord::Migration[5.0]
  def change
  	remove_column :topics, :topic_id, :integer
  end
end
