
// AUTHOR NOTE: Code snippet for handling the recieval remote notifications in the AppDelegate


// When application is not running and user is opening the app through a notification, the notification data will be held in the launchOptions

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
   // Check to see if launchOptions contains any data     
   if launchOptions != nil {
       
       // Check to see if the data inside launchOptions is a remote notification    
       if let remoteNotification = launchOptions![UIApplicationLaunchOptionsKey.remoteNotification] as? NSDictionary {
           
           // Get the APS from the notification data
           if let aps = remoteNotification["aps"] as? NSDictionary {
                   
               // Get the actuall notification data if it exists
                if let alert = aps["alert"] as? NSDictionary {
          
                    // Alert is a dictionary
                        
                    if let title = alert["title"] as? NSString {
                        
                        // Collect notification title text here if it exists
                        var notificationTitle = title
                    }
                    if let body = alert["body"] as? NSString {
                            
                        // Collect notification body text here if it exists
                        var notificationBody = alert
                        
                    }
                    
                }
                else if let alert = aps["alert"] as? NSString {
                    
                    // Alert is a NSString, collect it here
                    var alertText = alert
                }
                
                if let catagory = aps["catagory"] as? NSString {
                
                  // Collect notification title text here if it exists
                  var notificationCatagory = catagory
                        
                  // Depending on the catagory, you may want to take the user to a certain part of your app if you wish right here
                  
                }        
                   
           }
       }
   }
}






// Delegate method which is activated when app is running either in the foreground or the background and device recieves remote notification

func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        
        if (application.applicationState == .active) {
            
            // App is currently active
            // Can update badge count here
            
            // Get the APS dictionary from the notification userInfo            
            if let aps = userInfo["aps"] as? NSDictionary {
                
                // Get the actuall notification data if it exists
                if let alert = aps["alert"] as? NSDictionary {
          
                    // Alert is a dictionary
                        
                    if let title = alert["title"] as? NSString {
                        
                        // Collect notification title text here if it exists
                        var notificationTitle = title
                    }
                    if let body = alert["body"] as? NSString {
                            
                        // Collect notification body text here if it exists
                        var notificationBody = body
                        
                    }
                    
                }
                else if let alert = aps["alert"] as? NSString {
                    
                    // Alert is a NSString, collect it here
                    var alertText = alert
                }
                
                if let catagory = aps["catagory"] as? NSString {
                
                  // Collect notification title text here if it exists
                  var notificationCatagory = catagory
                        
                  // Depending on the catagory, you may want to take the user to a certain part of your app if you wish right here
                  
                }
                    
                    
            
            
        }
        else if (application.applicationState == .inactive) {
            
            // Application is still in the foreground, however it is not recieving events
            // You may try to do the same procedure here as was done in the active state    
        }
            
        else {
            
            // Application is in the background
            // This portion will only be executed if application is in the background and user clicked notification recieved from this application
            
            // Get the APS dictionary from the userInfo            
            if let aps = userInfo["aps"] as? NSDictionary {
                
                // Get the actuall notification data if it exists
                if let alert = aps["alert"] as? NSDictionary {
          
                    // Alert is a dictionary
                        
                    if let title = alert["title"] as? NSString {
                        
                        // Collect notification title text here if it exists
                        var notificationTitle = title
                    }
                    if let body = alert["body"] as? NSString {
                            
                        // Collect notification body text here if it exists
                        var notificationBody = body
                        
                    }
                    
                }
                else if let alert = aps["alert"] as? NSString {
                    
                    // Alert is a NSString, collect it here
                    var alertText = alert
                }
                
                if let catagory = aps["catagory"] as? NSString {
                
                  // Collect notification title text here if it exists
                  var notificationCatagory = catagory
                        
                  // Depending on the catagory, you may want to take the user to a certain part of your app if you wish right here
                  
                }

        }
        
}
    
