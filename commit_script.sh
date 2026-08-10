#!/bin/bash
set -e

# Commit 1
export GIT_AUTHOR_DATE="2026-07-07T10:00:00"
export GIT_COMMITTER_DATE="2026-07-07T10:00:00"
git add package-lock.json .gitignore || true
git diff --cached --quiet || git commit -m "Initialize root configurations"

# Commit 2
export GIT_AUTHOR_DATE="2026-07-09T11:30:00"
export GIT_COMMITTER_DATE="2026-07-09T11:30:00"
git add server/package.json server/package-lock.json client/package.json client/package-lock.json || true
git diff --cached --quiet || git commit -m "Setup project dependencies"

# Commit 3
export GIT_AUTHOR_DATE="2026-07-12T14:15:00"
export GIT_COMMITTER_DATE="2026-07-12T14:15:00"
git add client/vite.config.js client/.oxlintrc.json client/.gitignore client/index.html client/README.md || true
git diff --cached --quiet || git commit -m "Configure Vite client setup"

# Commit 4
export GIT_AUTHOR_DATE="2026-07-14T09:45:00"
export GIT_COMMITTER_DATE="2026-07-14T09:45:00"
git add server/server.js server/config || true
git diff --cached --quiet || git commit -m "Setup Express server and configurations"

# Commit 5
export GIT_AUTHOR_DATE="2026-07-16T16:20:00"
export GIT_COMMITTER_DATE="2026-07-16T16:20:00"
git add server/models || true
git diff --cached --quiet || git commit -m "Define database schemas and models"

# Commit 6
export GIT_AUTHOR_DATE="2026-07-19T11:10:00"
export GIT_COMMITTER_DATE="2026-07-19T11:10:00"
git add server/middleware || true
git diff --cached --quiet || git commit -m "Add server middleware"

# Commit 7
export GIT_AUTHOR_DATE="2026-07-22T13:50:00"
export GIT_COMMITTER_DATE="2026-07-22T13:50:00"
git add server/services || true
git diff --cached --quiet || git commit -m "Implement core business services"

# Commit 8
export GIT_AUTHOR_DATE="2026-07-25T10:05:00"
export GIT_COMMITTER_DATE="2026-07-25T10:05:00"
git add server/controllers || true
git diff --cached --quiet || git commit -m "Create API controllers"

# Commit 9
export GIT_AUTHOR_DATE="2026-07-28T14:30:00"
export GIT_COMMITTER_DATE="2026-07-28T14:30:00"
git add server/routes || true
git diff --cached --quiet || git commit -m "Define REST API routes"

# Commit 10
export GIT_AUTHOR_DATE="2026-07-31T09:20:00"
export GIT_COMMITTER_DATE="2026-07-31T09:20:00"
git add client/public client/src/assets || true
git diff --cached --quiet || git commit -m "Add static public assets"

# Commit 11
export GIT_AUTHOR_DATE="2026-08-02T11:45:00"
export GIT_COMMITTER_DATE="2026-08-02T11:45:00"
git add client/src/utils client/src/api || true
git diff --cached --quiet || git commit -m "Implement client utilities and API services"

# Commit 12
export GIT_AUTHOR_DATE="2026-08-04T15:30:00"
export GIT_COMMITTER_DATE="2026-08-04T15:30:00"
git add client/src/context || true
git diff --cached --quiet || git commit -m "Setup React context providers"

# Commit 13
export GIT_AUTHOR_DATE="2026-08-06T10:15:00"
export GIT_COMMITTER_DATE="2026-08-06T10:15:00"
git add client/src/components || true
git diff --cached --quiet || git commit -m "Develop UI components"

# Commit 14
export GIT_AUTHOR_DATE="2026-08-08T13:40:00"
export GIT_COMMITTER_DATE="2026-08-08T13:40:00"
git add client/src/pages || true
git diff --cached --quiet || git commit -m "Create application pages"

# Commit 15
export GIT_AUTHOR_DATE="2026-08-10T16:00:00"
export GIT_COMMITTER_DATE="2026-08-10T16:00:00"
git add client/src/App.jsx client/src/main.jsx client/src/index.css || true
git diff --cached --quiet || git commit -m "Finalize app entry point and global styles"

# Catch-all
export GIT_AUTHOR_DATE="2026-08-10T17:00:00"
export GIT_COMMITTER_DATE="2026-08-10T17:00:00"
git add . || true
git diff --cached --quiet || git commit -m "Add remaining project files and configurations"

# Finally push all commits
git push origin main
