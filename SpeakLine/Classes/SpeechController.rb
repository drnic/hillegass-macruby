#
#  SpeechController.rb
#  SpeakLine
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class SpeechController
	attr_accessor :textField, :startButton, :stopButton
	attr_accessor :speechSynth
	
	def initialize
		@speechSynth = NSSpeechSynthesizer.alloc.initWithVoice(nil)
		speechSynth.delegate = self
	end
	
	def awakeFromNib
		stopButton.enabled = false
	end

	def sayIt(sender)
		if textField.stringValue.size > 0
			speechSynth.startSpeakingString(textField.stringValue)
			stopButton.enabled = true
			startButton.enabled = false
		end
	end

	def stopIt(sender)
		speechSynth.stopSpeaking
		stopButton.enabled = false
		startButton.enabled = true
	end
	
	def speechSynthesizer(sender, didFinishSpeaking: success)
		
	end
	
end
