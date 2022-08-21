//
//  User.swift
//  LoginApp2
//
//  Created by Дмитрий Солопов on 20.08.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "1", password: "1", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let nickname: String
    let bio: String
    let photo: String
    
    static func getPerson() -> Person {
        Person(name: "Dima", nickname: "Komediant", bio: "blabla", photo: "photo")
    }
}


