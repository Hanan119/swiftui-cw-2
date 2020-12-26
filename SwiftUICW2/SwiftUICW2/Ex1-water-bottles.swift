//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name = ""
    @State var b=1
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .lineLimit(-1)
                
                
             TextField("اكتب اسمك هنا" , text: $name )
                Stepper("كم بطلا من الماء تريد ان تتعهد بأن تشرب؟", value: $b, in: 1...200)
                    .padding()
                 
                Spacer()
                
                Text(" أتعهد أنا ")
                    
                    Text(name)
                        
                
                    .padding()
                Text("أن أشرب ")
                    Text("\(b)")
                    .padding()
                
              
                
                Text(" أكواب من الماء يوميا والله على ما اقول شهيد ")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                
                Spacer()        
            }.padding()
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
