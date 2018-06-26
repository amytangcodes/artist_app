class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)+@yourdomain.com\z/i
      record.errors[attribute] << (options[:message] || "wrong email address")
    end
  end
end