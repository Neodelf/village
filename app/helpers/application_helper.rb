module ApplicationHelper
  def stead_status(status)
    status == 'free' ? 'Свободен' : 'Занят'
  end
end
