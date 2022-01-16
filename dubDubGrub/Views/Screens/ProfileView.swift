//
//  ProfileView.swift
//  dubDubGrub
//
//  Created by Lucian Cerbu on 11.01.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            ZStack {
                NameBackgroundView()
                
                HStack {
                    ZStack {
                        AvatarView(size: 84)
                        EditImage()
                    }
                        .padding(.leading, 12)
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .profileNameStyle()
                        
                        TextField("Last Name", text: $lastName)
                            .profileNameStyle()
                        
                        TextField("Company Name", text: $companyName)
                            .padding(.trailing, 16)
                    }
                }
                .padding()
            }
            VStack(alignment: .leading, spacing: 8) {
                CharactersRemainView(currentCount: bio.count)
                                
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.secondary, lineWidth: 1))
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            Button {

            } label: {
                DDGButton(title: "Create Profile")
            }
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}

struct profileNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}



struct NameBackgroundView: View {
    var body: some View {
        Color(uiColor: .secondarySystemBackground)
            .frame(height: 130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 14, height: 14)
            .scaledToFit()
            .offset(y: 30)
    }
}

struct CharactersRemainView: View {
    var currentCount: Int
    
    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100 - currentCount)")
            .bold()
            .font(.callout)
            .foregroundColor(currentCount <= 100 ? .brandPrimary : Color(uiColor: .systemPink))
        +
        Text(" characters Remain")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}
