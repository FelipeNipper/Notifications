//
//  ViewController.swift
//  Notifications
//
//  Created by Felipe Grosze Nipper de Oliveira on 15/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    private var notification: Notification = Notification()
    
    @IBAction func buttonAction(_ sender: Any) {
        notification.createNotification()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUserNotifications()
        view.backgroundColor = ColorGenerator().getColor()
        NotificationCenter.default.addObserver(self, selector: #selector(self.methodOfReceivedNotification(notification:)), name: NSNotification.Name("Posted"), object: nil)
        // Do any additional setup after loading the view.
    }
    
    func changeColor(){
        view.backgroundColor = ColorGenerator().getColor()
    }
    
    @objc func methodOfReceivedNotification(notification: NSNotification) {
        DispatchQueue.main.async {
            self.button.isEnabled = false
        }
    }
    
}

extension ViewController: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: (UNNotificationPresentationOptions) -> Void
    ) {
        button.isEnabled = true
        completionHandler(.banner)
    }
    
    
    private func configureUserNotifications() {
        UNUserNotificationCenter.current().delegate = self
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) async {
        switch response.actionIdentifier {
        case "change":
            changeColor()
            button.isEnabled = true
            break
        default:
            button.isEnabled = true
            break
            
        }
    }
}

