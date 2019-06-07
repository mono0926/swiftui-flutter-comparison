//
//  LandmarkList.swift
//  swiftuiFlutter
//
//  Created by mono on 2019/06/06.
//  Copyright © 2019 Aquatica Inc. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        List {

            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites only")
            }

            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}
#endif
