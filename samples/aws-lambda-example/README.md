# aws-lambda-example

This is an example of a Lambda service which interacts with AccelByte services 
in [DEMO environment](https://demo.accelbyte.io) using AccelByte Go SDK.

## Prerequisites

1. [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)

2. [Docker](https://docs.docker.com/engine/install/)

3. [Go 1.16](https://go.dev/dl/) 

4. [Postman](https://www.postman.com/downloads/)

5. AccelByte `CLIENT_ID` and `CLIENT_SECRET` for accessing services in 
   [DEMO environment](https://demo.accelbyte.io).

    See https://docs.accelbyte.io/guides/access/iam-client.html

    Required permissions:

    - Resource : ADMIN:NAMESPACE:{namespace}:USER:*:STATITEM
	- Action : create and read

6. `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`

    This is required only if you want to deploy this example to AWS.
    It needs to have the correct permissions to perform sam deploy. 

## Configure

1. Open [template.yaml](template.yaml)

2. Enter your AccelByte `CLIENT_ID` and `CLIENT_SECRET` under `AB_CLIENT_ID` 
   and `AB_CLIENT_SECRET` environment variable respectively

3. Save it

## Deploy to AWS

1. Build Lambda service

    ```
    sam build
    ```

2. Deploy Lambda service

    ```
    sam deploy --guided
   
    # if successful the function url will be generated and displayed on terminal
    ```

3. Test Using Postman
   - Import postman collection [deploy_aws_lambda_example.postman_collection.json](deploy_aws_lambda_example.postman_collection.json)
   - Open `01 Get AccelByte Access Token` in headers `Authorization` you can put `AB_CLIENT_ID:AB_CLIENT_SECRET` encoded as base64
   - Open `02 CreateUserStats` update url with previously generated url from deploy command. The test payload can be inspected in `Body` tab. Click `Send` button. If you see any error related to `createUserStatItemConflict`, this is
      expected when the stat code is already exists.
   - Open `03 GetUserStats` update url with previously generated url from deploy command. The test
      payload can be inspected in `Body` tab. Click `Send` button. If successful, it will return the stat codes for the given user id
      in JSON format.


## Try locally

1. Build Lambda service

    ```
    sam build
    ```

2. Run Lambda service locally

    ```
    sam local start-lambda
    ```

## References

- https://docs.accelbyte.io/
- https://demo.accelbyte.io/iam/apidocs/
- https://demo.accelbyte.io/social/apidocs/
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-build.html
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-local-start-api.html
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-deploy.html
