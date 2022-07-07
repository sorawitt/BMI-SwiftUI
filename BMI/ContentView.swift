//
//  ContentView.swift
//  BMI
//
//  Created by Sorawit Trutsat on 3/7/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var company = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Personal Info")) {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                        TextField("Company", text: $company)
                    }
                }
            }
            .navigationTitle("BMI CALCULATOR")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        print("Save tapped")
                    } label: {
                        Label("Save", systemImage: "list.bullet.indent")
                    }
                }
            }
            .accentColor(.secondary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
