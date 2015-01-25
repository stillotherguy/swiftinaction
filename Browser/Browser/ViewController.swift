//
//  ViewController.swift
//  Browser
//
//  Created by Ethan on 15-1-25.
//  Copyright (c) 2015年 Ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnGo: UIButton!
    @IBOutlet var wv: UIWebView!
    @IBOutlet var urlInput: UITextField!
    
    @IBAction func btnGoClicked(sender:AnyObject){
        wv.loadRequest(NSURLRequest(URL: NSURL(string: urlInput!.text)!))
        urlInput.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

