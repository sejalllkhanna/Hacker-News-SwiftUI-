//
//  ContentView.swift
//  Hacker News
//
//  Created by sejal khanna on 11/10/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("HackerNews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts = [
//    Post(id: "1", title: "Hey"),
//    Post(id: "2", title: "Heya"),
//    Post(id: "3", title: "Hi")
//]

