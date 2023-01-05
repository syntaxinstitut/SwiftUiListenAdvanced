//
//  ContentView.swift
//  SwiftUiListenAdvanced
//
//  Created by Till Hemmerich on 05.01.23.
//

import SwiftUI

let comment1 = Comment(text: "test text", author: "Till")
let comment2 = Comment(text: "test text 2", author: "lukas")
let comment3 = Comment(text: "test text 3 ", author: "Peter")
let comment4 = Comment(text: "test text 4", author: "Jana" )


let post1 = Post(title: "post1", author: "Ruben", comments: [comment1,comment2], date: "21.02.2022", showComments: false)

let post2 = Post(title: "das hier ist eine super Title", author: "Lukas", comments: [comment3,comment4], date: "01.01.2023", showComments: false)


struct ContentView: View {
    @State var posts = [post1,post2]
    @State var isPresented : Bool = false
    var body: some View {
        VStack {
            List(posts.indices){
                index in
                HStack{
                    PostView(post: posts[index])
                    Spacer()
                }
                .onTapGesture {
                    for i in 0...posts.count-1{
                        if(i == index){
                            posts[i].showComments.toggle()
                        }
                        else{
                            posts[i].showComments = false
                        }
                    }
                    
                }
                if(posts[index].showComments){
                    Button("Add comment"){
                        isPresented = true
                    }.padding()
                }
            }
        }
        
        .sheet(isPresented: $isPresented){
            Text("HelloWorld")
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
