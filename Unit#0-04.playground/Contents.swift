
// Created on: Sept , 2018
// Created by: Brody MacNeil
// Created for: ICS3U
// This program is the UIKit solution it will have a 3 buttons showing hello world in 3 diffrent languages
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let multiLabel : UILabel = UILabel()
    let spanishButton = UIButton()
    let englishButton = UIButton()
    let frenchButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        //englishLabel.text = "Hello World"
        multiLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(multiLabel)
        multiLabel.translatesAutoresizingMaskIntoConstraints = false
        multiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor ).isActive = true
        multiLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor ).isActive = true
        
        
        englishButton.setTitle("English", for: UIControlState.normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(englishtext), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.topAnchor.constraint(equalTo: view.topAnchor , constant : 20).isActive = true
        englishButton.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant : 20).isActive =
        true
        frenchButton.setTitle("French", for: UIControlState.normal)
        frenchButton.setTitleColor(.blue, for: .normal)
        frenchButton.addTarget(self, action: #selector(frenchtext), for: .touchUpInside)
        view.addSubview(frenchButton)
        frenchButton.translatesAutoresizingMaskIntoConstraints = false
        frenchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        frenchButton.topAnchor.constraint(equalTo: view.topAnchor , constant : 20).isActive =
        true
        spanishButton.setTitle("Spanish ", for: UIControlState.normal)
        spanishButton.setTitleColor(.blue, for: .normal)
        spanishButton.addTarget(self, action: #selector(spanishtext), for: .touchUpInside)
        view.addSubview(spanishButton)
        spanishButton.translatesAutoresizingMaskIntoConstraints = false
        spanishButton.topAnchor.constraint(equalTo: view.topAnchor , constant : 20).isActive = true
        spanishButton.rightAnchor.constraint(equalTo: view.rightAnchor , constant : -20).isActive =
        true
        
    }
    @objc func englishtext() {
        // show Hello World
        multiLabel.text = "Hello World"
    }
    @objc func frenchtext() {
        // show Bonjour le monde
        multiLabel.text = "Bonjour le monde"
    }
    @objc func spanishtext() {
        // show Hola Mundo
        multiLabel.text = "Hola Mundo"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
// this will be commented out when code moved to Xcode
    PlaygroundPage.current.liveView = ViewController()

