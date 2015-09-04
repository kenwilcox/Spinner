//
//  Spinner.swift
//  Spinner
//
//  Created by Kenneth Wilcox on 8/30/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

public class Spinner: UIImageView {
  private var spinner: UIImage? = nil
  private var duration: NSTimeInterval = 1.0
  private var spinning = false
  
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
    if (duration != self.duration) {
      self.spinner = UIImage.animatedImageNamed("spinner-", duration: duration)
      self.image = self.spinner
    }
    self.duration = duration
  }
  
  public func toggleSpinner() {
    if (!spinning) {
      if (spinner == nil) {
        spinner = UIImage.animatedImageNamed("spinner-", duration: duration)
      }
      self.image = spinner
      spinning = true
    } else {
      self.image = nil
      spinning = false
    }
  }
}