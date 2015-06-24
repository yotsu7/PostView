

import UIKit
import CoreLocation


class GetUserLocation: UIViewController, CLLocationManagerDelegate{
    
    var myLocationManager: CLLocationManager!
    
    
    func GetUserLocation(){
        // 現在地の取得.
        myLocationManager = CLLocationManager()
        
        myLocationManager.delegate = self
        
        // セキュリティ認証のステータスを取得.
        let status = CLLocationManager.authorizationStatus()
        
        // まだ認証が得られていない場合は、認証ダイアログを表示.
        if(status == CLAuthorizationStatus.NotDetermined) {
            // まだ承認が得られていない場合は、認証ダイアログを表示.
            self.myLocationManager.requestAlwaysAuthorization()
        }
        // 取得精度の設定.
        myLocationManager.desiredAccuracy = kCLLocationAccuracyBest
        // 取得頻度の設定.
        myLocationManager.distanceFilter = 100
        
        myLocationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        // 認証のステータスをログで表示.
        var statusStr = "";
        switch (status) {
        case .NotDetermined:
            statusStr = "NotDetermined"
        case .Restricted:
            statusStr = "Restricted"
        case .Denied:
            statusStr = "Denied"
        case .AuthorizedAlways:
            statusStr = "AuthorizedAlways"
        case .AuthorizedWhenInUse:
            statusStr = "AuthorizedWhenInUse"
        }
    }
    
    // 位置情報取得に成功したときに呼び出されるデリゲート.
    func locationManager(manager: CLLocationManager!,didUpdateLocations locations: [AnyObject]!){
        var Latitude: Double = 0.0//現在地の緯度
        var Longitude: Double = 0.0//現在地の軽度
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        // Define Notification（定義）
        let priorityProcessing = "priorityProcessing"
        
        Latitude = manager.location.coordinate.latitude
        Longitude = manager.location.coordinate.longitude
        println("緯度：\(Latitude)")
        println("軽度；\(Longitude)")
        
        // Post Notification（送信）
        let ns = NSNotificationCenter.defaultCenter()
        ns.postNotificationName(priorityProcessing, object: nil)
    }
    
    // 位置情報取得に失敗した時に呼び出されるデリゲート.
    func locationManager(manager: CLLocationManager!,didFailWithError error: NSError!){
        NSLog("Error")
    }
    
    
}
