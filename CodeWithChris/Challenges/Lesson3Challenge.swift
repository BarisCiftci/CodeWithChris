//
//  Lesson3Challenge.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 02/05/2023.
//

import SwiftUI

struct Lesson3Challenge: View {
    
    let listData = ["Zozo", "Natalia", "Baris", "Ebru",]
    
    @State var listItems: [String] = []
    
    var body: some View {
        
        VStack {
            NavigationView {
                NavigationLink {
                    Text("ksfgsg")
                } label: {
                    List(listItems, id: \.self) { item in
                        HStack {
                            Circle()
                                .frame(width: 20)
                                .foregroundColor(Color.green)
                            Text(item)
                        }
                        
                    }
                }
                .navigationBarTitle("hehehe")

                
            }
            
            Button {
                let randomWords = listData.randomElement() ?? ""
                listItems.append(randomWords)
            } label: {
                Image(systemName: "plus.circle")
                    .font(.largeTitle)
            }

        }
    }
}

struct Lesson3Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Lesson3Challenge()
    }
}
