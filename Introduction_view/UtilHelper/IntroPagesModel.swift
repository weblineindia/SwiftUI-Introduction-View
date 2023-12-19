//
//  View.swift
//  Introduction_view
//
//  Created by IOSUSER on 12/12/23.
//

import SwiftUI

struct IntroModel:Identifiable {
    var id = UUID()
    var image: String?
    var title: String?
    var quote: String?
    var description: String?
    var tag: Int
    
    static var nextTag = 0
      
      init(image: String?, title: String?, quote: String?, description: String?) {
          self.image = image
          self.title = title
          self.quote = quote
          self.description = description
          self.tag = IntroModel.nextTag
          IntroModel.nextTag += 1
      }
}



var listIntroData = [
        IntroModel(image: "solarsystem", title: "Solar System", quote: "When you look at the stars and the galaxy, you feel that you are not just from any particular piece of land, but from the solar system.", description: "The Solar System consists of the Sun Moon and Planets. It also consists of comets, meteoroids and asteroids. The Sun is the largest member of the Solar System. In order of distance from the Sun, the planets are Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune and Pluto; the dwarf planet. The Sun is at the centre of the Solar System and the planets, asteroids, comets and meteoroids revolve around it."),
        IntroModel(image: "sun", title: "Sun", quote: "The Sun never repents of the good he does, nor does he ever demand a recompense.", description: "The sun is a huge ball of gases. It has a diameter of 1,392,000 km. It is so huge that it can hold millions of planets inside it. The Sun is mainly made up of hydrogen and helium gas. The surface of the Sun is known as the photosphere. The photosphere is surrounded by a thin layer of gas known as the chromospheres. Without the Sun, there would be no life on Earth. There would be no plants, no animals and no human beings. As, all the living things on Earth get their energy from the Sun for their survival."),
        
        IntroModel(image: "earthfinal", title: "Earth", quote: "Those who contemplate the beauty of the earth find reserves of strength that will endure as long as life lasts.", description: "Earth is the third planet in our solar system. It is in the shape which is close to sphere (spheroid). Earth is called the “blue planet” because it looks blue in colour when it is seen from outer space. It looks blue because there is water on this planet. It is the only planet that has life on it. Life is possible on Earth because of water and because of all the gases which are important for life. Earth is in perfect distance from Sun and so there is a mild climate here. Other planets are too hot or too cold and life is impossible there."),
        
        IntroModel(image: "moon", title: "Moon", quote: "Do not swear by the moon, for she changes constantly. then your love would also change.", description: "The Moon is a barren, rocky world without air and water. It has dark lava plain on its surface. The Moon is filled wit craters. It has no light of its own. It gets its light from the Sun. The Moo keeps changing its shape as it moves round the Earth. It spins on its axis in 27.3 days stars were named after the Edwin Aldrin were the first ones to set their foot on the Moon on 21 July 1969 They reached the Moon in their space craft named Apollo II."),
        
        
    ]
