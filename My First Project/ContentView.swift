//
//  ContentView.swift
//  My First Project
//
//  Created by Sumeyra Altas on 1.11.2023.
//
import SwiftUI

struct ContentView: View {
    @State private var displayText = "0"
    @State private var firstNumber = 0.0
    @State private var secondNumber = 0.0
    @State private var currentOperation = ""
    @State private var isTyping = false
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                if geometry.size.width < geometry.size.height {
                    VStack {
                        Spacer()
                        Text(displayText)
                            .font(.system(size: 80))
                            .padding()
                        Spacer()
                        HStack {
                            Spacer()
                            Button("1") {
                                handleNumberButton(1)
                            }.font(.system(size: 68)).frame(width: 80, height: 80) .background(Circle().fill(Color.gray.opacity(0.3)))

                            Button("2") {
                                handleNumberButton(2)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("3") {
                                handleNumberButton(3)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("+") {
                                handleOperationButton("+")
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Spacer()
                        }
                        HStack {
                            Button("4") {
                                handleNumberButton(4)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("5") {
                                handleNumberButton(5)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("6") {
                                handleNumberButton(6)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("-") {
                                handleOperationButton("-")
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            
                        }
                        HStack {
                            Button("7") {
                                handleNumberButton(7)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("8") {
                                handleNumberButton(8)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("9") {
                                handleNumberButton(9)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("*") {
                                handleOperationButton("*")
                                
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                        }
                        HStack {
                            Button("C") {
                                clear()
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("0") {
                                handleNumberButton(0)
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("=") {
                                calculateResult()
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            Button("/") {
                                handleOperationButton("/")
                            }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                        }
                
                    }
                }
                    else {
                        HStack {
                           Spacer()
                            Text(displayText)
                                .font(.system(size: 80))
                                .padding()
                            Spacer()
                            VStack {
                                Spacer()
                                Button("1") {
                                    handleNumberButton(1)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("4") {
                                    handleNumberButton(4)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("7") {
                                    handleNumberButton(7)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("C") {
                                    clear()
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                
                            }
                            VStack {
                                Spacer()
                                Button("2") {
                                    handleNumberButton(2)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("5") {
                                    handleNumberButton(5)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("8") {
                                    handleNumberButton(8)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("0") {
                                    handleNumberButton(0)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            }
                            VStack {
                                Spacer()
                                Button("3") {
                                    handleNumberButton(3)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("6") {
                                    handleNumberButton(6)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("9") {
                                    handleNumberButton(9)
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("=") {
                                    calculateResult()
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))                             }
                            VStack {
                                Spacer()
                                Button("+") {
                                    handleOperationButton("+")
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("-") {
                                    handleOperationButton("-")
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("*") {
                                    handleOperationButton("*")
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                                Button("/") {
                                    handleOperationButton("/")
                                }.font(.system(size: 68)).frame(width: 80, height: 80).background(Circle().fill(Color.gray.opacity(0.3)))
                            }
                        }
                    }
                }
            }
    }
    
    func handleNumberButton(_ number: Int) {
        if isTyping {
            displayText += "\(number)"
        } else {
            displayText = "\(number)"
        }
        isTyping = true
    }
    
    func handleOperationButton(_ operation: String) {
        firstNumber = Double(displayText) ?? 0
        currentOperation = operation
        isTyping = false
        displayText = currentOperation   
    }
    
    func calculateResult() {
        secondNumber = Double(displayText) ?? 0
        switch currentOperation {
        case "+":
            displayText = "\(firstNumber + secondNumber)"
        case "-":
            displayText = "\(firstNumber - secondNumber)"
        case "*":
            displayText = "\(firstNumber * secondNumber)"
        case "/":
            displayText = "\(firstNumber / secondNumber)"
            
        default:
            break
        }
        
    }
    
    func clear() {
        displayText = "0"
        firstNumber = 0
        secondNumber = 0
        currentOperation = ""
        isTyping = false
    }
}
    
#Preview {
    ContentView()
}
