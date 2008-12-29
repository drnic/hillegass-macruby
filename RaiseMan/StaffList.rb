#
#  StaffList.rb
#  RaiseMan
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class StaffList < NSDocument
  attr_accessor :employees
  
  def initialize
    @employees = []
  end
  
  def employees=(newEmployees)
    return if @employees == newEmployees
    @employees = newEmployees
  end
  
  # for reading

  def countOfEmployees
     @employees.length
  end

  def objectInEmployeesAtIndex(i)
     @employees[i]
  end

  # for writing

  def insertObject(object, inEmployeesAtIndex:i)
     @employees[i,0] = object
  end

  def removeObjectFromEmployeesAtIndex(i)
     @employees.delete_at(i)
  end

  # you can also implement:

  def replaceObjectInEmployeesAtIndex(i, withObject:object)
     @employees[i, 1] = object
  end
  
  
  def windowNibName
    # Implement this to return a nib to load OR implement
    # -makeWindowControllers to manually create your controllers.
    return "StaffList"
  end

  def dataRepresentationOfType(type)
    # Implement to provide a persistent data representation of your
    # document OR remove this and implement the file-wrapper or file
    # path based save methods.
    return nil
  end

  def loadDataRepresentation(data, ofType: type)
    # Implement to load a persistent data representation of your
    # document OR remove this and implement the file-wrapper or file
    # path based load methods.
    return true
  end

end
