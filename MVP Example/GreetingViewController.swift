//
//  ViewController.swift
//  MVP Example
//
//  Created by EquipeSuporteAplicacao on 8/2/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var lblGreeting: UILabel!
    @IBOutlet weak var btnGreeting: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showGreeting(_ sender: Any) {
        let model = Model()
        let presenter = Presenter(model: model, greetingViewDelegate: self)
        
        presenter.showGreeting()
    }
}

extension GreetingViewController : GreetingViewProtocol{
    func displayGreeting(person : Person) {
        self.lblGreeting.text =  "Hello" + person.firstName + "welcome" + person.lastName
    }
}

protocol GreetingViewProtocol {
    func displayGreeting(person : Person)
}
