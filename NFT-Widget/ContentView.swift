//
//  ContentView.swift
//  NFT-Widget
//
//  Created by 三谷大典 on 2022/05/25.
//

import SwiftUI
import CoreData
import WidgetKit
import WebKit

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State private var text = ""
    
    var body: some View {
        MyWebView(url: "https://0xsnp.xyz/")
//        NavigationView {
//            List {
//                VStack {
//                    TextField("文字入力", text: $text)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                        .padding(.horizontal)
//                    Button(action: {
//                        let userDefaults = UserDefaults(suiteName: "group.NFTWidget")
//                        if let userDefaults = userDefaults {
//                            userDefaults.synchronize()
//                            userDefaults.setValue(text, forKeyPath: "inputText")
//                        }
//                        WidgetCenter.shared.reloadAllTimelines()
//                    }){
//                        Text("文字を保存する")
//                    }
//                }
//            }
//        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
