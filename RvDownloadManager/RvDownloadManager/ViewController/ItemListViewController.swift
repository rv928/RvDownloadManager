//
//  ItemListViewController.swift
//  RvDownloadManager
//
//  Created by Ravi Vora on 08/11/17.
//  Copyright © 2017 Ravi Vora. All rights reserved.
//

import UIKit

struct itemcellHeight {
    static let normalH = 85.0
}

class ItemListViewController: UIViewController {

    var itemArray:Array<Any> = Array()
    
    // MARK:- Properties
    @IBOutlet weak var itemTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemArray = ["https://homepages.cae.wisc.edu/~ece533/images/airplane.png,https://homepages.cae.wisc.edu/~ece533/images/arctichare.png","https://homepages.cae.wisc.edu/~ece533/images/baboon.png","https://homepages.cae.wisc.edu/~ece533/images/barbara.png","https://homepages.cae.wisc.edu/~ece533/images/boat.png","https://homepages.cae.wisc.edu/~ece533/images/cat.png","https://homepages.cae.wisc.edu/~ece533/images/frymire.png","https://homepages.cae.wisc.edu/~ece533/images/girl.png","https://homepages.cae.wisc.edu/~ece533/images/zelda.png","https://homepages.cae.wisc.edu/~ece533/images/serrano.png","https://homepages.cae.wisc.edu/~ece533/images/tulips.png","https://homepages.cae.wisc.edu/~ece533/images/peppers.png"]
        
        self.itemTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

extension ItemListViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(itemcellHeight.normalH)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TagIDConstant.cellIDs.kItemCellID, for: indexPath) as! ItemCell
        cell.setItemListCellDetails(imageURL: itemArray[indexPath.row] as! String)
        cell.selectionStyle = .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       
    }
}
