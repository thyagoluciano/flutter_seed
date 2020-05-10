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

        And put google-services.json under the source folder 

        - app/src/dev/google-services.json
        - app/src/prod/google-services.json

    - iOS: Put google-services.json under the source folder 
        - ios/config/dev/google-services.json
        - ios/config/prod/google-services.json

3. Change icon on Android and iOS

    - Android: Change icon:
        - android/src/dev/res
        - android/src/prod/res

