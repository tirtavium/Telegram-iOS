import Foundation
import UIKit
import TelegramCore
import SyncCore

public extension TelegramWallpaper {
    var isEmpty: Bool {
        switch self {
        case .image:
            return false
        case let .file(file):
            if file.isPattern, file.settings.color == 0xffffff {
                return true
            } else {
                return false
            }
        case let .color(color):
            return color == 0xffffff
        default:
            return false
        }
    }
    
    var isColorOrGradient: Bool {
        switch self {
        case .color, .gradient:
            return true
        default:
            return false
        }
    }
    
    var isPattern: Bool {
        switch self {
        case let .file(file):
            return file.isPattern
        default:
            return false
        }
    }
    
    var isBuiltin: Bool {
        switch self {
        case .builtin:
            return true
        default:
            return false
        }
    }
    
    var dimensions: CGSize? {
        if case let .file(file) = self {
            return file.file.dimensions?.cgSize
        } else {
            return nil
        }
    }
}
