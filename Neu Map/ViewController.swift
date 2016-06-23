//
//  ViewController.swift
//  Neu Map
//
//  Created by iMac_14 on 6/23/2559 BE.
//  Copyright © 2559 Chanidapha. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    
    @IBOutlet weak var myMapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myLat:CLLocationDegrees = 16.422313
        var myLng:CLLocationDegrees = 102.816077
        
        var latDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        var  neuLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLng)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(neuLocation, theSpan)
        
        self.myMapView.setRegion(theRegion, animated: true)
        
        var neuAnnotation = MKPointAnnotation()
        neuAnnotation.coordinate = neuLocation
        neuAnnotation.title = "มหาวิทยาลัยภาคตะวันออกเฉียงเหนือ"
        neuAnnotation.subtitle = "จังหวัด ขอนแก่น"
        
        self.myMapView.addAnnotation(neuAnnotation)
        
        
        
        
        
        
        
        
        
        
    }  // viewDidload

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

