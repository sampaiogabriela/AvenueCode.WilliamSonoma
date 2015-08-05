Before do
    @browser = Watir::Browser.new :firefox
end

After do |scenario|
   @browser.close
end


After do
	@browser.quit
end