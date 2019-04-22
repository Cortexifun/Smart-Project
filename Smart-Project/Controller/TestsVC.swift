//
//  TestsVC.swift
//  Smart-Project
//
//  Created by Omid on 23.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class TestsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var testsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testsTableView.dataSource = self
        testsTableView.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getTests().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell") as? TestsCell {
            let test = DataService.instance.getTests()[indexPath.row]
            cell.updateViews(test: test)
            return cell
        } else {
            return TestsCell()
        }
    }
    
    

}
