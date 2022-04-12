//
//  TableViewCell.swift
//  MasterInternetDemo
//
//  Created by Ferdinand Urban on 11.04.2022.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  public var data: CellModel? = nil {
    didSet {
      if let theImageName = data?.image {
        self.loadImage(withName: theImageName)
      }
      
      if let theDesc = data?.description {
        self.loadDescription(withText: theDesc)
      }
    }
  }
  override func prepareForReuse() {
    super.prepareForReuse()
  }

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    loadContent()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func loadContent() {
    let iv = UIImageView()
    self.addSubview(iv)
    iv.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.left.equalToSuperview().offset(Offsets.smallMargin)
      $0.width.equalTo(30.0)
    }
    iconImageView = iv
    
    let l = UILabel()
    self.addSubview(l)
    
    l.snp.makeConstraints {
      $0.centerY.equalToSuperview()
      $0.left.equalTo(iconImageView.snp.right).offset(Offsets.bigMargin)
    }
    
    descriptionLabel = l
  }
  
  func loadImage(withName aName: String) {
    iconImageView.image = UIImage(named: aName)
  }
  
  func loadDescription(withText aText: String) {
    descriptionLabel.text = aText
  }
}
