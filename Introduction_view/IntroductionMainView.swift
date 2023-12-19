//
//  IntroductionView.swift
//  Introduction_view
//
//  Created by wli's on 12/12/23.
//

import SwiftUI

struct IntroductionMainView: View {
    
    var body: some View {
        VStack{
            
            CustomIntroductionView(config: config())
        }
    }
    
    func config() -> CustomIntroConfig {
        var config = CustomIntroConfig(listIntroData: listIntroData, isShowPageIndicator: true)
        config.pageIndicatorAlignment = .bottom
        config.pageIndicatorColor = .indigo
        config.titleFontSize = 24
        config.titleFontColor = .indigo
        config.quoteFontColor = .gray
        config.quoteFontWeight = .thin
        config.descriptionFontSize = 19
        config.descriptionFontColor = .black
        config.imageCornerRadius = 15
        config.isButtonPageIndicatorOverlay = true
        config.buttonAction = {print("started")}
        config.isShowButton = true
        return config
    }
}

