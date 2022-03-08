# Quick Chat - Flutter
Flutter application that implements socket.io in <a href="https://nodejs.org">Node.js</a>
Works in - Android, iOS and Web

This repo only contains Flutter (frontend) part of the project. The Backend of this project an be found in
<a href="https://github.com/nikkon404/quick-chat-node.git">Backend</a>

## Preview

![Alt text](preview/preview.gif?raw=true "Preview")


## Clone project


```
git clone https://github.com/nikkon404/quick-chat-flutter.git
```

goto `lib/utils/constants.dart` and update server url


## Run this project

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
flutter run
```

## Build for web

Build this project for web by executing

```
flutter build web
```

Then goto `build` folder and copy `web` directory into the root folder of your Node.js Backend project

[online Flutter documentation](https://flutter.dev/docs)
