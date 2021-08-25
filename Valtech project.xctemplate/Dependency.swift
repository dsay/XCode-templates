import UIKit
import SwiftRepository
import KeychainSwift
import ColoplastSDK
import Alamofire
import RealmSwift

class Dependency {

    private struct Keys {
        static let userDefaultsKey = "userDefaultsKey"
        static let msalFileExtension = "plist"
    }
    
    static let shared = Dependency()

    func configure() {
        configureCoreDependencies()
        configureRepositories()
        configureInteractors()
    }

    private func configureCoreDependencies() {
        
        let mainSession = MainSessionManager.default()
        let environmentConfig: EnvironmentConfig? = EnvironmentConfig.create(plistName: Environment.current.environmentConfigFileName)
        let keychain: Storage = KeychainSwift()
        let userDefaults: Storage = UserDefaults.standard
        let handler = BaseHandler(Environment.current.logger)
        let local: Realm = store()

        ServiceLocator.shared.register(service: mainSession)
        ServiceLocator.shared.register(service: handler)
        ServiceLocator.shared.register(service: keychain)
        ServiceLocator.shared.register(service: handler)
        ServiceLocator.shared.register(service: userDefaults, name: Keys.userDefaultsKey)
        ServiceLocator.shared.register(service: local)

        if let environmentConfig = environmentConfig {
            ServiceLocator.shared.register(service: environmentConfig)
        }

        if let path = Bundle.main.url(forResource: Environment.current.msalCongigFileName, withExtension: Keys.msalFileExtension),
            let data = try? Data(contentsOf: path),
            let JSON = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil) as? [String: Any],
            let config = MyOstomyMSALConfig(JSON: JSON) {
                ServiceLocator.shared.register(service: config)
        }
    }
    
    private func configureRepositories() {
        let session: Session = inject()
        let handler: BaseHandler = inject()
        let local: Realm = inject()
        
        let consentRepository = ConsentRepository(remote: RemoteStoreMappable<ConsentEntity>(session: session, handler: handler))
        let localUserDataRepository = UserLocalDataRepository(dependencies: UserLocalDataRepository.Dependencies(storage: ServiceLocator.shared.get(name: Keys.userDefaultsKey)))
        let profileRepository = ProfileRepository<OCAppUserProfile>(remote: RemoteStoreMappable<OCAppUserProfile>(session: session, handler: handler))
        let categoryRepository = CategoryRepository(local: RealmStore<Category>(local),
                                                    remote: RemoteStoreMappable<Category>(session: session, handler: handler))
        let goalRepository = GoalRepository(remote: RemoteStoreMappable<Goal>(session: session, handler: handler))
        
        ServiceLocator.shared.register(service: consentRepository)
        ServiceLocator.shared.register(service: localUserDataRepository)
        ServiceLocator.shared.register(service: profileRepository)
        ServiceLocator.shared.register(service: categoryRepository)
        ServiceLocator.shared.register(service: goalRepository)
    }
    
    private func configureInteractors() {
        let consentRepository: ConsentRepository = inject()
        let localUserDataRepository: UserLocalDataRepository = inject()
        let profileRepository: ProfileRepository<OCAppUserProfile> = inject()
        let categoryRepository: CategoryRepository = inject()
        let goalRepository: GoalRepository = inject()
        
        let consentInteractor = ConsentInteractor(dependencies: ConsentInteractor.Dependencies(consentRepo: consentRepository, localUserDataRepo: localUserDataRepository))
        let profileInteractor = ProfileInteractor<OCAppUserProfile, ProfileRepository<OCAppUserProfile>>(
            dependencies: ProfileInteractor.Dependencies(
                profileRepositoryProtocol: profileRepository,
                userLocalDataRepository: localUserDataRepository))
        let ocProfileInteractor = OCProfileInteractor(dependencies: OCProfileInteractor.Dependencies(profileRepositoryProtocol: profileRepository,
                                                                                                     userLocalDataRepository: localUserDataRepository))
        let categoryInteractor = CategoryInteractor(dependencies: CategoryInteractor.Dependencies(categoryRepository: categoryRepository))
        let goalInteractor = GoalInteractor(dependencies: GoalInteractor.Dependencies(goalRepository: goalRepository))
        
        ServiceLocator.shared.register(service: consentInteractor)
        ServiceLocator.shared.register(service: profileInteractor)
        ServiceLocator.shared.register(service: ocProfileInteractor)
        ServiceLocator.shared.register(service: categoryInteractor)
        ServiceLocator.shared.register(service: goalInteractor)
    }

    private func store() -> Realm {
        do {
            return try Realm()
        } catch _  {
            try? FileManager.default.removeItem(at: Realm.Configuration.defaultConfiguration.fileURL!)
            return store()
        }
    }
}
