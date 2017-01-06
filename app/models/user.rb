class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  # validates :name, presence: true
  # validates :password, presence: true, on: :create
  # validates :happiness, presence: true
  # validates :nausea, presence: true
  # validates :height, presence: true
  # validates :tickets, presence: true

  def mood
    unless nausea.blank? && happiness.blank?
      nausea > happiness ? "sad" : "happy"
    end
  end

end
