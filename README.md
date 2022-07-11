# Git HTTPS push deploy action

This GitHub action allows you to have a deploy step that pushes the master
branch to an external remote over HTTPS. It is useful for deploying to platforms
like Heroku or Gigalixir. You should include the credentials in the remote URL
and therefore make sure that you use a secret.

If the username for your Git remote has a "@", remember to replace it with "%40".

## Inputs

- `remoteUrl`: remote push URL
- `skipHooks`: set to true to push with --no-verify (default: false)

## Usage

Here's a usage example where a deploy job runs conditionally after a successful
build, but only for the master branch:

```yaml
name: Build and Deploy

on: push

jobs:
  build: ...

  deploy:
    needs: build
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/master'
    steps:
      - uses: actions/checkout@v1
        with:
          ref: master # you can use this to get a non-detached head but it's not strictly required
      - uses: utrustdev/git-https-push-action@master
        name: Deploy
        with:
          remoteUrl: ${{ secrets.PUSH_REMOTE }}
          skipHooks: false
```
