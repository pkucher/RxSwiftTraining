//
//  MainViewController.swift
//  RxTraining
//
//  Created by brq on 18/06/2019.
//  Copyright © 2019 brq. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        constrain()
        title = "RXTraining"
    }
}



extension MainViewController {
    
    func setup(){
        
    view.addSubview(tableView)
    view.backgroundColor = .white
    
    tableView.backgroundColor = .blue
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(ChocolatTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func constrain(){
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension MainViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}


extension MainViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChocolatTableViewCell
        cell.titleCell.text = "teste"
        return cell
    }
    
    
}

