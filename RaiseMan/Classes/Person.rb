#
#  Person.rb
#  RaiseMan
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class Person
  attr_accessor :personName, :expectedRaise
  
  def initialize
    @personName    = "New person"
    @expectedRaise = 5.0
  end
end
