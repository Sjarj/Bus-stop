import CoreGraphics

enum Constants {
    static let busWidth: Int = 60
    static let busHeight: Int = 20
    static let busSize = CGSize(width: Constants.busWidth, height: Constants.busHeight)
    
    static let mainViewSize: Int = 600
    static let sectionSize: Int = 50
    static var lineLength: Int {
        return mainViewSize / sectionSize
    }
}
