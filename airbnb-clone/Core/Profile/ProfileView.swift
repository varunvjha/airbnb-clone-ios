//
//  ProfileView.swift
//  airbnb-clone
//
//  Created by Varun on 25/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip")
                }
                
                Button {
                    
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                HStack {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }.font(.caption)
            }
            
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Settings")
            }
            .padding(.vertical)
        }.padding()
    }
}

#Preview {
    ProfileView()
}
