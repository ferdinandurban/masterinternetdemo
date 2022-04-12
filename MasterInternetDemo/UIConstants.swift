//
//  UIConstants.swift
//  MasterInternetDemo
//
//  Created by Ferdinand Urban on 11.04.2022.
//

import Foundation
import UIKit

struct Colors {
  static let grey = UIColor(red: 100.0, green: 100.0, blue: 100.0, alpha: 1.0)
  static let lightGreen = UIColor(red: 59.0, green: 207.0, blue: 175.0, alpha: 1.0)
  static let red = UIColor(red: 248.0, green: 81.0, blue: 102.0, alpha: 1.0)
  static let green = UIColor(red: 29.0, green: 212.0, blue: 198.0, alpha: 1.0)
  static let orange = UIColor(red: 223.0, green: 159.0, blue: 95.0, alpha: 1.0)
  static let text = UIColor(red: 51.0, green: 51.0, blue: 51.0, alpha: 1.0)
  
  static let backgroundColor = green
}

struct Offsets {
  static let tinyMargin: CGFloat = 4.0
  static let smallMargin: CGFloat = 8.0
  static let bigMargin: CGFloat = 15.0
  static let bigMargin20: CGFloat = 20.0
  static let bigMargin25: CGFloat = 25.0
  static let bigMargin28: CGFloat = 28.0
  static let bigMargin84: CGFloat = 84.0
}

struct Sizes {
  static let tableRowHeight: CGFloat = 56.0
  static let youtubeClickHeight: CGFloat = 33.0
  static let youtubeClickWidth: CGFloat = UIScreen.main.bounds.width / 2
}
