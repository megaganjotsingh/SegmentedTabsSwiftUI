//
//  SegmentedControl.swift
//  SegmentedControl
//
//  Created by Admin on 03/11/23.
//

import Foundation
import SwiftUI

struct SegmentedTabsView1: View {
    
    var titles: [String]
    
    @Binding var selectedIndex: Int
    
    @Namespace var namespace
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(titles.indices, id: \.self) { index in
                        Text(titles[index])
                            .font(.system(size: 17))
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                            .overlay {
                                Capsule().stroke(Color.white.opacity(0.2), lineWidth: 1)
                            }
                            .matchedGeometryEffect(
                                id: index,
                                in: namespace,
                                isSource: true
                            )
                            .onTapGesture {
                                withAnimation {
                                    selectedIndex = index
                                    proxy.scrollTo(index)
                                }
                            }
                    }
                }
            }
            .clipShape(Capsule())
            .padding(8.0)
            .background {
                Capsule()
                    .fill(.blue.opacity(0.5))
                    .matchedGeometryEffect(
                        id: selectedIndex,
                        in: namespace,
                        isSource: false
                    )
            }
        }
    }
    
}
