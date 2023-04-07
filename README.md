# iOSMultiDisplay
- ios13之前用AppDelegate,初始化里面的window.
- ios13之后，开始使用SceneDelegate代替AppDelegate的部分内容。可以有多个Scene。初始化里面的window
- edit info.plistfile file,add external scenes.
- if use storyboard, make sure set the initial entrance
- if not use storyboard, do some initialization in "scene willconnect to" delegate".

# 参考文章
- https://developer.apple.com/documentation/uikit/windows_and_screens/presenting_content_on_a_connected_display
- https://hacknicity.medium.com/external-display-support-versus-stage-manager-on-ipados-16-149e15dc700e
-https://developer.apple.com/documentation/bundleresources/information_property_list/uiapplicationscenemanifest/uisceneconfigurations/uiwindowscenesessionroleexternaldisplaynoninteractive
