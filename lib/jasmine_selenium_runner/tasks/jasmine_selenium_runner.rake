namespace :jasmine_selenium_runner do
  task :setup do
    require File.join('jasmine_selenium_runner', 'configure_jasmine')
    JasmineSeleniumRunner::ConfigureJasmine.install_selenium_runner
  end
end

task 'jasmine:require' => ['jasmine_selenium_runner:setup']
