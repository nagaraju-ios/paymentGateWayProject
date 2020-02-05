//
//  ViewController.swift
//  paymentGateWayProject
//
//  Created by THOTA NAGARAJU on 2/5/20.
//  Copyright © 2020 THOTA NAGARAJU. All rights reserved.
//

import UIKit
import Razorpay

class ViewController: UIViewController,RazorpayPaymentCompletionProtocol{
    
    
    var rozarpaystored:Razorpay!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
         rozarpaystored = Razorpay.initWithKey("rzp_live_3Sk6HSF3G1ITkl",andDelegate:self)
        //showPaymentForm()
        // Do any additional setup after loading the view.
    }


    @IBAction func showPaymentBtn(_ sender: Any) {
        
       showPaymentForm()
        
    }
    func onPaymentError(_ code: Int32, description str: String) {
        print("error")
    }
    
    func onPaymentSuccess(_ payment_id: String) {
        print("sucess")
    }

 func showPaymentForm(){
    let options: [String:Any] = [                "amount": "100",
        "currency": "INR",               "description": "purchase description",                "order_id": "inv_ED2iH5m0XRDNYC",                "image": "https://url-to-image.png",                "name": "business or product name","prefill": [                    "contact": "9652763276",                    "email": "foo@bar.com"],                "theme": [ "color": "#F37254"              ]
    ]
    rozarpaystored.open(options)
}
}
