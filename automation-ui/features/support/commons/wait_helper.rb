def await(timeout = Capybara.default_max_wait_time)
  timeout.times do
    break if yield

    sleep 1
  end
rescue Selenium::WebDriver::Error::StaleElementReferenceError => e
  puts 'Elemento avaliado não está mais na tela'
  puts e.full_message
rescue StandardError => e
  raise e
end

def wait_time(time)
  sleep time
end