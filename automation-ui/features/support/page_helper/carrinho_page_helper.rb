Dir[File.join(File.dirname(__FILE__), '../*_page.rb')].map { |file| require file }

module PageObjects
  def home
    @home ||= Pages::Home.new
  end
end
