//
//  ViewController.swift
//  CommunicationPatternPart1DelegateAndProtocol
//
//  Created by Anil Upadhyay on 13/09/17.
//  Copyright © 2017 Anil Upadhyay. All rights reserved.
//

import UIKit
let redNotification = "co.matrix.red"
let yellowNotification = "co.matrix.yellow"
class ViewController: UIViewController {
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    @IBOutlet weak var trash: UIImageView!
    let redNoti = Notification.Name(rawValue: redNotification)
    let yelloNoti = Notification.Name(rawValue: yellowNotification)
    var fileViewOrign: CGPoint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        createObservers()
        addPanGesture(view: mainImageView)
        fileViewOrign = mainImageView.frame.origin
        view.bringSubview(toFront: mainImageView)
    }
    func addPanGesture(view: UIView) {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    @objc func handlePan(sender: UIPanGestureRecognizer) {
        let fileView = sender.view!
        switch sender.state {
        case .began, .changed:
           moveViewWithPan(view: fileView, sender: sender)
            break
        case .ended:
            if fileView.frame.intersects(trash.frame){
                deleteView(view: fileView)
            }else{
               returnViewToOrigin(view: fileView)
            }
            break
        default:
            break
        }
    }
    func moveViewWithPan(view: UIView, sender: UIPanGestureRecognizer)  {
        let translation = sender.translation(in: view)

        view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
        sender.setTranslation(CGPoint.zero, in: view)
    }
    func returnViewToOrigin(view: UIView) {
        UIView.animate(withDuration: 0.3, animations: {
            view.frame.origin  = self.fileViewOrign
        })
       
    }
    func deleteView(view: UIView) {
        UIView.animate(withDuration: 0.3, animations: {
            view.alpha  = 0.0
        })
    }
    func createObservers() {
        // Red
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateColor(noti:)),name: redNoti, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateNameLabel(noti:)), name: redNoti, object: nil)
        // Yellow
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateColor(noti:)),name: yelloNoti, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateNameLabel(noti:)), name: yelloNoti, object: nil)

    }
    @objc func updateColor(noti: Notification) {
        let isRed = noti.name == redNoti
        self.view.backgroundColor = isRed ? .red : .yellow
    }
    @objc func updateNameLabel(noti: Notification) {
        let isRed = noti.name == redNoti
        self.nameLabel.text = isRed ? "test" : "test1"
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    @IBAction func chooseButtionAction(_ sender: Any) {
        let secondScreen = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
//        secondScreen.selectionDelegate = self
        present(secondScreen, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

