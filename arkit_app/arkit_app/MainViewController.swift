//
//  MainViewController.swift
//  arkit_app
//
//  Created by yusuke.y on 2018/08/08.
//  Copyright © 2018年 yusuke.y. All rights reserved.
//

import UIKit

class MainViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    
    //tableViewに渡す配列
    let cells = ["アリシア"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "itemcell", for: indexPath)
        cell.textLabel!.text = "アリシア"
        return cell
    }
}
