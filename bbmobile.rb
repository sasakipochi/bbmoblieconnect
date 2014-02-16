#!/usr/bin/ruby

userid = "***userid***@wig"
passwd = "***passwd***"

require "watir"

browser = Watir::Browser.new :phantomjs
#browser = Watir::Browser.new :firefox
browser.goto('http://www.yahoo.co.jp')  # dummy page 
browser.text_field(:name, 'UserName').set(userid)
browser.text_field(:name, 'Password').set(passwd)
browser.button(:name, 'button').click
sleep 5
browser.close


