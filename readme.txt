git 命令的练习

git status: 查看状态

撤销工作区的修改(还没有add)

git restore <fileName> 
git checkout <fileName> 或 git checkout -- <fileName>

将暂存区回退到工作区(已经add但未commit)
git restore --staged <file-name>
git reset --hard HEAD <file-name>

如果已经commit到了本地分支还没有push到远程仓库可以回退到前一版本
git reset --hard HEAD~ 
或指定回退到具体某一版本
git reset --hard <commit>

切换并创建分支
git switch -c <branch-name>
git checkout -b <branch-name>

切换分支
git switch <branch-name>
git checkout <branch-name>

查看分支
git branch -a 查看所有分支
git branch -r 查看远程分支
git branch -l 查看本地分支
 
删除分支
git checkout -d <branch-name>

强制删除分支
git checkout -D <branch-name>

合并分支
git merge <branch-name> 快速合并模式,合并后看不出来曾经做过合并
git merge <branch-name> --no-ff -m '描述' 普通模式合并,合并后的历史有分支,能看出来曾经做过合并

暂存内容
git stash

zai main 分支上修复bug,想要合并到当前develop分支,可以用如下命令
git cherry-pick <commit> 将bug提交的修改复制到当前分支,避免重复劳动

建立本地分支和远程分支的关联
git branch --set-upstream <branch-name> origin/<branch-name>

查看远程库信息
git remote -v

在本地创建和远程分支对应的分支
git checkout -b branch-name origin/branch-name

查看所有标签
git tag
新建一个标签,默认为HEAD，也可以指定一个commit id；
git tag <tag-name>
指定标签信息
git tag -a <tagname> -m "blablabla..."
删除标签
git tag -d <tag-name>
推送某个标签到远程
git push origin <tag-name>
次性推送全部尚未推送到远程的本地标签
git push origin --tags
从远程删除标签
git push origin :refs/tags/<tag-name>

