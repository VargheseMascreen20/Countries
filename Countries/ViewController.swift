//
//  ViewController.swift
//  Countries
//
//  Created by DDUKK7 on 29/09/22.
//

import UIKit
struct Country {
    var isoCode: String
    var name: String
}
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let countries = [
        Country(isoCode: "at", name: "Austria"),
        Country(isoCode: "be", name: "Belgium"),
        Country(isoCode: "de", name: "Germany"),
        Country(isoCode: "el", name: "Greece"),
        Country(isoCode: "fr", name: "France"),
    ]
    let players = ["Messi","Neymar","Ronaldo"]
    let playerImg = [UIImage(named:"messi"),UIImage(named: "neymar"),UIImage(named: "ronaldo")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.players.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayersCell", for: indexPath) as! TableViewCell

        let player = self.players[indexPath.row]
        cell.labL.text = players[indexPath.row]
//        cell.detailTextLabel?.text = country.isoCode
        cell.img.image = playerImg[indexPath.row]

        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource  = self
        table.delegate = self
   
        let nib1 = UINib(nibName: "TableViewCell", bundle: nil)
        table.register(nib1, forCellReuseIdentifier: "PlayersCell")
      
       
        
    }
   
    // MARK: - Table view data source

    

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Countries"}

}
