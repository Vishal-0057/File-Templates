//
//  ___FILEHEADER___
//

import Foundation

protocol ___VARIABLE_moduleName:identifier___Fetchable {
    func fetchData(_ completion: @escaping ___VARIABLE_moduleName:identifier___Completion)
}

protocol ___VARIABLE_moduleName:identifier___ViewModelType: ___VARIABLE_moduleName:identifier___Fetchable, LoadingIndicatable {}

class ___VARIABLE_moduleName:identifier___ViewModel: ___VARIABLE_moduleName:identifier___ViewModelType {

    // MARK: - Properties

    // Add here a property containing info and set a property observe
    private let repository: ___VARIABLE_moduleName:identifier___RepositoryType


    // MARK: - Constructor

    // Add here a custom constructor
    init(_ repository: ___VARIABLE_moduleName:identifier___RepositoryType) {
        self.repository = repository
    }

    // MARK: - Closures

    // Through these closures, our view model will execute code while some events will occure
    // They will be set up by the view controller
    var updateLoadingStateClosure: ((Bool)->())?

    var isLoading: Bool = false {
        didSet {
            self.updateLoadingStateClosure?(isLoading)
        }
    }



    // MARK: - Fetching functions

    func fetchData(_ completion: @escaping ___VARIABLE_moduleName:identifier___Completion) {
        self.isLoading = true

        // Do something
        repository.fetch(completion)

        //When done:
        self.isLoading = false
    }
}
