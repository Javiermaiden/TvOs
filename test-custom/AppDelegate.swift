//
//  AppDelegate.swift
//  test-custom
//
//  Created by Ngine on 08/07/2020.
//  Copyright © 2020 Ngine. All rights reserved.
//

import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {
    
    var window: UIWindow?
    var appController: TVApplicationController?
    
    let myViewController = UIViewController()
    
    // tvBaseURL points to a server on your local machine. To create a local server for testing purposes, use the following command inside your project folder from the Terminal app: ruby -run -ehttpd . -p9001. See NSAppTransportSecurity for information on using a non-secure server.
    static let tvBaseURL = "http://192.168.1.33:9001/"
    static let tvBootURL = "\(AppDelegate.tvBaseURL)js/application.js"
    
    // MARK: UIApplicationDelegate
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        TVInterfaceFactory.shared().extendedInterfaceCreator = CustomInterfaceFactory()
        TVElementFactory.registerViewElementClass(TVViewElement.self, elementName: CustomInterfaceFactory.templateName)
        
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Create the TVApplicationControllerContext for this application and set the properties that will be passed to the `App.onLaunch` function in JavaScript.
        let appControllerContext = TVApplicationControllerContext()
        
        // The JavaScript URL is used to create the JavaScript context for your TVMLKit application. Although it is possible to separate your JavaScript into separate files, to help reduce the launch time of your application we recommend creating minified and compressed version of this resource. This will allow for the resource to be retrieved and UI presented to the user quickly.
        guard let javaScriptURL = URL(string: AppDelegate.tvBootURL) else { fatalError("unable to create NSURL") }
        appControllerContext.javaScriptApplicationURL = javaScriptURL
        appControllerContext.launchOptions["BASEURL"] = AppDelegate.tvBaseURL
        
        /*if let launchOptions = launchOptions {
            for (kind, value) in launchOptions {
                appControllerContext.launchOptions[kind.rawValue] = value
            }
        }*/
        
        appController = TVApplicationController(context: appControllerContext, window: window, delegate: self)
        self.appController?.navigationController.pushViewController(myViewController, animated: true)
        return true
    }
    
    
}

