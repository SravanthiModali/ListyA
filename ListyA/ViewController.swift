//
//  ViewController.swift
//  ListyA
//
//  Created by Modali,Naga Sravanthi on 2/15/18.
//  Copyright © 2018 Modali,Naga Sravanthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    let movies = ["Avengers", "Thor", "Batman", "The Notebook", "Bahubali", "Scarface"]
    let ratings = [9.5, 8.4, 10.0, 9.8, 3.2, 7.8]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movie_cell")!
        let label = cell.viewWithTag(100) as! UILabel
        let image = cell.viewWithTag(101) as! UIImageView
    
        label.text = movies[indexPath.row]
//
//        cell.textLabel?.text = movies[indexPath.row]
//        cell.detailTextLabel?.text = "rating: \(ratings[indexPath.row])"
        return cell
    }
    
    @IBOutlet weak var resultLBL: UILabel!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        resultLBL.text = "Selected : \(movies[indexPath.row])"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

