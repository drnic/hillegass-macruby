#
#  AppController.rb
#  KVCFun
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class AppController
  attr_accessor :fido
  
  def initialize
    self.setValue(5, forKey:"fido")
    puts self.valueForKey("fido")
    puts self.instance_variables.inspect
  end
  
  def incrementFido(sender)
    # TODO accessors don't seem to trigger didChangeValueForKey: message
    # self.fido += 1
    self.setValue(self.valueForKey("fido") + 1, forKey:"fido")
  end
end
