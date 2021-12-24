//
//  ___FILEHEADER___
//

import Foundation

protocol LoadingIndicatable {
    var updateLoadingStateClosure: ((Bool)->())? { get set }
    var isLoading: Bool { get }
}
