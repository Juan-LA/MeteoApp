//
//  HoursViewController.swift
//  MeteoApp
//
//  Created by Juan Liut on 25/02/23.
//

import UIKit

class HoursViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentCity = City(name: "", weatherToday: Weather(tempMax: 0, tempMin: 0, type: ""), weatherHours: [], weatherWeek: [])
    
    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
        
        table.layer.cornerRadius = 16
        
        //self.navigationItem.title = currentCity.name
        img.image = UIImage(named: currentCity.name)
    }
    
    //Table structure
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities[0].weatherHours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "hoursCell", for: indexPath) as! DayTableViewCell
        
        cell.dayLbl.text = "\(9+indexPath.row)"
        cell.img.image = UIImage(named: currentCity.weatherHours[indexPath.row].type)
        cell.tempLbl.text = "\(currentCity.weatherWeek[indexPath.row].tempMin)°  \(currentCity.weatherWeek[indexPath.row].tempMax)°"
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        cell.selectedBackgroundView = backgroundView
        
        return cell
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
