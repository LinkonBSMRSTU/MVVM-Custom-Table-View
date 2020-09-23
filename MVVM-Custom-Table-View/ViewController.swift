//
//  ViewController.swift
//  MVVM-Custom-Table-View
//
//  Created by Fazle Rabbi Linkon on 23/9/20.
//  Copyright © 2020 Fazle Rabbi Linkon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var data = [
        
        Person(firstName: "First", lastName: "User", gender: "Male", age: 25, height: 166),
        Person(firstName: "Second", lastName: "User", gender: "Female", age: 24, height: 164),
        Person(firstName: "Third", lastName: "User", gender: "Female", age: 24, height: 160)
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let model = data[indexPath.row]
        let viewModel = CellViewModel(firstName: model.firstName, lastName: model.lastName)
        
        cell.textLabel?.text = "\(viewModel.firstName) \(viewModel.lastName)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let gender: String
    let age: Int
    let height: Double
}

struct CellViewModel {
    let firstName: String
    let lastName: String
}

