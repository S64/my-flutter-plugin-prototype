task :default => [
  :welcome,
  :test
]

task :welcome do
  sh %[$SHELL --login -c 'sdk env']
  sh %[rbenv local]
  sh %[bundle install]
  sh %[flutter doctor]
  ['shuma_hoge_platform_interface', 'shuma_hoge_web', 'shuma_hoge'].each do |proj|
    Dir.chdir(proj) do
      sh %[flutter pub get]
    end
  end
end

task :test do
  ['shuma_hoge_platform_interface', 'shuma_hoge_web'].each do |proj|
    Dir.chdir(proj) do
      #sh %[flutter pub publish --dry-run]
      sh %[flutter test]
      sh %[flutter analyze]
    end
  end

  Dir.chdir('shuma_hoge') do
    #sh %[flutter pub publish --dry-run]
    sh %[flutter test]
    Dir.chdir('example/android') do
      sh %[./gradlew --info :shuma_hoge:lint :shuma_hoge:test :app:lint :app:test]
    end
    sh %[flutter analyze]
  end
end

task :openApiIde do
  sh %[studio shuma_hoge/ shuma_hoge/lib/shuma_hoge.dart]
end

task :openPlatformInterfaceIde do
  sh %[studio shuma_hoge_platform_interface/ shuma_hoge_platform_interface/lib/shuma_hoge_platform_interface.dart]
end

task :openAndroidIde do
  sh %[studio shuma_hoge/example/android shuma_hoge/android/src/main/java/jp/co/kiganix/flutterplugins/shumahoge/ShumaHogePlugin.java]
end

task :openWebIde do
  sh %[studio shuma_hoge_web/ shuma_hoge_web/lib/shuma_hoge_web.dart]
end
