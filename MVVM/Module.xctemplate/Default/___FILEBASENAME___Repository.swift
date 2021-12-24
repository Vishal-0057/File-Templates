//
//  ___FILEHEADER___
//

import Foundation

typealias ___VARIABLE_moduleName:identifier___Completion = ((Result<___VARIABLE_moduleName:identifier___Model, Error>) -> Void)

protocol ___VARIABLE_moduleName:identifier___RepositoryType {
    func fetch(_ completion: @escaping ___VARIABLE_moduleName:identifier___Completion)
}

class ___VARIABLE_moduleName:identifier___Repository: ___VARIABLE_moduleName:identifier___RepositoryType {

    // MARK: - Properties

    // Add here a property containing info and set a property observe
    private let service: ___VARIABLE_moduleName:identifier___Service


    // MARK: - Constructor

    // Add here a custom constructor
    init(_ service: ___VARIABLE_moduleName:identifier___Service) {
        self.service = service
    }


    // MARK: - Fetching functions

    func fetch(_ completion: @escaping ___VARIABLE_moduleName:identifier___Completion) {
        // Do something
        //service.performHTTPRequest()
    }
}

struct ___VARIABLE_moduleName:identifier___Service {
    
}
