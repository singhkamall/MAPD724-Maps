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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

