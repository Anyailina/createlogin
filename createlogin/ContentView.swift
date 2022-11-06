//
//  ContentView.swift
//  createlogin
//
//  Created by Аня Ильина on 06.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Login()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Login : View {
    @State var user = ""
    @State var password = ""
    var body: some View {
        VStack {
            Image("icone")
            Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top, .bottom], 20)
            VStack(alignment: .leading){
                VStack(alignment: .leading) {
                    Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                    HStack {
                        TextField("Enter Your Username", text: $user)
                        if user != "" {
                            Image("check").foregroundColor(Color.init(.label))
                        }
                        
                    }
                    Divider()
                }.padding(.bottom, 15)
                VStack(alignment: .leading) {
                    Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.init(.label).opacity(0.75))
                
                    SecureField("Enter Your Password", text: $password)
                      
                    Divider()
                }
                HStack {
                    Spacer()
                    Button(action: {
                    }) {
                        Text("Forget Passsword?").foregroundColor(Color.gray.opacity(0.5))
                    }
                }
            }.padding(.horizontal, 6)
            bottomView()
        }.padding()
    }
}
struct bottomView : View{
    var body: some View {
        VStack {
            Button(action: {
            }) {
                Text("Sign In").foregroundColor(.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                
            }.background(Color("bg")).clipShape(Capsule()).padding(.top,45)
           
        }
    }
    
}
