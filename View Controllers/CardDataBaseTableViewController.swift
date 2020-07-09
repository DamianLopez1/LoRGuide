//
//  CardDataBaseTableViewController.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 6/11/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import UIKit
import Combine

class CardDataBaseTableViewController: UITableViewController, UISearchBarDelegate {
    
    var segmentedControl: UISegmentedControl!
    

    @IBAction func filterManaCost(_ sender: UISegmentedControl) {
        filterManaCost(sender.selectedSegmentIndex + 1)
    }
    
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        filteredCards = jsonCardsStored!
        tableView.reloadData()
    }
    
    func filterManaCost(_ manaCost: Int) {
        filteredCards = jsonCardsStored!.filter {
            $0.cost == manaCost
        }
        tableView.reloadData()
    }
    
    func filterRegion(_ regionName: String) {
        filteredCards = jsonCardsStored!.filter {
            $0.region == regionName
        }
        tableView.reloadData()
    }
    
    
    @IBAction func actionSheetTapped(_ sender: Any) {

        let demaciaAction = UIAlertAction(title: "Demacia",
                                          style: .default) { (action) in
                                            self.filterRegion("Demacia")
        }
        
        let freljordAction = UIAlertAction(title: "Freljord",
                                           style: .default) { (action) in
                                            self.filterRegion("Freljord")
        }
        
        let noxusAction = UIAlertAction(title: "Noxus",
                                        style: .default) { (action) in
                                            self.filterRegion("Noxus")
        }
        
        let ioniaAction = UIAlertAction(title: "Ionia",
                                        style: .default) { (action) in
                                            self.filterRegion("Ionia")
        }
        
        let piltoverAction = UIAlertAction(title: "Piltover",
                                           style: .default) { (action) in
                                            self.filterRegion("Piltover & Zaun")
        }
        
        let shadowIslesAction = UIAlertAction(title: "Shadow Isles",
                                              style: .default) { (action) in
                                                self.filterRegion("Shadow Isles")
        }
        
        let alert = UIAlertController(title: "Region Selection",
                                      message: "Show cards for",
                                      preferredStyle: .alert)
        alert.addAction(demaciaAction)
        alert.addAction(noxusAction)
        alert.addAction(piltoverAction)
        alert.addAction(freljordAction)
        alert.addAction(ioniaAction)
        alert.addAction(shadowIslesAction)
        
        
        self.present(alert, animated: true) {
            // The alert was presented
            
        }
    }
    
    var searchBar: UISearchBar?
    
    
    var jsonCardsStored = JsonFileController.jsonConverter()
    var debounce_timer:Timer?
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var filteredCards: [CardInfo] = []
    
    
    override func viewDidLoad() {
        filteredCards = jsonCardsStored!
        tableView.reloadData()
        searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 56))
        searchBar?.delegate = self
        searchBar?.searchBarStyle = .minimal
        tableView.tableHeaderView = searchBar
    }
    
    
    func loadImage(from url:URL) -> AnyPublisher<UIImage?, Never> {
        URLSession.shared.dataTaskPublisher(for: url).map { (result) -> UIImage? in
            return UIImage(data: result.data)
        }
        .replaceError(with: nil)
        .eraseToAnyPublisher()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredCards.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CardImageCell", for: indexPath) as? CardImageTableViewCell, let imageString = filteredCards[indexPath.row].imageURL, let imageURL = URL(string: imageString) else {
            
            print(filteredCards[indexPath.row].imageURL!)
            return UITableViewCell() }
        
        cell.cardImage.image = UIImage.init(named: "Card Back")
        cell.loadImageCancellable?.cancel()
        cell.loadImageCancellable = loadImage(from: imageURL).receive(on: RunLoop.main).sink { (image) in
            cell.cardImage.image = image
        }

        
        return cell
    }
    

    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        debounce_timer?.invalidate()
        debounce_timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
            print("Inside the block")
            guard let searchString = self.searchBar?.text, !searchString.isEmpty else {
                self.filteredCards = self.jsonCardsStored!
                self.tableView.reloadData()
                return
                
            }
            self.filteredCards = self.jsonCardsStored!.filter { $0.name.lowercased().contains(searchString.lowercased()) }
            self.tableView.reloadData()
        }
    }
    
}

