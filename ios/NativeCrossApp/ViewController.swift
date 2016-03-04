//
//  ViewController.swift
//  NativeCrossApp
//
//  Created by Giacomo Sortino on 03/03/16.
//  Copyright © 2016 Giacomo Sortino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ComGsortinoSharedViewMainMvpView {

    let net = Network()

    override func viewDidLoad() {
        super.viewDidLoad()

        let _mainPresenter = ComGsortinoSharedPresenterMainPresenter()

        _mainPresenter.attachViewWithId(self)
        _mainPresenter.attachNetworkInterfaceWithComGsortinoSharedNetworkNetworkInterface(net)
        _mainPresenter.loadDataWithNSString("google", withNSString: "j2objc")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showListWithJavaUtilArrayList(objItems: JavaUtilArrayList!) {
//        let _tmp = objItems.toArrayWithNSObjectArray()
//        for var tmp in objItems.toArray() {
        
//        }
        print("objItems: \(objItems)")
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

