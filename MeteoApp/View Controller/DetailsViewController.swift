//
//  DetailsViewController.swift
//  MeteoApp
//
//  Created by Juan Liut on 25/02/23.
//

import UIKit

class DetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var days = ["Lunedì", "Martedì", "Mercoledì", "Giovedì", "Venerdì", "Sabato", "Domenica"]

    var currentCity = City(name: "", weatherToday: Weather(tempMax: 0, tempMin: 0, type: ""), weatherHours: [], weatherWeek: [Weather(tempMax: 0, tempMin: 0, type: "")])
    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var cityImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
        table.layer.cornerRadius = 16
        cityImg.image = UIImage(named: currentCity.name)
        self.navigationItem.title = currentCity.name
        
        
        
        if currentCity.name == "Milano" {
            let appearance = UINavigationBarAppearance(idiom: .phone)
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
            navigationItem.standardAppearance = appearance
            self.navigationController?.navigationBar.tintColor = .white
        } else {
            let appearance = UINavigationBarAppearance(idiom: .phone)
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
            navigationItem.standardAppearance = appearance
            self.navigationController?.navigationBar.tintColor = .black
        }
 
        
    
    }
    
    //Table structure
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "day", for: indexPath) as! DayTableViewCell
        
        cell.dayLbl.text = days[indexPath.row]
        cell.img.image = UIImage(named: currentCity.weatherWeek[indexPath.row].type)
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let hoursVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "hoursVC") as! HoursViewController
        hoursVC.currentCity = currentCity
        
        self.navigationController?.pushViewController(hoursVC, animated: true)
    }

}
