//
//  ViewController.swift
//  Notifications
//
//  Created by Felipe Grosze Nipper de Oliveira on 15/03/22.
//

import UIKit

class ViewController: UIViewController, UNUserNotificationCenterDelegate {
    
    private var notification: Notification = Notification()
    
    @IBAction func buttonAction(_ sender: Any) {
        notification.createNotification()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUserNotifications()
        view.backgroundColor = ColorGenerator().getColor()
        // Do any additional setup after loading the view.
    }
    
    func changeColor(){
        view.backgroundColor = ColorGenerator().getColor()
    }
    
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: (UNNotificationPresentationOptions) -> Void
    ) {
        completionHandler(.banner)
    }
    
    
    private func configureUserNotifications() {
        UNUserNotificationCenter.current().delegate = self
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) async {
        //print(response.actionIdentifier)
        switch response.actionIdentifier {
        case "change":
            print("Trocar")
            changeColor()
            break
        default:
            print("Manter")
            break
            
        }
    }
    
    
}

