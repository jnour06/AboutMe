//
//  ContentView.swift
//  AboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showBio = false
    var body: some View {
        VStack {
            Text("Jenna Nour El Deen")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.196, green: 0.305, blue: 0.422))
            Image("Jenna")
                .resizable(capInsets: EdgeInsets(top: 1.0, leading: -4.0, bottom: 0.0, trailing: -40.0), resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(Rectangle()
                    .foregroundColor(.white))
            
                
            
            Button(action:
                    {showBio.toggle()})
            { Text("Click to know more about me...")
                    .font(.footnote)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
        
            if showBio {
                Text("I'm an upcoming senior who is 17. I love playing vollleyball and I'm on the school's team. I also love to create 2d art with any gradient and chilling around with friends!")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
