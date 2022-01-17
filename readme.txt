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

切换并创建分支
git switch -c <branchName>
git checkout -b <branchName>

切换分支
git switch <branchName>
git checkout <branchName>

查看分支
git branch -a 查看所有分支
git branch -r 查看远程分支
git branch -l 查看本地分支
 
删除分支
git checkout -d <branchName>

强制删除分支
git checkout -D <branchName>


合并分支
git merge <branchName> 快速合并模式,合并后看不出来曾经做过合并
git merge <branchName> --no-ff -m '描述' 普通模式合并,合并后的历史有分支,能看出来曾经做过合并

暂存内容
git stash

