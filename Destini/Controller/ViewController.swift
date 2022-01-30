//
//  ViewController.swift
//  Destini
//
//  Created by Barnabas Bala on 30.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLable: UILabel!
    @IBOutlet weak var choice1Buttton: UIButton!
    @IBOutlet weak var choice2Buttton: UIButton!
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       update()
    }

    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        update()
    }
    
    
    func update(){
        storyLable.text = storyBrain.getStoryTitle()
        choice1Buttton.setTitle(storyBrain.getChoice1(), for: UIControl.State.normal)
        choice2Buttton.setTitle(storyBrain.getChoice2(), for: UIControl.State.normal)
    }
    
}

