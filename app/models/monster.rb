class Monster < ApplicationRecord
  belongs_to :species
  belongs_to :trainer, required: false

  def name
    nickname || species.name
  end

  def captured?
    trainer.present?
  end
end
