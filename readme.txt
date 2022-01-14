git 命令的练习

git status: 查看状态

撤销工作区的修改(还没有add)
git restoer <fileName> 
git checkout <fileName>

将暂存区回退到工作区(已经add但未commit)
git restore --staged <fileName>
git reset --hard HEAD <fileName>

如果已经commit到了本地分支还没有push到远程仓库可以回退到前一版本
git reset --hard HEAD~ 
或指定回退到具体某一版本
git reset --hard <commit>


