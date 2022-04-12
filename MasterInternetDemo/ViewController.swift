//
//  ViewController.swift
//  MasterInternetDemo
//
//  Created by Ferdinand Urban on 11.04.2022.
//

import UIKit
import SnapKit

let CELL_IDENTIFIER: String = "tableViewCell"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var contentView: UIView!
  @IBOutlet weak var tableView1: UITableView!
  @IBOutlet weak var tableView2: UITableView!
  @IBOutlet weak var tableView3: UITableView!
  
  let dummyData1: [CellModel] = [
    CellModel(image: "motiondetect", description: "Motion Detection"),
    CellModel(image: "audio", description: "Noise Sesnsitivity"),
    CellModel(image: "pip", description: "Picture in Picture"),
    CellModel(image: "zoom", description: "Zoom"),
    CellModel(image: "nightlight", description: "Night Light"),
    CellModel(image: "multichild", description: "Multi-Child"),
    CellModel(image: "multiparents", description: "Multi-Parent"),
    CellModel(image: "twoway", description: "Two way video"),
    CellModel(image: "screenshot", description: "Make a screenshot"),
    CellModel(image: "siri", description: "Siri"),
    CellModel(image: "theme", description: "Skins")
  ]
  
  let dummyData2: [CellModel] = [
    CellModel(image: "holliday", description: "Use the app in hotel"),
    CellModel(image: "shareapp", description: "Sdilejte aplikaci s kamarady"),
    CellModel(image: "game", description: "Sbirejte body s gamifikaci")
  ]
  
  let dummyData3: [CellModel] = [
    CellModel(image: "mac", description: "MacOS App"),
    CellModel(image: "watch", description: "Apple Watch"),
    CellModel(image: "cameras", description: "Přidejte si HomeKitovou kameru")
  ]
    
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "How to use this app"
    let attrs = [NSAttributedString.Key.foregroundColor: UIColor.white]
    
    navigationController?.navigationBar.titleTextAttributes = attrs
    navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationController?.navigationBar.shadowImage = UIImage()
    navigationController?.navigationBar.isTranslucent = true
    
    tableView1.delegate = self
    tableView1.dataSource = self
    tableView1.layer.cornerRadius = 10
    tableView1.layer.backgroundColor = UIColor.cyan.cgColor
    tableView1.register(TableViewCell.self, forCellReuseIdentifier: CELL_IDENTIFIER)
    
    tableView2.delegate = self
    tableView2.dataSource = self
    tableView2.layer.cornerRadius = 10
    tableView2.layer.backgroundColor = UIColor.cyan.cgColor
    tableView2.register(TableViewCell.self, forCellReuseIdentifier: CELL_IDENTIFIER)
    
    tableView3.delegate = self
    tableView3.dataSource = self
    tableView3.layer.cornerRadius = 10
    tableView3.layer.backgroundColor = UIColor.cyan.cgColor
    tableView3.register(TableViewCell.self, forCellReuseIdentifier: CELL_IDENTIFIER)
    
    tableView1.snp.makeConstraints {
      $0.height.equalTo(CGFloat(dummyData1.count) * Sizes.tableRowHeight)
    }
    
    tableView2.snp.makeConstraints {
      $0.height.equalTo(CGFloat(dummyData2.count) * Sizes.tableRowHeight)
    }
    
    tableView3.snp.makeConstraints {
      $0.height.equalTo(CGFloat(dummyData3.count) * Sizes.tableRowHeight)
    }
    
    contentView.snp.remakeConstraints {
      $0.top.left.right.equalToSuperview()
      $0.width.equalToSuperview()
      $0.bottom.equalTo(tableView3.snp.bottom).offset(Offsets.bigMargin20)
    }    
  }
    
  // MARK: -- TABLE VIEW --
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return Sizes.tableRowHeight
  }
    
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    performSegue(withIdentifier: "motionDetected", sender: self)
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: CELL_IDENTIFIER,
                                             for: indexPath) as! TableViewCell
        
    if tableView === tableView1 {
      cell.data = dummyData1[indexPath.row]
    }
    
    if tableView === tableView2 {
      cell.data = dummyData2[indexPath.row]
    }
    
    if tableView === tableView3 {
      cell.data = dummyData3[indexPath.row]
    }
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch tableView {
      case tableView1:
        return dummyData1.count
      case tableView2:
        return dummyData2.count
      case tableView3:
        return dummyData3.count
      default:
        return 0
    }
  }
}
