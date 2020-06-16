//
//  CardDataBaseTableViewController.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 6/11/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import UIKit

class CardDataBaseTableViewController: UITableViewController {
    
    let jsonCardsStored = JsonFileController.jsonConverter()
    
    override func viewDidLoad() {
        print("Loading..")
    }

    
    func loadImage(from url:URL, completion: @escaping (Data?) -> Void) {
        
                 // Create Data Task
                  let dataTask = URLSession.shared.dataTask(with: url) { (data, _, _) in
                    completion(data)
                  }
                  // Start Data Task
                  dataTask.resume()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jsonCardsStored?.count ?? 0
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CardImageCell", for: indexPath) as? CardImageTableViewCell, let imageString = jsonCardsStored![indexPath.row].imageURL, let imageURL = URL(string: imageString) else {
            print(jsonCardsStored![indexPath.row].imageURL)
            return UITableViewCell() }
        
        cell.cardImage.image = UIImage.init(systemName: "arrow.down.doc")
        
        loadImage(from: imageURL) { (data) in
            guard let data = data else {  return }
            DispatchQueue.main.async {
            cell.cardImage.image = UIImage(data: data)
            }
        }
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
