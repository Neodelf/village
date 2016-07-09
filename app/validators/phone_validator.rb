class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}\z/
      record.errors[attribute] << (options[:message] || I18n.t('activerecord.errors.wrong_format'))
    end
  end
end
