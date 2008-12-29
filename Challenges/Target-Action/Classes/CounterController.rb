#
#  CounterController.rb
#  Target-Action
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class CounterController
	attr_accessor :labelField, :textField

	def awakeFromNib
		labelField.stringValue = "???"
		textField.stringValue  = ""
	end
	
	def countCharacters(sender)
		labelField.StringValue = "'#{textField.stringValue}' has #{textField.stringValue.size} characters"
	end
end
