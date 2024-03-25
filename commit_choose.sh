#!/bin/sh

echo "请选择您的操作："
echo "1. 添加新功能 (Add new feature)"
echo "2. 修复bug (Fix bug)"
echo "3. 优化代码 (Optimize code)"
echo "4. 更新文档 (Update documentation)"
echo "5. 其他更改 (Other changes)"

read -p "请选择操作编号： " choice

case $choice in
    1)
        operation="添加新功能"
        ;;
    2)
        operation="修复bug"
        ;;
    3)
        operation="优化代码"
        ;;
    4)
        operation="更新文档"
        ;;
    5)
        operation="其他更改"
        ;;
    *)
        operation="未知操作"
        ;;
esac

read -p "是否需要编写commit信息？(y/n)： " write_commit

if [ "$write_commit" = "y" ]; then
    echo "您选择的操作是: $operation"
    echo "请编写commit信息，按 Ctrl+D 保存退出编辑："
    cat > .git/COMMIT_EDITMSG
fi