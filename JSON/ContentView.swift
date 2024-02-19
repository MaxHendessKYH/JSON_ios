//
//  ContentView.swift
//  JSON
//
//  Created by Max.Hendess on 2024-02-19.
//

import SwiftUI

struct ContentView: View {
    let dataManager = DataManager()
    
    var body: some View {
        VStack {
            Button("PersontoJson"){
                test()
            }
            
            Button("Jsontoperson"){
                jsontoperson()
            }
            Button("UserDefaults"){
                userDefault()
            }
        }
        .padding()
    }
    func userDefault(){
        dataManager.saveToUserDefaults()
        dataManager.loadFromUserDefaults()
    }
    func jsontoperson()
    {
        dataManager.jsonToPerson()
    }
    func test(){
        dataManager.personToJSON()
    }
}

#Preview {
    ContentView()
}
