Pod::Spec.new do |spec|
    spec.name = 'FoxCoreDataService'
    spec.version = '1.0.2'
    spec.summary = 'FoxStudio CoreData service'
    spec.homepage = 'https://github.com/tr1ckyf0x-studio/FoxCoreDataService'
    spec.author = { 'Vladislav Lisianskii' => 'vladislav.lisyanskiy@gmail.com' }
    spec.source = { :git => 'https://github.com/tr1ckyf0x-studio/FoxCoreDataService.git', :tag => spec.version.to_s }
    spec.platform = :ios, '13.0'
    spec.source_files = []

    spec.subspec 'Core' do |core|
        core.source_files = 'Sources/FoxCoreDataService/Core/**/*.{swift}'
        core.dependency 'CocoaLumberjack/Swift'
    end

    spec.subspec 'Helpers' do |helpers|
        helpers.source_files = 'Sources/FoxCoreDataService/Helpers/**/*.{swift}'
    end

    spec.subspec 'Protocols' do |protocols|
        protocols.source_files = 'Sources/FoxCoreDataService/Protocols/**/*.{swift}'
    end
end
