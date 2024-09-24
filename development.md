## Generate model

``` shell
dart pub run build_runner clean
```

``` shell
dart pub run build_runner build --delete-conflicting-outputs
```

``` shell
flutter packages pub run build_runner watch --delete-conflicting-outputs --build-filter="lib/app/shared/app/app_payment/**"
```

``` shell
dart fix --apply
```

``` shell
dart run flutter_native_splash:create
```
``` shell
flutter build apk --release
```
``` shell
flutter build apk --debug
```



flutter packages pub run build_runner build --delete-conflicting-outputs --build-filter="lib/app/features/**/presentation/**"