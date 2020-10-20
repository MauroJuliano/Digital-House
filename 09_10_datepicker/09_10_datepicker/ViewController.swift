//
//  ViewController.swift
//  09_10_datepicker
//
//  Created by Lestad on 2020-10-09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var checkInDatePicker: UIDatePicker!
    @IBOutlet weak var checkOutDataPicker: UIDatePicker!
    var dateChosse: String?
    var resortArray = [Resort]()
    var fidelius: Bool = false
    var dayWeek: Int = 0
    var dayWeekend: Int = 0
    @IBOutlet weak var rewardSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        rewardSwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        
        // Do any additional setup after loading the view.
    }
    @objc func switchChanged(rewardSwitch: UISwitch){
        if self.rewardSwitch.isOn{
            fidelius = true
        }else{
            fidelius = false
        }
    }
    func nextDay(in calendar: Calendar) -> Date?{
        return calendar.date(byAdding: .day,value: 1, to: self)
    }
    @IBAction func checkInDatePicker(_ sender: UIDatePicker) {
        let dateFormmater = DateFormatter()
        dateFormmater.dateStyle = DateFormatter.Style.short
        dateFormmater.dateFormat = "EEEE"
        let strDate = dateFormmater.string(from: sender.date)
        dateChosse = strDate
        
        
    }
    func setupDate(){
        if dateChosse == "Saturday" {
            dayWeekend = +1
        }
        if dateChosse == "Sunday" {
            dayWeekend = +1
        }
        print(dayWeekend)
    }
 
    
    @IBAction func searchButton(_ sender: Any) {
        setupDate()
        getData()
    }
    func getData(){
        let parque = Parque(fidelidade: fidelius, nome: "", classification: 3, taxaDiaUtil: dayWeek, taxaDiaCorrido: dayWeekend)
        print(parque.fidelidade)
    }
}

