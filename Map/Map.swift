import Foundation
import MapKit

class Map {
    var map: MKMapView
    
    init(_ map: MKMapView) {
        self.map = map
    }
    
    func load(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta: CLLocationDegrees = 0.05){
        let span = MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        
        let coordinates: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: coordinates, span: span)
        
        map.setRegion(region, animated: true)
    }
}