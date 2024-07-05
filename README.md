# ftp-deploy

A lightweight Docker image based on Alpine Linux, featuring the latest version of the [ftp-deploy](https://github.com/SamKirkland/ftp-deploy) package, optimized for automated deployments through Continuous Delivery platforms such as GitLab Pipelines.

## Usage

Example `.gitlab-ci.yml` configuration:

```yml
deploy:
  stage: 🚀 Deploy
  image: ghcr.io/dotsunited/ftp-deploy:latest
  environment:
    name: production
  script:
    - ftp-deploy --server-dir $SERVER_DIR --local-dir $LOCAL_DIR --server $FTP_SERVER --username $FTP_USERNAME --password $FTP_PASSWORD
```

Make sure, you configure the environment variables in the CI/CD settings of your GitLab project.

To learn more about all the options available for ftp-deploy, you should visit the page for [ftp-deploy](https://github.com/SamKirkland/ftp-deploy).

### License

Copyright (c) 2024 Dots United GmbH.
Released under the [MIT](LICENSE) license.
