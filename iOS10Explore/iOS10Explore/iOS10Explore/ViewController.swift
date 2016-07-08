//
//  ViewController.swift
//  iOS10Explore
//
//  Created by karthik on 7/1/16.
//  Copyright © 2016 Verizon. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var listArray: [String] = ["Speech Recognition", "2", "3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "iOS 10 Features"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listArray.count
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name:"Main",bundle: nil)
        let speechRecognitionVC = storyboard.instantiateViewController(withIdentifier: "SpeechRecognitionVC")
        self.navigationController?.pushViewController(speechRecognitionVC, animated: true)
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = self.listArray[(indexPath as NSIndexPath).row];
        return cell;
    }
}

