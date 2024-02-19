//
//  DataManager.swift
//  JSON
//
//  Created by Max.Hendess on 2024-02-19.
//

import Foundation

class DataManager{
    
    func personToJSON(){
        
        let person = Person(name: "Kazuya", age: 69)
        let encoder = JSONEncoder()
        do{
            let jsonData = try encoder.encode(person) // try? annat sätt att gör utan try catch
            let jsonString = String(data: jsonData, encoding: .utf8)
            print(jsonData)
            print(jsonString!)
        } catch{
            print("Error encoding person!!!")
        }
    }
    func jsonToPerson(){
        let decoder = JSONDecoder()
        let jsonString = """
{
        "name": "Heheheihachi",
        "age": 6969
    }
"""
        if let jsonData = jsonString.data(using: .utf8){
            do{
                let person = try decoder.decode(Person.self, from: jsonData)
                print("\(person.name), \(person.age)")
            }catch{
                print("Error decoding json")
            }
        }else{
            print("failed to convert string to json")
        }
    }
    // Sharetd prefrences motsvarande i ios
    func saveToUserDefaults(){
        
        UserDefaults.standard.set("Lili", forKey: "name")
        UserDefaults.standard.set(15, forKey: "age")
    }
    
    func loadFromUserDefaults(){
        let name = UserDefaults.standard.string(forKey: "name") ?? "Wrong key"
            let age = UserDefaults.standard.integer(forKey: "age")
        let person = Person(name: name, age: age)
        print("\(person.name), \(person.age)")
    }
    
    func saveObjectToUserDefaults(){
        let person = Person(name: "Devil Jim", age: 10)
        let encoder = JSONEncoder()
        
        do{
            let jsonData = try encoder.encode(person)
            UserDefaults.standard.set(jsonData, forKey: "user")
        }
        catch{
            print("error")
        }
    }
}
