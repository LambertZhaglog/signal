[TOC]



# 常用组件特性分析

![img](G:\我的图片\typora\Center)

## 容器组件

`uifigure`：创建UI图窗口

`uipanel`： 在现有[传统图窗](https://ww2.mathworks.cn/help/matlab/ref/uipanel.html#bu7pz6w-2)中创建一个面板并返回该面板对象。如果没有可用图窗，MATLAB® 会新建一个传统图窗来充当父图窗。面板是用于将 UI 组件（包括其他面板）组合在一起的容器。`parent` 参数可以是传统图窗、[UI 图窗](https://ww2.mathworks.cn/help/matlab/ref/uipanel.html#bu7pz6w-3)、选项卡、按钮组或另一个面板对象。

`uitabgroup`：创建包含选项卡式面板的容器。选项卡组就是选项卡容器。它们允许您将选项卡组合在一起、标识当前选定的选项卡，并检测 App 用户何时选择了不同的选项卡。选项卡组的父对象，指定为 `Figure`、`Panel`、`Tab` 对象或 `ButtonGroup` 对象。

`uitab` 在[传统图窗](https://ww2.mathworks.cn/help/matlab/ref/uitab.html#bu7pwyp-2)中的现有选项卡组中创建一个选项卡，并返回选项卡对象。选项卡的父对象，指定为 `TabGroup` 对象。`uitab`必须联合`uitabgroup`一同使用

`uigridlayout`：创建网格布局管理器。网格布局对于布置应用程序很有用。它将UI组件定位在跨越整个图形或容器的不可见网格的行和列上。这种定位组件的方法比在`Position`矢量中设置像素值更容易管理 。用于布局，可跨区，可嵌套。父容器，指定为`Figure`使用创建的[`uifigure`](https://ww2.mathworks.cn/help/matlab/ref/uifigure.html)功能，或在其子容器之一：`Tab`，`Panel`，`ButtonGroup`，或`GridLayout`。

## 常用组件

### 选择

`uiradiobutton`单选按钮，选择。由`uibuttongroup`创建单选按钮组。允许从一组互斥对象中进行多选一单项选择。

`uicheckbox` 创建复选框组件，全部显示，多项可选多，方框对号显示

`uilistbox`列表框，可多选，选中高亮显示，全部显示

`uidropdown`下拉组件 ，隐藏显示，选中显示，多选一

### 触发

`uibutton`：创建下压按钮或状态按钮组件

- 下按按钮，触发后恢复
- 状态按钮，触发后保持

`uitogglebutton`切换按钮，选择并触发，由`uibuttongroup`创建切换按钮组。允许从一组互斥对象中进行选择并触发。



### 编辑

`uieditfield` 创建文本或数值编辑字段组件，特性是单行文本编辑区域

`uitextarea` 文本区域组件。为多行文本编辑区域。可内设滚动条（组件控件）便于文本查看

`uislider` 滑块，通过位置映射数值输入

### 浏览

`scroll`滚动到目标列表框或树组件中的指定位置

### 操作提示

`uilabel` 标签，不能修改只能查看内容的文本显示区域；信息说明的作用

`uitree` `uitreenode` 树结构显示提示信息

### 其他

`uiaxes`：坐标轴，为绘图创建坐标区，绘制函数图像的前提

以下引用内容作废

> ### 按钮
>
> 下按按钮 状态按钮
>
> 切换按钮组 单选按钮组 
>
> `uibutton`：创建下压按钮或状态按钮组件。用户通过单机按钮时产生动作事件，触发特定的动作代码，完成预定功能
>
> 按钮的类型，指定为下列值之一：
>
> - 'push'
>
>   点击一次，按钮将被按下并释放。
>
> - 'state'
>
>   点击一次，按钮将保持按下或释放状态，直到再次点击为止。
>
> `uibuttongroup`：创建用于管理单选按钮和切换按钮的按钮组，允许从一组互斥对象中进行选择
>
> 切换按钮组每个按钮都会触发特定的触发代码
>
> 单选按钮组一般只做状态改变，并不做动作触发源
>
> - 按钮组可包含任何UI组件类型（的ActiveX ®控件除外），但只能管理单选按钮和切换按钮的选择。
> - 要使你的程序在App用户选择按钮组中的单选按钮或切换按钮时做出响应，请为按钮组定义一个`SelectionChangedFcn`回调函数。不能定义对单个按钮的回调。
>
> ### 编辑栏
>
> `uieditfield` 创建文本或数值编辑字段组件，特性是单行文本编辑区域
>
> `uitextarea` 文本区域组件。为多行文本编辑区域。可内设滚动条（组件控件）便于文本查看
>
>
>
> `uicheckbox` 创建复选框组件
>
> `uidropdown` 创建下拉组件
>
>
>
> ### 其他
>
> `uilabel` 标签，不能修改只能查看内容的文本显示区域；信息说明的作用



## 组件控件

`scroll`滚动到目标列表框或树组件中的指定位置

# 软件框架设计

## 命名规范

### 命名书写拼写规范

#### 常量的命名

常量的名字应该都使用大写字母，并且指出该常量完整含义。如果一个常量名称由多个单词组成，则应该用下划线来分割这些单词。

例如： MAX_VALUE

#### 变量的命名

变量(Variables) 除了变量名外，所有实例，包括类，类常量，均采用大小写混合的方式，第一个单词的首字母小写，其后单词的首字母大写。变量名不应以下划线或美元符号开头，尽管这在语法上是允许的。

变量名应简短且富于描述。变量名的选用应该易于记忆，即，能够指出其用途。尽量避免单个字符的变量名，除非是一次性的临时变量。

#### 方法的命名

方法的名字的第一个单词应以小写字母作为开头，后面的单词则用大写字母开头。

例如： sendMessge

#### 类的命名

类的名字必须由大写字母开头而单词中的其他字母均为小写；如果类名称由多个单词组成，则每个单词的首字母均应为大写例如TestPage；如果类名称中包含单词缩写，则这个所写词的每个字母均应大写，如：XMLExample,还有一点命名技巧就是由于类是设计用来代表对象的，所以在命名类时应尽量选择名词。

### 命名规范

#### 组件

##### 框架组件

组件含义+组件类型名，如`SigFreAnaTabGroup`表示选项卡组

##### 面板内组件

组件含义+面板编号+组件类型名，如`In11UIAxes`表示在“信号时域运算”面板下“连续信号时域运算”面板下，输入信号显示的坐标轴

面板编号必须有，由两位数字构成，十位是一级面板编号，个位是二级面板编号，二级面板没有的用0表示

编号顺序见框架显示顺序

### 变量名，成员，方法命名

含义+面板编号

### Tag属性值

中文直意

## 软件GUI设计指导思想

- 单窗口，多面板，选项卡切换
- 软件使用帮助无处不在，操作软件不用软件使用指导书

## 软件设计分析与选择

实验分为六个基本实验内容，使用有六个选项卡的选项卡组

每个基本实验内容包括若干子实验内容，在选项卡下设二级选项卡组



# 分工

共有13个基本实验要求，包括分组

- 连续信号的时域基本运算和离散信号的时域基本运算--姚劲枫
- RC串联电路的时域分析及RL并联电路的时域分析--姚劲枫
- 连续信号卷积积分和离散信号卷积求和 --张龙
- 连续周期信号的FS、连续信号的FT及离散信号的FT--张龙
- 离散差分方程--马勇
- 连续信号采样与恢复--马勇
- 连续系统频域分析与离散系统频域分析--马勇

7个扩展要求，其中要求，分工待划分

- 1245的核心要求是任意输入
- 36属改进完善
- 7的要求是相当于新增窗口