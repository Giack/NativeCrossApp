//
//  Network.swift
//  MetroApp
//
//  Created by Alberto Pasca on 03/03/16.
//  Copyright © 2016 albertopasca.it. All rights reserved.
//

import UIKit

class Network: NSObject, ComGsortinoSharedNetworkNetworkInterface {

    func retrieveData( url: NSURL, completion: (datamodel: NSData) -> Void ) {
        let request = NSURLRequest(URL: url)
        let task = NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) -> Void in

            if error == nil && data != nil {

                NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                    completion(datamodel: data!)
                })
            }
            
        }
        task.resume()
    }

    func retriveStargazersWithNSString(owner: String!, withNSString repository: String!, withComGsortinoSharedNetworkNetworkCallback callback: ComGsortinoSharedNetworkNetworkCallback!) {

        let url : NSURL = NSURL(string: "https://api.github.com/repos/" + owner + "/" + repository + "/stargazers")!
        retrieveData(url) { (datamodel) -> Void in

            var array : NSArray = NSArray()
            do {
                array = try NSJSONSerialization.JSONObjectWithData(datamodel, options: NSJSONReadingOptions(rawValue: 0)) as! NSArray
            } catch { }

            let jList : JavaUtilArrayList = JavaUtilArrayList()
            for var i=0; i<array.count; i++ {

                let user : ComGsortinoSharedModelUser = ComGsortinoSharedModelUser()
                user.setLoginWithNSString(array[i].valueForKey("login") as! String)
                user.setAvatarUrlWithNSString(array[i].valueForKey("avatar_url") as! String)
                jList.addWithId(user)
            }

            callback.onSuccessWithId(jList)

        }

    }

}

