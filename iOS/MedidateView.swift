//
//  MedidateView.swift
//  Rishabh-test
//
//  Created by Rishabh on 22/11/2020.
//

import SwiftUI

struct MedidateView: View {
    
    let firstArray = ["image1", "image2", "image3", "image4", "image5"]
    let secondArray = ["image2", "image1", "image4", "image3", "image5"]
    let slectionTypes = ["All", "Inner Peace", "Productivity"]
    
    @State var selectionType = 0
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                ForEach(selectionType == 0 ? firstArray: secondArray, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width)
                        .aspectRatio(contentMode: .fill)
                }
            }
            
            VStack {
                Spacer()
                Picker(selection: $selectionType, label: Text("")) {
                    Text("All").tag(0)
                    Text("Inner Peace").tag(1)
                    Text("Productivity").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                .padding(.bottom, 20)
                .padding(.horizontal)
            }
        }.onAppear {
            UISegmentedControl.appearance().layer.cornerRadius = .infinity
            }
    }
}

struct MedidateView_Previews: PreviewProvider {
    static var previews: some View {
        MedidateView()
    }
}
