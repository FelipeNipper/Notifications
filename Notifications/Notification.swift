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
        
        context.title = "Nova Cor!"
        context.subtitle = "Você pode trocar a cor de fundo do seu app!"
        context.body = "Para trocar a cor atual por outra aleatória, utilize as ações dessa notificação."
        context.sound = .default
        context.badge = NSNumber(value: (badgeNumber + 1))
        context.userInfo = ["Ok" : "OK2"]
        context.interruptionLevel = .active
        
        let changeAction = UNNotificationAction(identifier: "change", title: "Trocar cor", options: [])
        let skipAction = UNNotificationAction(identifier: "skip", title: "Ficar com a cor", options: [])
        
        let category = UNNotificationCategory(identifier: "categoryIdentifier", actions: [changeAction,skipAction], intentIdentifiers: [], options: [])
        
        userNotificationCenter.setNotificationCategories([category])
        
        context.categoryIdentifier = "categoryIdentifier"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
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
