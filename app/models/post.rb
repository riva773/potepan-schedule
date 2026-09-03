class Post < ApplicationRecord
  validate :end_date_cannot_be_before_start_date

  def end_date_cannot_be_before_start_date
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "開始日よりも前の日付は選べません")
    end
  end
end
