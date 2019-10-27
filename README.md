# Git HTTPS push deploy action

This GitHub action allows you to have a deploy step that pushes the master
branch to an external remote over HTTPS. It is useful for deploying to platforms
like Heroku or Gigalixir. You should include the credentials in the remote URL
and therefore make sure that you use a secret.
