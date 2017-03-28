//
//  VideoVC.swift
//  PartyRock
//
//  Created by Ammad on 25/01/2017.
//  Copyright © 2017 Ammad. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    @IBOutlet var titleLbl: UILabel!
    
    
    private var _partyRock : PartyRock!
    var partyRock:PartyRock{
        get{
    return _partyRock
            }
        set {
    _partyRock = newValue
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = partyRock.videoTitle
        webview.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
