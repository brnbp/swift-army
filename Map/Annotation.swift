import Foundation
import MapKit

class Annotation {
    var map: MKMapView
    
    init(_ map: MKMapView) {
        self.map = map
    }

    func add(lat: CLLocationDegrees, lon: CLLocationDegrees, title: String = "Point Marked") -> MKPointAnnotation{
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        annotation.title = title
        
        map.addAnnotation(annotation)
        
        return annotation
    }
    
    func remove(_ annotation: MKPointAnnotation) {
        map.removeAnnotation(annotation)
    }
}