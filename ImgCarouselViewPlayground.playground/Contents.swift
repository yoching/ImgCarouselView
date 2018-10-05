//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import PlaygroundSupport
import ImgCarouselView

let viewController = UIViewController()
viewController.view.backgroundColor = .white
PlaygroundPage.current.liveView = viewController

// ------------------------------------
// setup
// ------------------------------------

// add imgCarouselView
let imgCarouselView = ImgCarouselView(
    frame: CGRect(
        x: 0,
        y: 0,
        width: viewController.view.bounds.width,
        height: viewController.view.bounds.height
    )
)
viewController.view.addSubview(imgCarouselView)

// configure imgCarouselView
if let image = UIImage(named: "sample-m"),
    let imageUrl01 = URL(string: "http://yoshikuni-web.com/wp-content/uploads/2015/01/Radi-Hey1.png"),
    let imageUrl02 = URL(string: "http://yoshikuni-web.com/wp-content/uploads/2017/02/iTunesArtwork-e1488015602699.png") {
    
    imgCarouselView.configure(
        imageSources: [
            .url(imageUrl01),
            .url(imageUrl02)
        ]
    )
    
    // customize contentMode (if you want)
//    imgCarouselView.configure(
//        imageSources: [
//            .url(imageUrl01),
//            .url(imageUrl02),
//            .image(image)
//        ],
//        cellContentMode: .scaleAspectFill
//    )
}
