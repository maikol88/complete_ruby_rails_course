module SvgHelper
  # TO use just do <%= svg 'rails-logo' %> on a view
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}.svg"
    return File.read(file_path).html_safe if File.exists?(file_path)
    '(not found)'
  end
end