# seed

A new Flutter project.

## Getting Started

This project flavor is basead in: https://bit.ly/2LtU4xD

1. Clone this project: 
    ```
    git clone https://github.com/thyagoluciano/flutter_seed.git
    ```
2. Change aplicationId on Android and iOS

    - Android: Change the applicationId in android/app/build.gradle
        ```
        flavorDimensions "app"

        productFlavors {
            dev {
                dimension "app"
                resValue "string", "app_name", "Dev FlavorTest"
                applicationId "br.com.thyagoluciano.seed.dev"
            }

            prod {
                dimension "app"
                resValue "string", "app_name", "FlavorTest"
                applicationId "br.com.thyagoluciano.seed.prod"
            }
        }
        ```

        And put google-services-info.plist under the source folder 

        - ios/config/dev/google-services-info.plist
        - ios/config/prod/google-services-info.plist

    - iOS: Change Build Settings > Product Bundle Identifier 
        - Debug-dev -> applicationId dev
        - Debug-prod -> applicationId prod
        - Profile-dev -> applicationId dev
        - Profile-prod -> applicationId prod
        - Release-dev -> applicationId dev
        - Release-prod -> applicationId prod
    
        And Put google-services.json under the source folder 
        - ios/config/dev/google-services.json
        - ios/config/prod/google-services.json


3. Change icon on Android and iOS

    - Android: Change icon:
        - android/src/dev/res
        - android/src/prod/res




## DDD

### Freezed : flutter pub run build_runner watch




Android
Para ativar o modo de depuração do Google Analytics em um dispositivo Android emulado, execute a seguinte linha de comando:

adb shell setprop debug.firebase.analytics.app <package_name>

O modo de depuração permanecerá ativo até você executar a seguinte linha de comando:

adb shell setprop debug.firebase.analytics.app .none.