import UIKit
import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    lazy var mapView = MGLMapView()

    override func loadView() {
        view = mapView
    }

    override func viewDidLoad() {
        mapView.delegate = self
    }

    func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
        let annotation = MGLPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        mapView.addAnnotation(annotation)
    }

    func mapView(_ mapView: MGLMapView, viewFor annotation: MGLAnnotation) -> MGLAnnotationView? {
        return AnnotationView(annotation: annotation, reuseIdentifier: nil)
    }
}

class AnnotationView: MGLAnnotationView {
    override init(annotation: MGLAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        accessibilityIdentifier = "annotation"
        bounds = CGRect(x: 0, y: 0, width: 20, height: 20)
        backgroundColor = .red
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
