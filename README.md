# boilerplate-adobe-app-builder

This is a project boilerplate for `aio` based apps for Adobe App Builder. You can use this repository
as a base for building your apps. It's also intended to serve as a home for our `.devcontainer` configuration
which can be launched on Github Codespaces as a developer sandbox, or as a local environment using vscode. 

## Using this Template with Codespaces

Launching this template in codespaces will give you a cloud-based IDE 
sandbox where you can play around with these kinds of projects. 

### Creating a Project with Codespaces

Currently, there is no way to perform the authentication check for `aio app init` so creating the app wholesale from Codespaces will not work. To do this, we think creating the application _first_ in [App Builder](https://developer.adobe.com/) and populating the `.env` file in the repo will allow you to run subsequent commands. 

## Working with Bitbucket

This repo contains some meta files for Bitbucket, a popular vcs platform used by many. While this repo intends to take
advantage of some github functionality, we still want our work to be compatible with Bitbucket and have this be a
natural starting point for agencies and enterprise teams leverging it. 

### Using This Template for Bitbucket Projects

Templates are useful because they don't bring with them old git histories. GitHub offers a green button to use a template, but 
if you wish to use this boilerplate on a bitbucket project, you can follow this procdure:

```bash
  git clone https://github.com/superterran/adobe-app-builder-boilerplate.git 
  cd adobe-app-builder-boilerplate
  rm -rf .git # deleting the .git directory removes git from the project, we just need to configure git for this project
  git init && git add . && git commit -m 'initial commit, from https://github.com/superterran/adobe-app-builder-boilerplate/tree/main'
  git push --set-upstream git@bitbucket.org:blueacorn/<repository-name>.git main
```

### Bitbucket Pipelines and Deployments

Bitbucket Projects can leverage the `bitbucket-pipelines.yml` file in this repository to provide a CI/CD suite. Currently, 
the pipeline performs an `aio app build` for all branches, and a `aio app deploy` for special branches `staging` and `main`.

## Project Variables

This boilerplate aims to be compatible with Bitbucket Pipelines and Github Actions. As such, we leverage the overlap between the environment variables that should be setup per project. These variables should exist in `.env` locally, and within the CI/CD's secret management otherwise

| envvar                         | scope | description                                   |
| ------------------------------ |-------| --------------------------------------------- |
| AIO_runtime_apihost            | Repo-wide   | e.g.`https://adobeioruntime.net`            |
| AIO_runtime_auth               | Repo-wide   | auth value, [how to retrieve](https://developer.adobe.com/app-builder/docs/resources/ci-cd/lesson1/#github-secrets)   |
| AIO_WORKSPACE                  | Environment | String of workspace name, i.e.` Stage`      |

## Docker Hub

The devcontainer for this project is published on [Docker Hub](https://hub.docker.com/repository/docker/blueacornici/boilerplate-adobe-app-builder/general).

```bash
  docker pull blueacornici/boilerplate-adobe-app-builder:latest
```

## References

* [GitHub Repository](https://github.com/superterran/boilerplate-adobe-app-builder)
* [Bitbucket Repository](https://bitbucket.org/blueacorn/boilerplate-adobe-app-builder/src/main/)
* [Docker Hub Repository](https://hub.docker.com/repository/docker/blueacornici/boilerplate-adobe-app-builder/general)
