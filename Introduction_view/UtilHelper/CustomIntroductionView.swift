//
//  CustomIntroductionView.swift
//  Introduction_view
//
//  Created by IOSUSER on 12/12/23.
//

import SwiftUI

struct CustomIntroductionView: View {
    @State private var selectedTab = 0
    var config: CustomIntroConfig
    var body: some View {
        ZStack {
            
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(config.listIntroData.indices, id: \.self) { index in
                        let data = config.listIntroData[index]
                        ScrollView(showsIndicators: false){
                            Spacer(minLength: 30)
                            VStack(spacing: 20) {
                                if let image = data.image {
                                    Image(image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: config.imageWidth, height: config.imageHeight)
                                    
                                        .cornerRadius(config.imageCornerRadius ?? 0)
                                }
                                
                                if let title = data.title {
                                    Text(title)
                                        .font(.system(size: config.titleFontSize ?? 20))
                                    
                                        .foregroundColor(config.titleFontColor)
                                        .fontWeight(config.titleFontWeight)
                                }
                                
                                if let quote = data.quote {
                                    Text("\"\(quote)\"")
                                        .font(.system(size: config.quoteFontSize ?? 15))
                                        .foregroundColor(config.quoteFontColor)
                                        .fontWeight(config.quoteFontWeight)
                                }
                                
                                if let description = data.description {
                                    Text(description)
                                        .font(.system(size: config.descriptionFontSize ?? 15))
                                        .foregroundColor(config.descriptionFontColor)
                                        .fontWeight(config.descriptionFontWeight)
                                        .multilineTextAlignment(.leading)
                                        
                                }
                            }
                            .padding(.horizontal, 10)
                            
                            Spacer(minLength: 100)

                        }
                        .padding(.bottom)
                        .tag(index)
                        
                    }
                    
                }
                
            }
        }
        .background(config.introViewBackgroundColor)
        .tabViewStyle(.page(indexDisplayMode: .never))
        .overlay(
            VStack(alignment: .center, spacing: 30){
                
                HStack{
                    if config.listIntroData.count > 1{
                        ForEach(config.listIntroData.indices, id: \.self) { index in
                            let isSelected = index == selectedTab
                            if config.isShowPageIndicator{
                                if config.isPageIndicatorCircle ?? false{
                                    Circle()
                                        .frame(width: isSelected ? 13 : 8, height: isSelected ? 13 : 8)
                                        .foregroundColor(config.pageIndicatorColor)
                                        .shadow(color: .black, radius: 1)
                                }

                                else{
                                    withAnimation(.easeInOut(duration: 1.5)) {
                                        Capsule()
                                            .frame(width: isSelected ? 40 : 10, height: 10)
                                            .foregroundColor(config.pageIndicatorColor)
                                            .shadow(color: .black, radius: 1)

                                    }
                                   
                                }
                            }
                        }
                    }
                    
                }
                if config.isShowButton ?? false{
                    HStack{
                        Button(action: {
                            (config.buttonAction ?? { print("Button Tapped") })()
                        }) {
                            Text(config.buttonTextTitle ?? "Get Started")
                                .font(.system(size: config.buttonTextSize ?? 15))
                                .fontWeight(config.buttonTextWeight)
                                .foregroundColor(config.buttonTextTitleColor)
                                .padding(config.buttonPadding ?? .all)
                                .background(config.buttonTextBackgroundColor)
                                .cornerRadius(config.buttonCornerRadius ?? 15)
                        }
                    }
                }
                
            }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.bottom, 5)
                .padding(.top, 20)
                .animation(.spring(), value: selectedTab)
                .background(config.isButtonPageIndicatorOverlay ?? false ? Color.clear : config.buttonPageIndicatorBackgroundColor  )
            , alignment: config.pageIndicatorAlignment ?? .bottom)
    }
}
