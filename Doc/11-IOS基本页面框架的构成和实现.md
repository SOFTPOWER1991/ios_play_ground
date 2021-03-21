# IOS基本页面框架构成和实现

整体页面为MVC：

M： UIBarButtonItem 、 UITabBarItem
V:     UITabBar、UINavigationBAr
C:    UIViewController


页面上的View是添加在UIWindow上的，这点Android中也有类似的概念：PhoneWindow。

在Android中常见的面试题：Window、View、Activity三者之间的关系。

UIWindow:

* 特殊形式的UIView ，提供APP中展示内容的基础窗口
* 只作为容器，和ViewController一起协同工作
* 通常屏幕上只存在、展示一个UIWindow
