//
//  ContactListVC.swift
//  ContactList
//
//  Created by Vijay Parmar on 01/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class ContactListVC: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tableView:UITableView!
    var dict = [["image":"profile","name":"Darshana vala","number":"6354011310"],
                ["image":"profile","name":"Vijay parmar","number":"9876543211"],
                ["image":"profile","name":"ami mehta","number":"9876543212"],
                ["image":"profile","name":"Alpesh shiyal","number":"9876543213"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dict.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let num = dict[indexPath.row]["number"]
        if let url = URL(string: "tel://\(num ?? "")") {
            UIApplication.shared.open(url)
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)as! Contact
        cell.imgProfile.image=UIImage(named: dict[indexPath.row]["image"]!)
        cell.lblName.text=dict[indexPath.row]["name"]
        cell.lblNumber.text=dict[indexPath.row]["number"]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
