# sample-apps

# Build 

```
go build
```

# Usage

To use the sample apps:

```
sample-apps <command> [options]
``` 

To see available commands (HTTP endpoints): 

```
sample-apps -h
```
To see available options of a specific command (HTTP endpoints):  

```
sample-apps <command> -h
```

To enter WebSocket mode (WebSocket endpoints):

```
sample-apps --wsMode
```

# Examples

## Interacting with Justice HTTP Endpoints

```shell
# Register User
sample-apps registerUser -b 1995-03-01 -c ID -e ridwan.taufik+cli+3@accelbyte.net -n apiTestRidwanTaufikCli3 --namespace omega -p Password1

# Register Admin User
sample-apps registerUserAdmin -b 1995-03-01 -c ID -e ridwan.taufik+cli+adm1@accelbyte.net -n apiTestRidwanTaufikAdm1 --namespace omega -p Password1 -roleId <admin_role_id>
# Note: Admin role ID could be retrieved by user `getUserRoles` command

# Register User Game
sample-apps registerUser -b 1995-03-01 -c ID -e ridwan.taufik+cli+3@accelbyte.net -n apiTestRidwanTaufikCli3 --namespace accelbytetesting -p Password1

# Get User Roles
sample-apps getUserRoles

# Get my profile
sample-apps getMyProfile --namespace omega

# Login
sample-apps login -u admin+omega@accelbyte.net -p S8i9wfIQrV8oQ7gRSQokh2Xn1g7bOhoP
# Note: Please specify clientId and clientSecret in configRepository. Please refer to `sample-apps/pkg/repository`

# Verify Token
sample-apps verifyToken -t 422689 --namespace omega
# Note: Please do login before verify token

# Get Store Items
sample-apps getStoreItem --namespace omega --itemType APP --limit 5 --offset 0

# Entitlements
sample-apps grantEntitlement -u d34a444f173f4ed49e44bd9f22418539 -i 4fee6a17fc05454389d588dd87f46c7f -q 1 --namespace omega
sample-apps getUserEntitlement -u d34a444f173f4ed49e44bd9f22418539 --namespace omega

# Friends
sample-apps addFriends -f '["e5ca182435a84802b4996b6bdbeffa85"]' -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1
sample-apps getFriends -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1

# Game records
sample-apps createGameRecord --key sample-key --namespace accelbytetesting --content '{"key2": "value2"}'
sample-apps getGameRecord --key sample-key --namespace accelbytetesting

# Player records
 sample-apps createPlayerRecord -k sample-player-record -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1 -c '{"key1":"value1"}'
 sample-apps getPlayerRecord -k sample-player-record -n omega -u cc58872c06cc44fc8b4ddb7f2b9d72c1
# Note: make user ID player regitered on specified namespace

```

### Interacting with Justice WebSocket Endpoints

Perform login and enter websocket mode.

Example:

```shell
## Login using existing user
sample-apps login -u admin+omega@accelbyte.net -p S8i9wfIQrV8oQ7gRSQokh2Xn1g7bOhoP

## Enter ws mode, if successfully connected, menu option will appears and sample-apps will listen for user input.
sample-apps --wsMode
```
