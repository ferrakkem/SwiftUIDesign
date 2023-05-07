//
//  RedactedView.swift
//  SwiftUIDesign
//
//  Created by Ferrakkem Bhuiyan on 2023-05-06.
//

import SwiftUI

struct RedactedView: View {
    @State private var isloading = false
    var body: some View {
        VStack{
            VStack {
                Image("picture")
                    .resizable()
                    .frame(width: 120, height: 190)
                    .clipShape(Circle())
                Text("Azaan Bhuiyan")
                    .font(.title)
                    .bold()
            }
            Spacer().frame(height: 30)
            
            VStack (alignment: .leading, spacing: 12) {
                HStack {
                    Image(systemName: "envelope")
                    Text("myemail@gmail.com")
                }
                HStack {
                    Image(systemName: "phone")
                    Text("111-111-1111")
                }
                HStack {
                    Image(systemName: "network")
                    Text("itiswhatitIs.com")
                }
            }
            Spacer().frame(height: 30)
            
            Button {
                print("Button Tapped")
            } label: {
                Text("Update Profile")
                    .bold()
                    .frame(width: 260, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .disabled(isloading)
        }
        .onAppear {
            startNetWorkCall()
        }
        .redacted(reason: isloading ? .placeholder : [] )
    }
    func startNetWorkCall() {
        isloading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            isloading = false
        }
    }
}

struct RedactedView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedView()
    }
}
