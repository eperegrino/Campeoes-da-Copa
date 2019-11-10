//
//  WorldCupViewController.swift
//  Campeões da Copa
//
//  Created by Eduardo Peregrino on 09/11/19.
//  Copyright © 2019 Eduardo Peregrino. All rights reserved.
//

import UIKit

class WorldCupViewController: UIViewController {
    
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var worldCup: WorldCup!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ivWinner.image = UIImage(named: worldCup.winner)
        ivVice.image = UIImage(named: worldCup.vice)
        lbScore.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
        lbWinner.text = worldCup.winner
        lbVice.text = worldCup.vice
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension WorldCupViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = worldCup.matches[section].games
        return games.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "YYYY 4 x 1 XXXX"
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
}
