
### Wipe History & Start Fresh

```bash
git checkout --orphan temp_branch
git add -A
git commit -m "Initial commit"
git branch -D main
git branch -m main
git push -f origin main
```

* `--orphan temp_branch`: Starts a new branch with zero history or parents (keeps working files).
* `git branch -D main`: Force-deletes the old `main` branch and its history.

---

### Amend Changes into Commit

```bash
git add -A
git commit --amend --no-edit
git push --force-with-lease origin main
```

* `--force-with-lease`: Safely force-pushes; overwrites remote only if no one else pushed new changes.