class Post < ApplicationRecord
  validates :title, :start_date, :end_date, presence: true
  validates :title, length: { maximum: 20 }
  validate :end_date_cannot_be_before_start_date

  def end_date_cannot_be_before_start_date
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "は、開始日よりも前の日付は選べません")
    end
  end
end
