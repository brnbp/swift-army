import Foundation
import MapKit

class Map {
    var map: MKMapView
    
    init(_ map: MKMapView) {
        self.map = map
    }
    
    func load(lat: CLLocationDegrees, lon: CLLocationDegrees, delta: CLLocationDegrees = 0.05){
        let span = MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        
        let coordinates: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: span)
        
        map.setRegion(region, animated: true)
    }
    
    func addAnnotation(lat: CLLocationDegrees, lon: CLLocationDegrees) -> MKPointAnnotation{
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        
        map.addAnnotation(annotation)
        
        return annotation
    }
    
    func removeAnnotation(_ annotation: MKPointAnnotation) {
        map.removeAnnotation(annotation)
    }
}
