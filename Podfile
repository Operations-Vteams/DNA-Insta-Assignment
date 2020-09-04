# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'DNA Insta Assignment' do
    pod 'RxSwift'
    pod 'RxCocoa'
    pod 'SDWebImage'

end

  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

 target 'DNA Insta AssignmentTests' do
    pod 'RxSwift'
    pod 'RxCocoa'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      if ['HexColors'].include? target.name
        target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '4.0'
        end
      end
    end
  end
end
