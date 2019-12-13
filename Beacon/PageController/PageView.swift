//
//  PageView.swift
//  Beacon
//
//  Created by Vinay Bharwani on 23/10/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import SwiftUI
import UIKit

struct PageView<Page: View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]){
        self.viewControllers = views.map{ UIHostingController(rootView: $0) }
    }
    var body: some View{
        ZStack(alignment: .bottomTrailing) {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
                .padding(.trailing)
            Text("Current Page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map { FeatureCard(landmark: $0) })
    }
}
