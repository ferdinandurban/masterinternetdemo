//
//  ViewController2.swift
//  MasterInternetDemo
//
//  Created by Ferdinand Urban on 12.04.2022.
//

import UIKit
import SnapKit

class ViewController2: UIViewController {

  @IBOutlet weak var view1: UIView!
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var descriptionTextView: UITextView!
  @IBOutlet weak var tutorialTitleLabel: UILabel!
  @IBOutlet weak var tutorialDescriptionLabel: UILabel!
  @IBOutlet weak var ytImageView: UIImageView!
  @IBOutlet weak var tutorialLabel: UILabel!
  @IBOutlet weak var tutorialClickView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    loadContent()
    
    let tap = UITapGestureRecognizer(target: self, action: #selector(openYT))
    tutorialClickView.addGestureRecognizer(tap)
  }
  
  func loadContent() {
    imageView.snp.makeConstraints {
      $0.top.equalToSuperview().offset(Offsets.bigMargin)
      $0.centerX.equalToSuperview()
      $0.width.equalToSuperview().multipliedBy(0.7)
    }
    
    titleLabel.snp.makeConstraints {
      $0.top.equalTo(imageView.snp.bottom).offset(Offsets.bigMargin20)
      $0.left.equalToSuperview().offset(Offsets.bigMargin)
      $0.width.equalToSuperview()
    }

    descriptionTextView.snp.makeConstraints {
      $0.top.equalTo(titleLabel.snp.bottom)
      $0.left.equalTo(titleLabel)
      $0.right.equalToSuperview().offset(-Offsets.bigMargin)
      $0.height.equalTo(170.0)
    }
  
    tutorialTitleLabel.snp.makeConstraints {
      $0.top.equalTo(view1.snp.bottom).offset(Offsets.bigMargin25)
      $0.centerX.equalToSuperview()
      $0.width.equalToSuperview()
    }
    
    tutorialDescriptionLabel.snp.makeConstraints {
      $0.top.equalTo(tutorialTitleLabel.snp.bottom).offset(Offsets.tinyMargin)
      $0.centerX.equalToSuperview()
      $0.width.equalToSuperview()
    }
    
    
    tutorialClickView.snp.makeConstraints {
      $0.top.equalTo(tutorialDescriptionLabel.snp.bottom).offset(Offsets.bigMargin20)
      $0.width.equalTo(Sizes.youtubeClickWidth)
      $0.height.equalTo(Sizes.youtubeClickHeight)
      $0.centerX.equalToSuperview()
    }
    
    tutorialClickView.layer.cornerRadius = Sizes.youtubeClickHeight / 2
    
    ytImageView.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.left.equalToSuperview().offset(Offsets.bigMargin28)
      $0.width.equalTo(21.0)
      $0.height.equalTo(15.0)
    }

    tutorialLabel.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.left.equalTo(ytImageView.snp.right).offset(Offsets.bigMargin20)
    }
    
  }
  
  @objc func openYT() {
    if let url = URL(string: "https://youtube.com") {
      UIApplication.shared.open(url)
    }
  }
}
