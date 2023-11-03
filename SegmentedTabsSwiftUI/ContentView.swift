//
//  ContentView.swift
//  SegmentedTabs
//
//  Created by Admin on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var titles: [String] = ["Sun", "Mon", "Tue", "Wed", "Thurs", "Fri", "Sat"]
    @State var selectedIndex1: Int = 0
    @State var selectedIndex2: Int = 0
    
    var body: some View {
        VStack(spacing: 24) {
            SegmentedTabsView1(titles: titles, selectedIndex: $selectedIndex1)
            
            SegmentedTabsView2(titles: titles, selectedIndex: $selectedIndex2)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
