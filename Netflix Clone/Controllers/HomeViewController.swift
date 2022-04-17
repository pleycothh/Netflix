//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Tia on 17/4/2022.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeFeedTable: UITableView = {
        
        // Initialize the table to be:
        let table = UITableView()
        
        // regesiter a normal cell
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell") //<- dependency injection?
        return table
    }() // () =>  anonymous closure pattern
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable) // <-- add tabel view
        
        // set the data source and delegate protocols
        // two protocals required to make table view work property
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews() //<-- super for layout view
        homeFeedTable.frame = view.bounds //<-- make frame cover whole bounds of scre
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // the number of rows inside each section
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hellw world"
        return cell
    }
}
