#
#  Foo.rb
#  RandomApp
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

# see http://upstream-berlin.com/2008/10/28/cocoa-for-rubyists-with-macruby/
class Foo
	attr_accessor :textField

	def seed(sender)
		textField.StringValue = "Generator doesn't need to be seeded ;)"  
	end

	def generate(sender)
		textField.StringValue = (rand(100) + 1)
	end
	
	def awakeFromNib
		textField.ObjectValue = NSCalendarDate.calendarDate
	end
	
end
