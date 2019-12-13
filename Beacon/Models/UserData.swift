//
//  UserData.swift
//  Beacon
//
//  Created by Vinay Bharwani on 21/10/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import SwiftUI
//import Combine

final class UserData: ObservableObject{
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
