# OIDC Login Sample App

A sample app to showcase OIDC login using AccelByte Go Extend SDK and PhantAuth.

## Prerequsites

* Go 1.18

* AccelByte Gaming Services Demo Enviroment

   * `Base URL`

     https://demo.accelbyte.io

   * [Create an OAuth Client](https://docs-old.accelbyte.io/guides/access/iam-client.html) with confidential client type

     Keep the `Client ID` and `Client Secret`

   * [Register a third party OIDC provider](https://docs-old.accelbyte.io/guides/access/3rd-party-platform-integration.html#openid-connect), in this case [PhantAuth](https://phantauth.net/)

     For this sample app, the `Platform ID` MUST BE `phantauth`

## Setup

These environment variables are required by this sample app.

```bash
$ export AB_BASE_URL='https://demo.accelbyte.io'    # Base URL
$ export AB_CLIENT_ID='xxxxxxxxxx'                  # Cliend ID
$ export AB_CLIENT_SECRET='xxxxxxxxxx'              # Client Secret
```

## Usage

1. Start the sample app.

    ```bash
    $ go run main.go
    ```

2. Open http://localhost:8080 and redirect to PhantAuth login page.

3. In PhantAuth login page, enter any name and click `Login` button.

4. In PhantAuth consent page, click `Accept`.

5. If successful, a success response will be displayed.

