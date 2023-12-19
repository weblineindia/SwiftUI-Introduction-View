//
//  CustomIntroConfig.swift
//  Introduction_view
//
//  Created by IOSUSER on 13/12/23.
//

import SwiftUI

struct CustomIntroConfig {
    var listIntroData: [IntroModel]
    var isShowPageIndicator: Bool
    var isPageIndicatorCircle: Bool? = false
    var isButtonPageIndicatorOverlay: Bool? = false
    var isShowButton: Bool? = false
    var pageIndicatorAlignment: Alignment? = .bottom
    var pageIndicatorColor: Color? = .black
    var descriptionFontSize: CGFloat? = 15
    var descriptionFontColor: Color? = .black
    var descriptionFontWeight: Font.Weight? = .regular
    var titleFontSize: CGFloat? = 20
    var titleFontColor: Color? = .black
    var titleFontWeight: Font.Weight? = .bold
    var quoteFontSize:  CGFloat? = 15
    var quoteFontColor: Color? = .black
    var quoteFontWeight: Font.Weight? = .regular
    var imageWidth: CGFloat? = 330
    var imageHeight: CGFloat? = 250
    var imageCornerRadius: CGFloat? = 0
    var buttonTextSize: CGFloat? = 15
    var buttonTextWeight: Font.Weight? = .regular
    var buttonTextTitle: String? = "Get Started"
    var buttonTextTitleColor: Color? = .white
    var buttonTextBackgroundColor: Color? = .black
    var buttonCornerRadius: CGFloat? = 15
    var buttonPageIndicatorBackgroundColor: Color? = .white
    var introViewBackgroundColor: Color? = .white
    var buttonPadding: Edge.Set? = .all
    var buttonAction: (() -> Void)? = {print("button Tapped")}
    
}
