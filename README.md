
# cdktf-cli
Docker image for [cdktf-cli](https://github.com/hashicorp/terraform-cdk/tree/main/packages/cdktf-cli). A CLI that allows users to run commands to initialize, import, and synthesize CDK for Terraform applications.

_NOTE: This project was developed by a community contributor and is not being maintained by HashiCorp._

## build
```
skaffold build --profile local --file-output='tags.json'
```

## test
```
skaffold test --build-artifacts='tags.json'
```

## Usage
```
docker run --rm -it -v "$PWD:/workdir" ghcr.io/cdktf/cli:latest synth
```

## Disable skaffold metric collection
> skaffold config set --global collect-metrics false
