# A shiv for pre-commit

```
docker build -t "precommit:build" .
docker create "precommit:build"
docker cp <HASH>:/artifacts/precommit.pyz /path/to/.git/hooks/pre-commit
```
It requires py3.6 be on the path :(
