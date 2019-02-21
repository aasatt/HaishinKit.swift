import AVFoundation
import CoreImage
import Foundation
import MetalPetal

open class VisualEffect: NSObject {
    
    func removeContext() {
        fatalError("Override this")
    }

}

open class CIVisualEffect: VisualEffect {
    open var ciContext: CIContext?

    open func execute(_ image: CIImage, info: CMSampleBuffer?) -> CIImage {
        return image
    }
    
    override func removeContext() {
        ciContext = nil
    }

}

open class MTVisualEffect: VisualEffect {
    open var mtContext: MTIContext?
    
    open func execute(_ image: MTIImage, info: CMSampleBuffer?) -> MTIImage {
        return image
    }
    
    override func removeContext() {
        mtContext = nil
    }
    
}
