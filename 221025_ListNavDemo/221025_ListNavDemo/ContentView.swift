//
//  ContentView.swift
//  221025_ListNavDemo
//
//  Created by 고도 on 2022/10/25.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var carStore: CarStore = CarStore(cars: carData)
    
    var body: some View {
        NavigationView {
            List {
                ForEach (carStore.cars) { car in
                    ListCell(car: car)
                }
                // .listStyle(.plain)
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationTitle(Text("EV Cars"))
            .navigationBarItems(
                leading: NavigationLink(
                    destination: AddNewCar(carStore: self.carStore)) {
                        Text("Add")
                    }
                ,trailing: EditButton()
            )
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        carStore.cars.remove(atOffsets: offsets)
    }
    
    func moveItems(from source: IndexSet, to destination: Int) {
        carStore.cars.move(fromOffsets: source, toOffset: destination)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListCell: View {
    var car: Car
    
    var body: some View {
        NavigationLink(destination: CarDetail(selectedCar: car)) {
            HStack {
                Image(car.imageName)
                    .resizable()
                    .cornerRadius(12)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                Text(car.name)
                    .padding()
            }
        }
    }
}
