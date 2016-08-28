# Vim配置
支持版本：vim版本7.0以上可用
配置支持多语言语法高亮，多种语言格式头文件自动生成，Python代码补全，Python语法自检，Python方法docstring提示。
该配置是基于vim_runtime基础进行更改(https://github.com/amix/vimrc)
## 安装
将vimrc文件重命名为~/.vimrc
将vim文件夹重命名为~/.vim
将vim_runtime文件夹啊重命名为~/.vim_runtime
```bash
mv vimrc ~/.vimrc
mv vim ~/.vim
mv vim_runtime ~/.vim_runtime
```
- **如果自己本身有设置，记得先备份**
## 使用说明
### 1. 几个快捷键
1. Python有时会有其他代码使用tab缩进的，更改会出现意想不到的错误
normal模式下，<F2>可以将文本中所有tab替换成4空格
2. 该配置在用鼠标从其他地方复制文本或代码粘过来，缩进会乱掉
insert模式下，<F9>可以切换到paste模式，粘贴代码或文本就不会乱，粘贴完再按一次<F9>即可回到insert模式
### 2. 头文件配置说明
头文件配置写在.vimrc文件中，可以根据自己的需要进行改写，很简单，一看就明白
### 3. 代码补全说明
代码补全我用了2个插件
1. pydiction
用法：很简单，<tab>补全，
如：raw_in<tab>  sys.<tab>
该插件是根据~/.vim/pydictiondict/complete-dict文件中的单词来补全的
如果后期发现自己用的不能补全，或者是自己写的模块里面没有,里面有一个python脚本来增加
```bash
python pydiction.py mymodule
```
2. pythoncomplete
配置文件放在~/.vim_runtime/autoload/文件夹中
该设置不能补全Python关键字，
对象的方法可以补全，如list方法，string方法，或者导入模块的方法
并且显示该方法的docsting说明，非Python基本对象类型，需要导入模块后才可补全
和pydiction起到互补作用
用法：ctrl x ctrl o  如：
import sys
sys.<ctrl><x><ctrl><o>
上下键选择或者ctrl+n ctrl+p
3. 所在代码本身变量补全
这是vim默认自带功能，ctrl+n可以实现，如：
myval = 0
my<ctrl+n>


