//
//  ViewController.swift
//  Exam
//
//  Created by Саркис Катвалян on 23/01/2021.
//  Copyright © 2021 Саркис Катвалян. All rights reserved.
//

import UIKit

protocol UpdateDelegate: AnyObject {
    func update(priceSum: String)
}

var data: [String] = ["Хлеб", "Водка Путинка", "Печенье Юбилейное", "Яблоки 1кг", "Молоко Простоквашино", "Бананы 1кг", "Шоколад Alpen Gold"]
var subData: [String] = ["30р", "300р", "50p", "60p", "70p", "60p", "100p"]


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UpdateDelegate {
    func update(priceSum: String) {
        
    }
    
    
    @IBOutlet var countOfProducts: UILabel!
    
    @IBOutlet var sumPrice: UILabel!
    
    @IBOutlet var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // Количество строк в секции
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // Возвращает элемент типа UITableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subData[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(ProductController(), animated: true)
        
        guard let detailedProductController = self.storyboard!.instantiateViewController(identifier: "productsController") as? ProductController else { fatalError() }
        
    
        detailedProductController.loadViewIfNeeded()
        detailedProductController.setData(nameOfProduct: data[indexPath.row], priceOfProduct: subData[indexPath.row])
        navigationController?.pushViewController(detailedProductController, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countOfProducts.text = "Количество товаров: "
        sumPrice.text = "Итого: "
    }
}

