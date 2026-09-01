# gh-capstone

CI/CD pipeline for infrastructure using Git, Github Actions, Terraform, and Azure.

## Environments

| Environment | Purpose | Gate |
| --- | --- | --- |
| dev | First deployment target | Automatic on merge |
| staging | Verify changes with production settings | Automatic after dev |
| prod | Customer facing environment | Requires reviewer approval |

## Repository
'''
.github/workflows/ PR validation and deployment pipelines
app/ Static application content
envs/dev/ Environment inputs and backend config
envs/staging/
envs/prod/
modules/webapp/ Resource definitions shared by all environments
'''

Environment directories contain a module call, its input values, and a backend
configuration. Every resource definition lives in the module.

## Branching
main branch protected. Work happens on feature branches and must be merged via
pull requests to the main branch.

Released versions are marked with annotated tags such as 'v1.0.0'

Pull requests require one approving review and all validation checks passing.

## Pipeline

PR-validation.yaml - runs on every PR. Plans are uploaded as build artifacts for review.

deploy.yaml - runs on merge to main. dev applies first, then staging, then prod. Failure
on one environment stops deployment chain. Deployment on the prod environment is blocked 
by manual approval. After deployment, a test is run to ensure the site is reachable.

