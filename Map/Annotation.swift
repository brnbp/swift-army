import Foundation
import MapKit

class Annotation {
    var map: MKMapView
    
    init(_ map: MKMapView) {
        self.map = map
    }

    func add(latitudelat: CLLocationDegrees, longitude: CLLocationDegrees, title: String = "Point Marked") -> MKPointAnnotation{
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        annotation.title = title
        
        map.addAnnotation(annotation)
        
        return annotation
    }
    
    func remove(_ annotation: MKPointAnnotation) {
        map.removeAnnotation(annotation)
    }
}