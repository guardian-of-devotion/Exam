//
//  ProductController.swift
//  Exam
//
//  Created by Саркис Катвалян on 23/01/2021.
//  Copyright © 2021 Саркис Катвалян. All rights reserved.
//

import UIKit

class ProductController: UIViewController {
    @IBOutlet var plusButton: UIButton!
    @IBOutlet var minusButton: UIButton!
    
    @IBOutlet var productName: UILabel!
    @IBOutlet var productPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setData(nameOfProduct: String, priceOfProduct: String) {
        productName.text = nameOfProduct
        productPrice.text = priceOfProduct
        
    }
    weak war delegate: UpdateDelegate
}
