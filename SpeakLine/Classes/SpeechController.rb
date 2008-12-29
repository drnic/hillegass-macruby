#
#  SpeechController.rb
#  SpeakLine
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class SpeechController
	attr_accessor :textField
	attr_accessor :speechSynth
	
	def initialize
		@speechSynth = NSSpeechSynthesizer.alloc.initWithVoice(nil)
	end
	
	def sayIt(sender)
		if textField.stringValue.size > 0
			speechSynth.startSpeakingString(textField.stringValue)
		end
	end

	def stopIt(sender)
		speechSynth.stopSpeaking
	end
end
