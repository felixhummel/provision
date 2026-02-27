MOVED TO https://codeberg.org/felixhummel/provision

For existing installations:
```
cd ~/1-provision/
git remote remove origin
git remote add origin https://codeberg.org/felixhummel/provision.git
git fetch
git checkout main
git reset --hard origin/main
```
