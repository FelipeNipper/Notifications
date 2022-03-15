//
//  Notification.swift
//  Notifications
//
//  Created by Felipe Grosze Nipper de Oliveira on 15/03/22.
//

import Foundation
import UserNotifications

class Notification {
    
    private var userNotificationCenter = UNUserNotificationCenter.current()
    private var badgeNumber: Int = 0
    
    func createNotification(){
        let context = UNMutableNotificationContent()
        
        context.title = "New color! 🎨"
        context.subtitle = "You can now change the background color of your app!"
        context.body = "To change the current color to a new one, use this notification's actions."
        context.sound = .default
        context.badge = NSNumber(value: (badgeNumber + 1))
        context.userInfo = ["Ok" : "OK2"]
        context.interruptionLevel = .active
        
        let changeAction = UNNotificationAction(identifier: "change", title: "Change cor", options: [])
        let skipAction = UNNotificationAction(identifier: "skip", title: "Keep cor", options: [])
        
        let category = UNNotificationCategory(identifier: "categoryIdentifier", actions: [changeAction,skipAction], intentIdentifiers: [], options: [])
        
        userNotificationCenter.setNotificationCategories([category])
        
        context.categoryIdentifier = "categoryIdentifier"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: context, trigger: trigger)
        
        userNotificationCenter.add(request) { error in
            if error != nil {
                print(error)
            } else {
                self.badgeNumber += 1
            }
        }
        
    }
}
