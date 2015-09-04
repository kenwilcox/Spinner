//
//  Spinner.swift
//  Spinner
//
//  Created by Kenneth Wilcox on 8/30/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

public class Spinner: UIImageView {
  var spinner = UIImage.animatedImageNamed("spinner-", duration: 1.0)
  var spinning = false
  
  required public init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    initialize()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    initialize()
  }
  
  init() {
    super.init(frame: CGRectZero)
    initialize()
  }
  
  private func initialize() {
    
  }
  
  public func setDuration(duration: NSTimeInterval) {
    spinner = UIImage.animatedImageNamed("spinner-", duration: duration)
  }
  
  public func toggleSpinner() {
    if (!spinning) {
      self.image = spinner
      spinning = true
    } else {
      self.image = nil
      spinning = false
    }
  }
}