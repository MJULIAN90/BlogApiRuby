class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :published, inclusion: { in: [true, false]} # no se puede usar el presence porque si es un boleano false nos da vacio para boleanos es mejor usar inclusion
  validates :user_id, presence: true
end
