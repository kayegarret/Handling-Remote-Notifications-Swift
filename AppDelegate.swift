

// MARK: Delegate method which is activated when app is running either in the foreground or the background

func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        
        if(application.applicationState == .active) {
            
            // App is currently active
            // Can update badge count here
            
            // Get the APS dictionary from the userInfo            
            if let aps = userInfo["aps"] as? NSDictionary {
                
                // Get the actuall notification data if it exists
                if let alert = aps["alert"] as? NSDictionary {
          
                    if let title = alert["title"] as? NSString {
                        
                        // Collect notification title text here if it exists
                        var notificationTitle = alert["title"]!
                    }
                    if let body = alert["body"] as? NSString {
                            
                        // Collect notification body text here if it exists
                        var notificationTitle = alert["body"]!
                        
                    }
                    
                }
                
                if let catagory = aps["catagory"] as? NSString {
                
                  // Depending on the catagory, you may want to take the user to a certain part of your app right here
                  
                }
                    
                    
            
            
        }
            
        else {
            
            // Application is in the background
            
            if let aps = userInfo["aps"] as? NSDictionary {
                
                if let alert = aps["alert"] as? NSDictionary {
                    print("i got a hunch")
                }
                else if let alert = aps["alert"] as? NSString {
                    //Do stuff
                    print(aps["alert"])
                }
                if let catagory = aps["catagory"] as? NSString {
                    
                    
                    
                    
                }
            }

        }
        
    }
    
