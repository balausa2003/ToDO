//
//  ViewController.swift
//  TodoList
//
//  Created by Балауса Косжанова on 08.08.2022.
//

import UIKit

class ViewController: UIViewController {
    var item:Item?

    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var nameTextFiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        if let item = item {
            nameTextFiled.text = item.name
        }
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let name = nameTextFiled.text ?? ""
            item = Item(name: name)
        }
    }
 
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true,completion: nil)
    }
}

