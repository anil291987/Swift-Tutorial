//
//  SecondViewController.swift
//  CommunicationPatternPart1DelegateAndProtocol
//
//  Created by Anil Upadhyay on 13/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit
//protocol SideSelectionDelegate {
//    func didTapChoice(image: UIImage?, name: String, color: UIColor)
//}
class SecondViewController: UIViewController {
//    var selectionDelegate: SideSelectionDelegate!
    @IBAction func firstButtonAction(_ sender: Any) {
//        selectionDelegate.didTapChoice(image: UIImage(named: "name"), name: "dark", color: .red)
        let name = Notification.Name(rawValue: redNotification)
        NotificationCenter.default.post(name: name, object: nil)

        dismiss(animated: true, completion: nil)
    }
    @IBAction func secondButtonAction(_ sender: Any) {
//        selectionDelegate.didTapChoice(image: UIImage(named: "name"), name: "dark", color: .yellow)
        let name = Notification.Name(rawValue: yellowNotification)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
