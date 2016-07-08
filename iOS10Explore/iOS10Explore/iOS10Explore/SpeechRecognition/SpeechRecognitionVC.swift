//
//  SpeechRecognitionVC.swift
//  iOS10Explore
//
//  Created by karthik on 7/1/16.
//  Copyright © 2016 Verizon. All rights reserved.
//

import UIKit
import Speech



class SpeechRecognitionVC: UIViewController {

    @IBAction func speechRecognitionAction(_ sender: AnyObject) {
        let recognizer = SFSpeechRecognizer()
       // let path = Bundle.main().pathForResource("cairnomount_lo", ofType: "mp3")
        
        //let _url = URL.init(fileURLWithPath: path!)
        let _url = URL.init(string: "http://www.tonycuffe.com/mp3/cairnomount.mp3")
        let request = SFSpeechURLRecognitionRequest(url:_url! )
        recognizer?.recognitionTask(with: request, resultHandler: {
            (result, error) in
            print (result?.bestTranscription.formattedString)
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Speech Recognition"
        self.view.backgroundColor = UIColor.white()
        SFSpeechRecognizer.requestAuthorization { (SFSpeechRecognizerAuthorizationStatus) in
            
        }
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func TestSpeec() -> Void {
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
