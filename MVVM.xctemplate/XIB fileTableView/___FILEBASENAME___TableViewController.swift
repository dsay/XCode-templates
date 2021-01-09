import POPDataSource

class ___VARIABLE_productName___TableViewController: UIViewController {
    
    var viewModel: ___VARIABLE_productName___ViewModelProtocol!
    
    @IBOutlet private weak var tableView: UITableView!

    private var dataSourceShim: TableViewDataSourceShim? = nil {
        didSet {
            tableView.dataSource = dataSourceShim
            tableView.delegate = dataSourceShim
            tableView.reloadData()
        }
    }
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        viewModel.change(lifeCycle: .didLoad)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.change(lifeCycle: .willAppear)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.change(lifeCycle: .didAppear)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewModel.change(lifeCycle: .willDisappear)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.change(lifeCycle: .didDisappear)
    }

    deinit {
        viewModel.change(lifeCycle: .didDeinit)
    }

    // MARK: - Private

    private func configureUI() {

    }
}

// MARK: - Private ___VARIABLE_productName___ViewModelOutput
extension ___VARIABLE_productName___TableViewController: ___VARIABLE_productName___ViewProtocol {

    func dataDidUpdate() {
        tableView.reloadData()
    }
    
    func configureDataSource(_ dataSources: [TableViewDataSource]) {
        dataSourceShim = TableViewDataSourceShim(ComposedDataSource(dataSources))
    }
}
