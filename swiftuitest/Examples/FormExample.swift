//
//  FormExample.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 18.11.2021.
//

import SwiftUI

enum ProfileImageSize {
    case large, medium, small
}
enum NotifyMeAboutType {
    case directMessages, mentions, anything
}

struct FormExample: View {
    @State var profileImageSize: ProfileImageSize = .small
    @State var notifyMeAbout: ProfileImageSize = .small
    @State var playNotificationSounds = true
    @State var sendReadReceipts = false
    
    var body: some View {
        NavigationView {
            // form background color değiştiremiyoruz
            // https://stackoverflow.com/questions/57254461/how-to-change-the-background-color-for-a-form-in-swiftui
            Form {
                Section(header: Text("Notifications")) {
                    Picker("Notify Me About", selection: $notifyMeAbout) {
                        Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
                        Text("Mentions").tag(NotifyMeAboutType.mentions)
                        Text("Anything").tag(NotifyMeAboutType.anything)
                    }
                    Toggle("Play notification sounds", isOn: $playNotificationSounds)
                    Toggle("Send read receipts", isOn: $sendReadReceipts)
                        .onChange(of: sendReadReceipts, perform: sendReadReceiptChanged(_:))
                        
                }
                Section(header: Text("User Profiles")) {
                    Picker("Profile Image Size", selection: $profileImageSize) {
                        Text("Large").tag(ProfileImageSize.large)
                        Text("Medium").tag(ProfileImageSize.medium)
                        Text("Small").tag(ProfileImageSize.small)
                    }
                    NavigationLink("Clear Image Cache") {}
                }
            }
            //.introspectTableView { $0.backgroundColor = .systemBlue }
            .background(Color.init(UIColor.cyan))
            .navigationTitle(Text("Form Example"))
        }
    }
    
    func sendReadReceiptChanged(_ newValue: Bool){
        print(newValue)
    }
}

struct FormExample_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FormExample()
        }
    }
}
