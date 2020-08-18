# Meals module
Este módulo foi gerado em flutter utilizando o comando:

> `$ flutter create --org com.example -t module meal_categories`

[Mais informações...](https://flutter.dev/docs/development/packages-and-plugins/developing-packages)

## Getting Started
O módulo funciona em modo *stand-alone* como um app nativo em flutter para isso é preciso ter instalado o [flutter sdk](https://flutter.dev/docs/get-started/install)

## Instalando o app stand-alone
Abra este projeto na IDE de sua escolha, configure o device (Android/iOS) e rode o comando no terminal:

> `$ flutter run`

## Gerar módulo nativo
Para integrar este módulo em um app nativo será preciso seguir o passo a passo por plataforma:

> **Android**
- Na raiz do diretório do módulo flutter execute o comando no terminal
  > `$ flutter build aar`
  
- Siga as instruções exibidas no terminal para integrar via gradle no Android Studio.
  
  [Mais informações...](https://flutter.dev/go/build-aar)
  

> **iOS**
- Na raiz do diretório do módulo flutter execute o comando no terminal
  > `$ flutter build ios-framework --output=MealCategories/Flutter/`
  
- Serão gerados 3 pastas: `Debug, Profile e Release` em `MealCategories/Flutter/`

- Siga as instruções descritas na [opção B](https://flutter.dev/docs/development/add-to-app/ios/project-setup) para integrar o arquivo framework no XCode

Mais informações de como integrar com o app nativo visite o repositório de cada app
> [Android](https://github.com/akmerejf/android-meals-app)

> [iOS](https://github.com/akmerejf/ios-meals-app)


## Visão arquitetural

![arquitetura](https://github.com/akmerejf/flutter-meals-module/blob/master/form.png?raw=true)
