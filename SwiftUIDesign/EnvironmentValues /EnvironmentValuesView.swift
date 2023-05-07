//
//  EnvironmentValuesView.swift
//  SwiftUIDesign
//
//  Created by Ferrakkem Bhuiyan on 2023-05-07.
//

import SwiftUI

struct EnvironmentValuesView: View {
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        if dynamicTypeSize >= .xSmall {
            VStack {
                ProfilePictureView(profilePic: "profile-pic")
                ProfileName(name: "Programnmer", color: colorScheme)
                    
            }
        } else {
            HStack {
                ProfilePictureView(profilePic: "profile-pic")
                ProfileName(name: "Programnmer", color: colorScheme)
            }
        }
    }
}

struct EnvironmentValuesView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentValuesView()
            .environment(\.dynamicTypeSize, .medium)
    }
}
struct ProfilePictureView: View {
    var profilePic: String
    var body: some View {
        Image(profilePic)
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
    }
}

struct ProfileName: View {
    var name: String
    var color: ColorScheme
    var body: some View {
        Text(name)
            .bold()
            .font(.title2)
            .foregroundColor(color == .dark ? .red : .green)
    }
}


// MARK: - Environment Values Apples Docs
/// https://developer.apple.com/documentation/swiftui/environmentvalues
