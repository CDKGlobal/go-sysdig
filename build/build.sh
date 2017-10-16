#!/usr/bin/env bash

echo "INFO : *** Running swagger-codegen in a docker container ***"

docker run -it -v $PWD/build:/swagger-api/template/swagger.yaml -v $PWD:/swagger-api/out jimschubert/swagger-codegen-cli generate -i build/swagger.yml -l go -o /swagger-api/out/generated
if [ $? -eq 1 ]; then
  echo "ERROR : Docker run for swagger code generation failed"
else
  echo "INFO : SUCCESSFUL code generation "
fi
