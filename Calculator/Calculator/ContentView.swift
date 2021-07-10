//
//  ContentView.swift
//  Calculator
//
//  Created by Luis Genesius on 10/07/21.
//

import SwiftUI

enum CalcButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case multiply = "*"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
}

struct ContentView: View {
    var body: some View {
        
        let buttons: [[CalcButton]] = [
            [.clear, .negative, .percent, .divide],
            [.seven, .eight, .nine, .multiply],
            [.four, .five, .six, .subtract],
            [.one, .two, .three, .add],
            [.zero, .decimal, .equal],
        ]
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Text Display
                HStack {
                    Spacer()
                    Text("0")
                        .bold()
                        .font(.system(size: 52))
                        .foregroundColor(.white)
                }
                .padding()
                
                // Buttons Display
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(width: 70, height: 70)
                                    .background(Color.orange)
                                    .foregroundColor(.white)
                                    .cornerRadius(35)
                            })
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
