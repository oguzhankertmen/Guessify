//
//  ViewController.swift
//  Guessify
//
//  Created by Oğuzhan KERTMEN on 7.02.2022.
//


import UIKit
import SwiftUI

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var result: Result?
    
    
    
    
    @IBOutlet weak var table: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parseJSON()
        table.delegate = self
        table.dataSource = self
        
    }
    
    //JSON
    
    private func parseJSON(){
        
        guard let path = Bundle.main.path(forResource: "data", ofType: "json") else {
            return
        }
         let url = URL(fileURLWithPath: path)
        
        
        do {
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
            
        }
        catch {
            print("Error: \(error)")
        }
    }
    
    
    
    
    
    
    
    // Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let categoryCount = result?.data.count else { return -1 }
        return categoryCount
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let category = result?.data[indexPath.row]
        
        
        
        
        //configure
        cell.textLabel?.text = category?.genre
        cell.accessoryType = .disclosureIndicator
        cell.imageView?.image = UIImage(named: "categoryRock")
        
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
        //cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 12)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        performSegue(withIdentifier: "player", sender: self)
    }
    
    
}



