//
//  ViewController.swift
//  NativeCrossApp
//
//  Created by Giacomo Sortino on 03/03/16.
//  Copyright © 2016 Giacomo Sortino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ComGsortinoSharedViewMainMvpView {

    override func viewDidLoad() {
        super.viewDidLoad()
        let _mainPresenter = ComGsortinoSharedPresenterMainPresenter()
        _mainPresenter.attachViewWithId(self)
//        _mainPresenter.attachNetworkInterfaceWithComGsortinoSharedNetworkNetworkInterface(ComGsortinoSharedNetworkNetworkInterface!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showListWithJavaUtilArrayList(objItems: JavaUtilArrayList!) {
        for entry in objItems {
            
        }
    }

    func hideProgressIndicator() {
        
    }
    
    func showProgressIndicator() {
        
    }
    
    func showMessageWithNSString(message: String!) {
        
    }
    
    func getContext() -> AnyObject! {
        return self
    }
}

