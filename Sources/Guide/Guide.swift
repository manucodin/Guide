import UIKit
import CoreLocation

public class Guide {
    public static func isInstalled(_ app: MapApp) -> Bool {
        return app.isInstalled
    }
    
    public static func launch(_ app: MapApp, route: MapRoute) {
        app.launch(route: route)
    }
    
    public static func createMapSelector(route: MapRoute, alertConfiguration: AlertConfiguration) -> UIAlertController {
        let alertController = UIAlertController(
            title: alertConfiguration.title,
            message: alertConfiguration.message,
            preferredStyle: alertConfiguration.style
        )
        
        Guide.getSupportedApps(withMode: route.mode).forEach{ mapApp in
            let alertAction = UIAlertAction(title: mapApp.name, style: .default) { _ in
                Guide.launch(mapApp, route: route)
                alertConfiguration.completionCallback?(mapApp)
            }
            alertController.addAction(alertAction)
        }

        let cancelAction = UIAlertAction(title: "cancel".localized, style: .cancel) { _ in
            alertConfiguration.cancelCallback?()
        }
        alertController.addAction(cancelAction)
        
        return alertController
    }
    
    public static func openAppSelector(route: MapRoute, alertConfiguration: AlertConfiguration) {
        let alertController = Guide.createMapSelector(route: route, alertConfiguration: alertConfiguration)
        alertConfiguration.currentViewController.present(alertController, animated: true, completion: nil)
    }
    
    private static func getSupportedApps(withMode mode: RouteMode? = nil) -> [MapApp] {
        return MapApp.allCases.filter{
            $0.isInstalled && $0.isSupported(mode)
        }
    }
}
