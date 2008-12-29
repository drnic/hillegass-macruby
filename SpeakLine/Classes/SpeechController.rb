#
#  SpeechController.rb
#  SpeakLine
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class SpeechController
	attr_accessor :textField, :startButton, :stopButton
	attr_accessor :speechSynth, :voicesTableView
	attr_accessor :voiceList
	
	def initialize
		@speechSynth = NSSpeechSynthesizer.alloc.initWithVoice(nil)
		@voiceList = NSSpeechSynthesizer.availableVoices
		speechSynth.delegate = self
	end
	
	def awakeFromNib
		stopButton.enabled = false
		defaultVoice = NSSpeechSynthesizer.defaultVoice
		defaultRow = voiceList.indexOfObject(defaultVoice)
		voicesTableView.selectRow(defaultRow, byExtendingSelection: false)
		voicesTableView.scrollRowToVisible(defaultRow)
	end

	def sayIt(sender)
		if textField.stringValue.size > 0
			speechSynth.startSpeakingString(textField.stringValue)
			stopButton.enabled      = true
			startButton.enabled     = false
			voicesTableView.enabled = false
		end
	end

	def stopIt(sender)
		speechSynth.stopSpeaking
		stopButton.enabled = false
		startButton.enabled = true
		voicesTableView.enabled = true
	end
	
	def speechSynthesizer(sender, didFinishSpeaking: success)
		stopButton.enabled = false
		startButton.enabled = true
		voicesTableView.enabled = true
	end

	def numberOfRowsInTableView(aTableView)
		voiceList.count
	end
	
	def tableView(aTableView, objectValueForTableColumn: aTableColumn, row: rowIndex)
		voice = voiceList.objectAtIndex(rowIndex)
		NSSpeechSynthesizer.attributesForVoice(voice).objectForKey:"VoiceName"
	end
	
	def tableViewSelectionDidChange(aNotification)
		return if voicesTableView.selectedRow == -1
		speechSynth.voice = voiceList.objectAtIndex(voicesTableView.selectedRow)
	end
	
	
end
