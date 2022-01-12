//
//  ViewController.swift
//  animationHomeWork
//
//  Created by Ivan Adoniev on 10.01.2022.
//

import Spring

class ViewController: UIViewController {
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var animationViewLabel: UILabel!
    @IBOutlet weak var animationStyleLabel: UILabel!
    @IBOutlet weak var animationCurveLable: UILabel!
   
    @IBOutlet weak var animationButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        animationButton.setTitle("Run", for: .normal)
        animationStyleLabel.text = "Present: flash"
        animationCurveLable.text = "easeInOutQuint"
    }
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        
        let buttonName = animationButton.titleLabel?.text
      
        switch buttonName {
            
            
        case "shake": animationView.animation = buttonName ?? ""
            animationView.curve = "easeInExpo"
            animationView.animate()
            animationStyleLabel.text = "Present: " + "\(animationView.animation)"
            animationCurveLable.text = "Curve: " + "\(animationView.curve)"
            animationButton.setTitle("squeeze", for: .normal)
           
            
        case "squeeze": animationView.animation = buttonName ?? ""
            animationView.curve = "easeInCirc"
            animationView.animate()
            animationStyleLabel.text = "Present: " + "\(animationView.animation)"
            animationCurveLable.text = "Curve: " + "\(animationView.curve)"
            animationButton.setTitle("fadeInRight", for: .normal)
            
        case "fadeInRight": animationView.animation = buttonName ?? ""
            animationView.curve = "easeOutBack"
            animationView.animate()
            animationStyleLabel.text = "Present: " + "\(animationView.animation)"
            animationCurveLable.text = "Curve: " + "\(animationView.curve)"
            animationButton.setTitle("flipX", for: .normal)
            
        case "flipX": animationView.animation = buttonName ?? ""
            animationView.curve = "easeInOutBack"
            animationView.animate()
            animationStyleLabel.text = "Present: " + "\(animationView.animation)"
            animationCurveLable.text = "Curve: " + "\(animationView.curve)"
            animationButton.setTitle("flash", for: .normal)
            
        default: animationView.animation = "flash"
            animationView.curve = "easeOutSine"
            animationView.animate()
            animationStyleLabel.text = "Present: " + "\(animationView.animation)"
            animationCurveLable.text = "Curve: " + "\(animationView.curve)"
            animationButton.setTitle("shake", for: .normal)
            
        }
        
    }
    
}

