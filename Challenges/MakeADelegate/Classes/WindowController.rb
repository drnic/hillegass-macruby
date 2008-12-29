#
#  WindowController.rb
#  MakeADelegate
#
#  Created by Dr Nic on 29/12/08.
#  Copyright (c) 2008 Mocra. All rights reserved.
#

class WindowController
  def windowWillResize(window, toSize: proposedFrameSize)
    frameSize = NSSize.new(proposedFrameSize.width, proposedFrameSize.width*2)
    puts frameSize
    frameSize
  end
  
end
