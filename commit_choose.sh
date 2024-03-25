#!/bin/bash

echo "请选择您要执行的操作："
echo "1. 添加所有更改并提交"
echo "2. 添加所有更改但不提交"
echo "3. 取消提交"
read choice

case $choice in
    1)
        git add .
        echo "请输入commit信息："
        cat > .git/COMMIT_EDITMSG
        ;;
    2)
        git add .
        echo "所有更改已经暂存，但尚未提交。"
        ;;
    3)
        echo "取消提交。"
        ;;
    *)
        echo "无效的选项。"
        ;;
esac