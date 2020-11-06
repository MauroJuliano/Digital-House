//
//  ViewController.swift
//  iList
//
//  Created by Lestad on 2020-11-06.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    @IBOutlet var mapview: MKMapView!
    var latitude: Double?
    var longitude: Double?
    var arrayPlaces = [CustomLocation]()
    @IBOutlet var segmented: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        mapview.delegate = self
        
        var location = CLLocation(latitude: 49.283049, longitude: -123.104447)
       
        arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                           title: "The Freek Gastown",
                                           subtitle: "Takeout, Delivery",
                                           category: "Restaurant"))
             
        location = CLLocation(latitude: 49.282739, longitude: -123.104793)
        arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                           title: "Tacofino Taco Bar",
                                           subtitle: "Takeout, Delivery",
                                           category: "Restaurant"))

        location = CLLocation(latitude: 49.280851, longitude: -123.107824)
        arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                           title: "Taishoken Ramen",
                                           subtitle: "Takeout, Delivery",
                                           category: "Restaurant"))

        location = CLLocation(latitude: 49.280086, longitude: -123.108584)
        arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                           title: "Pizzeria Ludica",
                                           subtitle: "Takeout, Delivery",
                                           category: "Restaurant"))
        
        location = CLLocation(latitude: 49.266741, longitude: -123.069458)
        arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                           title: "Kishimoto Japanese",
                                           subtitle: "Takeout, Delivery",
                                           category: "Restaurant"))
        centerMapOn(location: location)
        mapview.addAnnotations(arrayPlaces)
        
        location = CLLocation(latitude: 49.283049, longitude: -123.104447)
        centerMapOn(location: location)
    }
    
    func centerMapOn(location: CLLocation) {
        
        let region = MKCoordinateRegion(center: location.coordinate,
                                        latitudinalMeters: 1000,
                                        longitudinalMeters: 1000)
        mapview.setRegion(region, animated: true)
    }
    @IBAction func indexChanged(_ sender: Any) {
        switch  segmented.selectedSegmentIndex {
        case 0:
            mapview.removeAnnotations(mapview.annotations)
            var location = CLLocation(latitude: 49.283049, longitude: -123.104447)
           
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "The Freek Gastown",
                                               subtitle: "Takeout, Delivery",
                                               category: "Restaurant"))
                 
            location = CLLocation(latitude: 49.282739, longitude: -123.104793)
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "Tacofino Taco Bar",
                                               subtitle: "Takeout, Delivery",
                                               category: "Restaurant"))

            location = CLLocation(latitude: 49.280851, longitude: -123.107824)
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "Taishoken Ramen",
                                               subtitle: "Takeout, Delivery",
                                               category: "Restaurant"))

            location = CLLocation(latitude: 49.280086, longitude: -123.108584)
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "Pizzeria Ludica",
                                               subtitle: "Takeout, Delivery",
                                               category: "Restaurant"))
            
            location = CLLocation(latitude: 49.266741, longitude: -123.069458)
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "Kishimoto Japanese",
                                               subtitle: "Takeout, Delivery",
                                               category: "Restaurant"))
            centerMapOn(location: location)
            mapview.addAnnotations(arrayPlaces)
        default:
            mapview.removeAnnotations(mapview.annotations)
            
            var location = CLLocation(latitude: 49.283049, longitude: -123.104447)
            location = CLLocation(latitude: 49.264200, longitude: -123.070000)
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "City Avenue market",
                                               subtitle: "Takeout, Delivery",
                                               category: "Market"))
            
            location = CLLocation(latitude: 49.271431, longitude: -123.089336)
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "Vancouver Flea Market",
                                               subtitle: "Takeout, Delivery",
                                               category: "Market"))
            
            location = CLLocation(latitude: 49.282963, longitude: -123.042398)
            arrayPlaces.append(CustomLocation(coordinate: location.coordinate,
                                               title: "Hastings Park Farmers Market",
                                               subtitle: "Takeout, Delivery",
                                               category: "Market"))
            centerMapOn(location: location)
            mapview.addAnnotations(arrayPlaces)
        }
    }
    

}
extension ViewController: MKMapViewDelegate{
    
}
