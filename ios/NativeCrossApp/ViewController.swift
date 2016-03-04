//
//  ViewController.swift
//  NativeCrossApp
//
//  Created by Giacomo Sortino on 03/03/16.
//  Copyright © 2016 Giacomo Sortino. All rights reserved.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController, ComGsortinoSharedViewMainMvpView, UITableViewDelegate, UITableViewDataSource {

    let net = Network()
    var users : NSMutableArray = NSMutableArray()
    @IBOutlet var tableView: UITableView!
    var refreshControl: UIRefreshControl!
    let mainPresenter = ComGsortinoSharedPresenterMainPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate   = self
        tableView.dataSource = self

        self.automaticallyAdjustsScrollViewInsets = true
        self.extendedLayoutIncludesOpaqueBars = false

        self.refreshControl = UIRefreshControl()
        self.refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        self.refreshControl.addTarget(self, action: "refresh:", forControlEvents: UIControlEvents.ValueChanged)
        self.tableView.addSubview(self.refreshControl)

        mainPresenter.attachViewWithId(self)
        mainPresenter.attachNetworkInterfaceWithComGsortinoSharedNetworkNetworkInterface(net)
        mainPresenter.loadDataWithNSString("google", withNSString: "j2objc")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func refresh(sender:AnyObject) {
        mainPresenter.loadDataWithNSString("google", withNSString: "j2objc")
    }

    func showListWithJavaUtilArrayList(objItems: JavaUtilArrayList!) {
        if let item = objItems {
            let tot :jint = item.toArray().length()
            for var i : jint = 0; i<tot; i++ {
                users.addObject(item.getWithInt(i))
            }

            self.refreshControl.endRefreshing()
            tableView.reloadData()
        }
    }

    func hideProgressIndicator() {
        KRProgressHUD.dismiss()
    }
    
    func showProgressIndicator() {
        KRProgressHUD.show()
    }
    
    func showMessageWithNSString(message: String!) {
        
    }
    
    func getContext() -> AnyObject! {
        return self
    }


    // +---------------------------------------------------------------------------+
    //MARK: - TableView delegete
    // +---------------------------------------------------------------------------+


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cella : CustomCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell

        let model : ComGsortinoSharedModelUser = users.objectAtIndex(indexPath.row) as! ComGsortinoSharedModelUser
        cella.topLabel?.text = model.getLogin()
        cella.bottomLabel?.text = model.getAvatarUrl()

        net.retrieveData(NSURL(string: model.getAvatarUrl())!, completion: { (datamodel) -> Void in
            cella.leftImage?.image = UIImage(data: datamodel)
        })

        return cella
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
}







