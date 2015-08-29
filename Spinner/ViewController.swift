//
//  ViewController.swift
//  Spinner
//
//  Created by Kenneth Wilcox on 8/29/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  let spinner = UIImage.animatedImageNamed("spinner-", duration: 1.0)
  var spinning = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonPressed(sender: AnyObject) {
    if (!spinning) {
      imageView.image = spinner
      spinning = true
    } else {
      imageView.image = nil
      spinning = false
    }
  }

}

