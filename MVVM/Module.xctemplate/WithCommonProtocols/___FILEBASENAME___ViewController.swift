//
//  ___FILEHEADER___
//

import UIKit

class ___VARIABLE_moduleName:identifier___ViewController: UIViewController, DeinitInforming {

    // MARK: - Properties
    var onDeinit: OnDeinit?
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()

    // Add here outlets

    // Uncomment below lazy implementation
    // Add here your view model
//    lazy var viewModel: ___VARIABLE_moduleName:identifier___ViewModelType = {
//        return ___VARIABLE_moduleName:identifier___ViewModel()
//    }()

    private var viewModel: ___VARIABLE_moduleName:identifier___ViewModelType
    private var coordinator: ___VARIABLE_moduleName:identifier___CoordinatorType

    // MARK: - Constructor


    init(_ viewModel: ___VARIABLE_moduleName:identifier___ViewModelType,
         coordinator: ___VARIABLE_moduleName:identifier___CoordinatorType) {

        self.viewModel = viewModel
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: Bundle.main)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View LifeCycle


    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        fetchApiData()
    }

    deinit {
        onDeinit?()
    }

    // MARK: - UI Setup functions


    func setupUI() {
        // Add here the setup for the UI
    }

    // MARK: - Logical Functionality


    func fetchApiData() {
        viewModel.fetchData { result in

            switch result {
            case .success(let model):
                print(model)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    func initViewModel() {
        // Add here the setup for the ViewModel

        // Setup for updateLoadingStateClosure
        viewModel.updateLoadingStateClosure = { [weak self] isLoading in
            DispatchQueue.main.async {
                if isLoading {
                    self?.activityIndicator.startAnimating()

                    // Do something else, for example hide some UI controls.

                } else {
                    self?.activityIndicator.stopAnimating()

                    // Do something else, for example show some UI controls.
                }
            }
        }
    }

    // MARK: - Navigation Functionality

    // Navigation Examples using Coordinator Pattern
    /*
    func profileTapped() {
        coordinator?.profileTapped()
    }
     */
}
