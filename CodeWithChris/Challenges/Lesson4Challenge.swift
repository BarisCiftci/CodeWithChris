//
//  Lesson4Challenge.swift
//  SwiftUILearning
//
//  Created by Baris Ciftci on 03/05/2023.
//
//Challenge 4
/*
 
Challenge

Build a UI with a List and three Buttons below it.

When the first button is tapped:

Add a random integer (from 1 to 10) to the List.
If the integer you added to the List wasn't a 7, then keep adding random integers (from 1 to 10) to the List until you add a 7 to the List.
When the second button is tapped:

Increase all the integers shown in the List by 1
When the third button is tapped:

Clear all the numbers from the List.Challenge

Build a UI with a List and three Buttons below it.

When the first button is tapped:

Add a random integer (from 1 to 10) to the List.
If the integer you added to the List wasn't a 7, then keep adding random integers (from 1 to 10) to the List until you add a 7 to the List.

When the second button is tapped:

Clear all the numbers from the List.

*/

import SwiftUI

struct Lesson4Challenge: View {
    
    @State var numbers = [Int]()
    
    
    var body: some View {
        VStack {
            List(numbers, id: \.self) { number in
                Text(String(number))
            }
            Spacer()
            HStack {
                Button {
                    var addNumber = 0
                    
                    repeat {
                        addNumber = Int.random(in: 1...10)
                        numbers.append(addNumber)
                    } while addNumber != 7
                    
                } label: {
                    Text("1")
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                    
                }
                
                Button {
                    numbers.removeAll()
                } label: {
                    Text("3")
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .foregroundColor(Color.white)
            
            Spacer()
        }
    }
}


struct Lesson4Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Lesson4Challenge()
    }
}
