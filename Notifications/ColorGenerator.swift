//
//  ColorGenerator.swift
//  Notifications
//
//  Created by Felipe Grosze Nipper de Oliveira on 15/03/22.
//

import Foundation
import UIKit

class ColorGenerator{
    
    var colors = [UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                  UIColor(red: 255/255, green: 242/255, blue: 140/255, alpha: 1),
                                  UIColor(red: 242/255, green: 129/255, blue: 87/255, alpha: 1),
                                  UIColor(red: 242/255, green: 177/255, blue: 57/255, alpha: 1),
                                  UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                  UIColor(red: 242/255, green: 129/255, blue: 87/255, alpha: 1),
                                  UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                  UIColor(red: 2/255, green: 76/255, blue: 139/255, alpha: 1),
                                  UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                  UIColor(red: 206/255, green: 34/255, blue: 90/255, alpha: 1),
                                  UIColor(red: 137/255, green: 137/255, blue: 137/255, alpha: 1),
                                  UIColor(red: 243/255, green: 90/255, blue: 56/255, alpha: 1),
                                  UIColor(red: 5/255, green: 190/255, blue: 195/255, alpha: 1),
                                  UIColor(red: 2/255, green: 76/255, blue: 139/255, alpha: 1),
                                  UIColor(red: 192/255, green: 93/255, blue: 12/255, alpha: 1),
                                  UIColor(red: 192/255, green: 93/255, blue: 12/255, alpha: 1),
                                  UIColor(red: 5/255, green: 190/255, blue: 195/255, alpha: 1),
                                  UIColor(red: 206/255, green: 34/255, blue: 90/255, alpha: 1),
                                  UIColor(red: 2/255, green: 76/255, blue: 139/255, alpha: 1),
                                  UIColor(red: 243/255, green: 90/255, blue: 56/255, alpha: 1)]
    
    func getColor() -> UIColor {
        let color = colors[Int.random(in: 0..<colors.count)]
        print(color)
        return color
    }
}
