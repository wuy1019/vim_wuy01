# Vim����
֧�ְ汾��vim�汾7.0���Ͽ���
����֧�ֶ������﷨�������������Ը�ʽͷ�ļ��Զ����ɣ�Python���벹ȫ��Python�﷨�Լ죬Python����docstring��ʾ��
�������ǻ���vim_runtime�������и���(https://github.com/amix/vimrc)
## ��װ
��vimrc�ļ�������Ϊ~/.vimrc
��vim�ļ���������Ϊ~/.vim
��vim_runtime�ļ��а�������Ϊ~/.vim_runtime
```bash
mv vimrc ~/.vimrc
mv vim ~/.vim
mv vim_runtime ~/.vim_runtime
```
- **����Լ����������ã��ǵ��ȱ���**
## ʹ��˵��
### 1. ������ݼ�
1. Python��ʱ������������ʹ��tab�����ģ����Ļ�������벻���Ĵ���
normalģʽ�£�<F2>���Խ��ı�������tab�滻��4�ո�
2. �������������������ط������ı������ճ�������������ҵ�
insertģʽ�£�<F9>�����л���pasteģʽ��ճ��������ı��Ͳ����ң�ճ�����ٰ�һ��<F9>���ɻص�insertģʽ
### 2. ͷ�ļ�����˵��
ͷ�ļ�����д��.vimrc�ļ��У����Ը����Լ�����Ҫ���и�д���ܼ򵥣�һ��������
### 3. ���벹ȫ˵��
���벹ȫ������2�����
1. pydiction
�÷����ܼ򵥣�<tab>��ȫ��
�磺raw_in<tab>  sys.<tab>
�ò���Ǹ���~/.vim/pydictiondict/complete-dict�ļ��еĵ�������ȫ��
������ڷ����Լ��õĲ��ܲ�ȫ���������Լ�д��ģ������û��,������һ��python�ű�������
```bash
python pydiction.py mymodule
```
2. pythoncomplete
�����ļ�����~/.vim_runtime/autoload/�ļ�����
�����ò��ܲ�ȫPython�ؼ��֣�
����ķ������Բ�ȫ����list������string���������ߵ���ģ��ķ���
������ʾ�÷�����docsting˵������Python�����������ͣ���Ҫ����ģ���ſɲ�ȫ
��pydiction�𵽻�������
�÷���ctrl x ctrl o  �磺
import sys
sys.<ctrl><x><ctrl><o>
���¼�ѡ�����ctrl+n ctrl+p
3. ���ڴ��뱾�������ȫ
����vimĬ���Դ����ܣ�ctrl+n����ʵ�֣��磺
myval = 0
my<ctrl+n>


