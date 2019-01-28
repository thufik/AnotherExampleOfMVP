//
//  Presenter.swift
//  MVP Example
//
//  Created by EquipeSuporteAplicacao on 8/2/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class Presenter: PresenterProtocol {
    var greetingViewDelegate: GreetingViewProtocol
    var model: ModelProtocol
    
    init(model : ModelProtocol, greetingViewDelegate : GreetingViewProtocol) {
        self.model = model
        self.greetingViewDelegate = greetingViewDelegate
    }
    
    func showGreeting() {
        let model = Model()
        let person = model.searchPerson()
        
        self.greetingViewDelegate.displayGreeting(person : person)
    }
}

protocol PresenterProtocol {
    var model : ModelProtocol {get}
    var greetingViewDelegate : GreetingViewProtocol {get}
    
    func showGreeting()
}
