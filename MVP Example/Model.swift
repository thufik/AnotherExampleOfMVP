//
//  Model.swift
//  MVP Example
//
//  Created by EquipeSuporteAplicacao on 8/2/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class Model: ModelProtocol {

    func searchPerson() -> Person{
        let person = Person(firstName: "Fellipe", lastName: "Thufik")
        
        return person
    }
}

protocol ModelProtocol {
    func searchPerson() -> Person
}
