module Secrets
  def self.method_missing(attr)
    Rails.application.secrets.send(attr)
  end
end
