#
#  ListController.rb
#  Make A Data Source
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class ListController
  attr_accessor :list
  attr_accessor :listTableView, :itemField
  
  def initialize
    @list = []
  end
  
  def addItem(sender)
    list << itemField.stringValue
    listTableView.reloadData
  end
  
  def numberOfRowsInTableView(aTableView)
    list.size
  end
  
  def tableView(aTableView, objectValueForTableColumn: aTableColumn, row: rowIndex)
    list[rowIndex]
  end
  
end
