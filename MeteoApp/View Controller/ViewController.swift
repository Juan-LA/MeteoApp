//
//  ViewController.swift
//  MeteoApp
//
//  Created by Juan Liut on 25/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
        table.layer.cornerRadius = 16
        
        
    }

    //For the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        
        //Content cell
        cell.city.text = cities[indexPath.row].name
        cell.cityImg.image = UIImage(named: cities[indexPath.row].name)
        cell.temp.text = String (cities[indexPath.row].weatherToday.tempMax)
        cell.icon.image = UIImage(named: cities[indexPath.row].weatherToday.type)
        cell.weather.text = cities[indexPath.row].weatherToday.type
        
        //Layout cell
        cell.layer.cornerRadius = 16
        cell.cityImg.layer.cornerRadius = 16
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = .white
        cell.selectedBackgroundView = backgroundView
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailsVC") as? DetailsViewController
        
        detailsVC?.currentCity = cities[indexPath.row]
        
        
        
        self.navigationController?.pushViewController(detailsVC ?? UIViewController(), animated: true)
         
    }
    
    
}

