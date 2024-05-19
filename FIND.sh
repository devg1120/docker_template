

#find /path/to/dir/ -type f -regextype egrep -not -regex '^/path/to/dir/(backup|error)/.*'

#find . -type f -regextype egrep -not -regex  'node_modules' -name '*.php' -print

#find . -type f -regextype egrep -not -regex  'node_modules'

#find . -type d -name "node_modules*|$\." -prune -o -print

# 除外するディレクトリ：.svn, vendors, data, tmp, tests

# ファイル一覧を表示
#find ./ -type d \( -name '.git' -o -name '.github' -o -name '.opam' -o -name '.local' -o -name '.nuget' -o -name '.dotnet' -o -name 'node_modules'  -o -name '.config' -o -name '.asdf' -o -name 'snap' \) -prune -o -type f -print

# ファイル名（*.php）で絞り込み
#find ./ -type d \( -name '.svn' -o -name 'vendors' -o -name 'data' -o -name 'tmp' -o -name 'tests' \) -prune -o -type f -name '*.php' -print

# 複数のディレクトリをまたいだファイルの一括検索
#find ./ -type d \( -name '.svn' -o -name 'vendors' -o -name 'data' -o -name 'tmp' -o -name 'tests' \) -prune -o -type f -name '*.php' -print | xargs grep 'test_string'

# 複数のディレクトリをまたいだファイルの一括削除
#find ./ -type d \( -name '.svn' -o -name 'vendors' -o -name 'data' -o -name 'tmp' -o -name 'tests' \) -prune -o -type f -name '*.php.swp' -print | xargs rm -f

# 複数のディレクトリをまたいだファイルの一括置換
#find ./ -type d \( -name '.svn' -o -name 'vendors' -o -name 'data' -o -name 'tmp' -o -name 'tests' \) -prune -o -type f -name '*.php' -print | xargs sed -i 's/test_string/TestString/g'




PTN="-name '.git' \
-o -name '.github' \
-o -name '.opam' \
-o -name '.local' \
-o -name '.nuget' \
-o -name '.dotnet' \
-o -name 'node_modules'  \
-o -name '.config' \
-o -name '.asdf' \
-o -name 'snap' \
"

#find ./ -type d \( ${PTN} \)  -prune -o -type f -print

#find ./ -type d \( -name '.git' -o -name '.github' -o -name '.opam' -o -name '.local' -o -name '.nuget' -o -name '.dotnet' -o -name 'node_modules'  -o -name '.config' -o -name '.asdf' -o -name 'snap' \) -prune -o -type f -print

#find ./ -type d \( -name '.git' -o -name '.github' -o -name '.opam' -o -name '.local' -o -name '.nuget' -o -name '.dotnet' -o -name 'node_modules'  -o -name '.config' -o -name '.asdf' -o -name 'snap' \) -prune -o -type f -name 'docker-compose*' -print
#find ./ -type d \( -name '.git' -o -name '.github' -o -name '.opam' -o -name '.local' -o -name '.nuget' -o -name '.dotnet' -o -name 'node_modules'  -o -name '.config' -o -name '.asdf' -o -name 'snap' \) -prune -o -type f -name '*.py' -print

#find ./ -type d \( -name '.git' -o -name '.github' -o -name '.opam' -o -name '.local' -o -name '.nuget' -o -name '.dotnet' -o -name 'node_modules'  -o -name '.config' -o -name '.asdf' -o -name 'snap' \) -prune -o -type f -name '*docker-compose.yml*' -print
find ./ -type d \( -name '.git' -o -name '.github' -o -name '.opam' -o -name '.local' -o -name '.nuget' -o -name '.dotnet' -o -name 'node_modules'  -o -name '.config' -o -name '.asdf' -o -name 'snap' \) -prune -o -type f -name '*\.git*' -print

#find ./ -type d ${PTN}  -prune -o -type f -name '*.php' -print
#find ./ -type d ${PTN}  -prune -o -type f -name 'docker-compose.*' -print



