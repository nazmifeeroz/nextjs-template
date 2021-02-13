# Next JS Template

![CD status](https://github.com/nazmifeeroz/nextjs-template/workflows/CD/badge.svg)

## Stack

- Next JS
- Styled Components
- XState
- Storybook

## Update dependencies

Run `yarn update`

## Github Actions

Located in `./.github/workflows/deploy.yml`

## AWS Infrastructure setup

Update your bucket name and aws region in `./terraform/variables.tf`

run `terraform init && terraform apply -auto-approve`

### Outputs

- website url
