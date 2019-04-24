## turn a github link a la https://github.com/learn-co-curriculum/What-To-Expect-In-Mod-3
# into a ssh link, git@github.com:learn-co-curriculum/What-To-Expect-In-Mod-3.git
function github-link-from-https-to-ssh() {
  temp="$(echo $1 | sed 's+https://github.com/+git@github.com:+g')"
  echo "$temp.git"
}

mkdir $2
cd $2
cat $1 | while IFS="," read -r a b c d e; do temp="${e%\"}"; temp="${temp#\"}"; temp="$(github-link-from-https-to-ssh $temp)";
