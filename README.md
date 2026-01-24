MOVED TO https://codeberg.org/felixhummel/provision

For existing installations:
```
cd ~/1-provision/
git remote remove origin
git remote add origin https://codeberg.org/felixhummel/provision.git
git fetch
git reset --hard origin/main
git branch --set-upstream-to=origin/main main
```
