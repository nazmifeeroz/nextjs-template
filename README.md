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

### Setup

- Update your bucket name and aws region in `./terraform/variables.tf`
- to create s3 bucket and make it publicly accessible, run `cd terraform && terraform init && terraform apply -auto-approve`
- build your website, `yarn build`
- upload your build to s3 `aws s3 sync ./out s3://<YOUR_BUCKET_NAME>`

### Outputs

- website url
