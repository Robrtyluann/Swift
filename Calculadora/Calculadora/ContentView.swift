//
//  ContentView.swift
//  Calculadora
//
//  Created by Turma01-24 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var cor: Color = .gray
    @State var img: String = "interrogacao"
    @State var value: Int = 0
    @State var value2: Int = 0
    @State var result: Int = 0
    var body: some View {
        ZStack {
            VStack{
                Text("Distancia em (km)")
                TextField("km", value: $value, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    .background(Color.white.opacity(1).frame(height:25).cornerRadius(100))
                    .frame(width:200)
                
                Text("Digite o tempo (h)")
                TextField("km", value: $value2, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    .background(Color.white.opacity(1).frame(height:25).cornerRadius(100))
                    .frame(width:200)
                
                Button("calcular"){
                    result = value / value2
                    
                    if(result >= 1 && result <= 10){
                        img = "tarta"
                        cor = .init("Color1")
                    }else if(result > 10 && result < 40){
                        img = "elefante"
                        cor = .red
                    }else if(result > 40 && result < 60){
                        img = "cangu"
                        cor = .clear
                    }else if(result > 60 && result < 80){
                        img = "leao"
                        cor = .yellow
                    }else if(result > 80 && result <= 100){
                        img = "leopardo"
                        cor = .white
                    }else{
                        img = "interrogacao"
                    }
                    
                    
                }
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                
                Text("\(result) km/h")
                    .frame(height: 70)
                
                
                Image(img)
                    .resizable()
                    .scaledToFit()
                    .frame(width:300, height: 300)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .position(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/6)
            
            }
            
            
        }
        .background(cor)
    }
}

#Preview {
    ContentView()
}
