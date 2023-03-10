//
//  ContentView.swift
//  ListRowEdit
//
//  Created by Trung Luu on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var cities = ["Atlanta", "Indianapolis", "Chicago", "San Jose", "San Francisco", "Los Angeles", "Austin", "New York", "Seattle", "Dallas", "Boulder"]
    var body: some View {
        NavigationView {
            List {
                ForEach(self.cities, id: \.self) { city in
                    Text("\(city)")
                }.onDelete(perform: self.deleteItem)
            }.navigationBarTitle("Cities", displayMode: .inline).navigationBarItems(trailing: EditButton())
        }
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        self.cities.remove(atOffsets: indexSet)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
