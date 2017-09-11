//
//  LeagueVC.swift
//  App-Swoosh
//
//  Created by cynoteck Mac Mini on 11/09/17.
//  Copyright © 2017 Cynoteck. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    @IBOutlet weak var nextButtonOutlet: BorderButton!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        player = Player()
    }

    
    @IBAction func nextButtonWasTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: nil)
    }
    
    
    @IBAction func onMensButtonTapped(_ sender: BorderButton) {
        selectLeague(leagueType: "Mens")
        
    }
    
    @IBAction func onWomenButtonTapped(_ sender: BorderButton) {
        selectLeague(leagueType: "Womens")
        
    }
    
    @IBAction func onCoedButtonTapped(_ sender: BorderButton) {
        selectLeague(leagueType: "Coed")
        
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextButtonOutlet.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
