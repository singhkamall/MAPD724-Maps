import UIKit
import MapKit

class ViewController: UIViewController {

    let long = -79.3832
    let latt = 43.6532
    var delta = 5.0
    let mapLocation = CLLocationCoordinate2DMake(43.6532, -79.3832)
    
    @IBOutlet weak var map: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loc = CLLocationCoordinate2DMake(latt, long)
        let span = MKCoordinateSpanMake(delta, delta)
        let reg = MKCoordinateRegionMake(loc, span)
        self.map.region = reg
        
        let ann = MKPointAnnotation()
        ann.coordinate = self.mapLocation
        ann.title = "Toronto"
        ann.subtitle = "A place that's really cool"
        self.map.addAnnotation(ann)
        
    }

    @IBAction func seeInMapApp(_ sender: UIButton) {
        let placemark = MKPlacemark(coordinate: self.mapLocation, addressDictionary: nil)
        let mapitem = MKMapItem(placemark: placemark)
        mapitem.name = "A really icy place"
        
        // opens out location in the map app
        mapitem.openInMaps(launchOptions: [
            MKLaunchOptionsMapTypeKey: MKMapType.standard.rawValue,
            MKLaunchOptionsMapCenterKey: self.map.region.center,
            MKLaunchOptionsMapSpanKey: self.map.region.span
            ])
    }
}
