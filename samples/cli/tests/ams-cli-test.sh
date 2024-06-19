#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..45"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 AuthCheck
samples/cli/sample-apps Ams authCheck \
    > test.out 2>&1
eval_tap $? 2 'AuthCheck' test.out

#- 3 PortalHealthCheck
samples/cli/sample-apps Ams portalHealthCheck \
    > test.out 2>&1
eval_tap $? 3 'PortalHealthCheck' test.out

#- 4 AdminAccountGet
samples/cli/sample-apps Ams adminAccountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 4 'AdminAccountGet' test.out

#- 5 AdminAccountCreate
samples/cli/sample-apps Ams adminAccountCreate \
    --namespace $AB_NAMESPACE \
    --body '{"name": "bAZE0LCbLoeJrYpF"}' \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLinkTokenPost
samples/cli/sample-apps Ams adminAccountLinkTokenPost \
    --namespace $AB_NAMESPACE \
    --body '{"token": "Pq3qT3z1nPdlXiLU"}' \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
samples/cli/sample-apps Ams artifactGet \
    --namespace $AB_NAMESPACE \
    --artifactType 'mykSH5TLbh5Ii4r9' \
    --count '398' \
    --endDate 'UwUau6STsMcLbBP8' \
    --fleetID 'GQalPwrm01jUHTgi' \
    --imageID 'B6A0cJHV6g2Z8hGI' \
    --maxSize '57' \
    --minSize '39' \
    --offset '46' \
    --region 'zeLbodw0O7FPQV7t' \
    --serverId '406gm1sKyj94mnU8' \
    --startDate 'kWzINzHmdwDj4H3U' \
    --status '9iNYMKr15YQ4UXYf' \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace $AB_NAMESPACE \
    --artifactType 'vLhCbIgKyfvouxtW' \
    --fleetId 't05fUcYRWdBZuAxk' \
    --uploadedBefore '1976-08-22' \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
samples/cli/sample-apps Ams artifactUsageGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'm2EJ7X5zObkt8P9I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
samples/cli/sample-apps Ams artifactGetURL \
    --artifactID '3IQNNyMXKgEVCnOh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace $AB_NAMESPACE \
    --count '219' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace $AB_NAMESPACE \
    --body '{"commandLineArguments": "4DbSEStXVnpNmiVl", "imageId": "SHmP33c9juwk9ItZ", "name": "rmkfg8EcjFMXqTyn"}' \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'kgcdTwMoWiRrP5n2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'tNk35FtuU5IKHTxF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
samples/cli/sample-apps Ams fleetList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
samples/cli/sample-apps Ams fleetCreate \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["HXVjil71etTUQCLx", "NOgcKwp0fBkqNHYs", "sCWACLSrjKZMtgGQ"], "dsHostConfiguration": {"instanceId": "2V3kvzCaBkqqu5np", "instanceType": "5pQFjZ98CwC4Uxpw", "serversPerVm": 77}, "imageDeploymentProfile": {"commandLine": "fra8DBOLlhxlMRhO", "imageId": "tt6Qkl81aFTcJRju", "portConfigurations": [{"name": "bK50bIGOXAlNPGez", "protocol": "WwWDqeh2Yx0plDdp"}, {"name": "1G326EsO4YiqSqv3", "protocol": "X6XwHCt7Lx3vQd9F"}, {"name": "W690rSN5bUu6iL8w", "protocol": "8KG1arvUVg4lwocP"}], "timeout": {"creation": 24, "drain": 20, "session": 47, "unresponsive": 95}}, "name": "xHK1k2eTWi2yV4Zb", "onDemand": true, "regions": [{"bufferSize": 72, "maxServerCount": 99, "minServerCount": 1, "region": "MQmF6uSoCSZiz1wK"}, {"bufferSize": 31, "maxServerCount": 50, "minServerCount": 36, "region": "FdQNi8WRuPSHGWOj"}, {"bufferSize": 85, "maxServerCount": 49, "minServerCount": 63, "region": "lutnn9mAxvTvyc6g"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 16}, "success": {"collect": true, "percentage": 23}}, "logs": {"crashed": {"collect": false, "percentage": 63}, "success": {"collect": false, "percentage": 39}}}}' \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
samples/cli/sample-apps Ams fleetGet \
    --fleetID 'mfq9z6VDvOvZ46hx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
samples/cli/sample-apps Ams fleetUpdate \
    --fleetID '6pFEMiRhUdVqV4j8' \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "claimKeys": ["4FBKYmbwqmZYMfBE", "JskC9AV5kaqgwSsz", "E0IjIAMTpIJETOIH"], "dsHostConfiguration": {"instanceId": "Bj8YtBSJOOJ6uGy6", "instanceType": "km3PlULWBtYEKtKD", "serversPerVm": 52}, "imageDeploymentProfile": {"commandLine": "RQH33n9TWAj9NhTG", "imageId": "5IyKupjz9fS9rmsF", "portConfigurations": [{"name": "BsnDvBQIKIAWLgUC", "protocol": "bQltCxWCTduU6CEp"}, {"name": "Y5qz6YtZ1APuwRGI", "protocol": "laxd3sNkK0zcY5M2"}, {"name": "8XcGCsKHbGdsV2uT", "protocol": "xO64UDJISuOdTUtx"}], "timeout": {"creation": 49, "drain": 76, "session": 87, "unresponsive": 72}}, "name": "eMZk2Iy6Cfjg6umH", "onDemand": false, "regions": [{"bufferSize": 39, "maxServerCount": 96, "minServerCount": 71, "region": "YxFGQqykD8csqEHR"}, {"bufferSize": 13, "maxServerCount": 100, "minServerCount": 86, "region": "23XK6uCZvMUfxYzW"}, {"bufferSize": 44, "maxServerCount": 43, "minServerCount": 4, "region": "sCouTrK7IlZofLKj"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 88}, "success": {"collect": true, "percentage": 53}}, "logs": {"crashed": {"collect": true, "percentage": 88}, "success": {"collect": true, "percentage": 28}}}}' \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'F44krFhkr2QnBBq7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'hymNtyuwEt5cgNSb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'o770XhefaV3t13tu' \
    --namespace $AB_NAMESPACE \
    --body '{"coredumps": {"crashed": {"collect": false, "percentage": 44}, "success": {"collect": false, "percentage": 98}}, "logs": {"crashed": {"collect": true, "percentage": 60}, "success": {"collect": false, "percentage": 91}}}' \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
samples/cli/sample-apps Ams fleetServers \
    --fleetID '4N6wufRE0Jg0tyZU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'tIjl0SYGxGCOGP5J' \
    --namespace $AB_NAMESPACE \
    --count '9' \
    --offset '82' \
    --reason 'qG8Ouia3jvoBsVeV' \
    --region 'u5EZqWfJVuPvYO6d' \
    --serverId 'AVj9VYjJf7TmbC1k' \
    --sortDirection 'g3sxdMemZcQ4U4qy' \
    --status 'b17WL6ZQsfFK7n8a' \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
samples/cli/sample-apps Ams imageList \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImageGet
samples/cli/sample-apps Ams imageGet \
    --imageID 'J4MmUH3oY3ocpjKp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 27 'ImageGet' test.out

#- 28 ImageMarkForDeletion
samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID '6gob02REdmm2T7QB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 28 'ImageMarkForDeletion' test.out

#- 29 ImagePatch
samples/cli/sample-apps Ams imagePatch \
    --imageID 'ImLkVTHsYV7nn2vY' \
    --namespace $AB_NAMESPACE \
    --body '{"addedTags": ["cDDEKbmARj33XRNP", "sC4CbOKunwpliwvX", "0HoNSP3QNUZmCdWU"], "isProtected": true, "name": "LtKlQLVUOc3gZwjs", "removedTags": ["81pNdv0us4v6t9H1", "bNsxWgBI13rnaSR6", "v4EVnUvQnFVfrpvf"]}' \
    > test.out 2>&1
eval_tap $? 29 'ImagePatch' test.out

#- 30 ImageUnmarkForDeletion
samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'IdISe5q6ylJn0r7I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 30 'ImageUnmarkForDeletion' test.out

#- 31 QoSRegionsGet
samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace $AB_NAMESPACE \
    --status 'eu1R78AdW5zdqKQP' \
    > test.out 2>&1
eval_tap $? 31 'QoSRegionsGet' test.out

#- 32 QoSRegionsUpdate
samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace $AB_NAMESPACE \
    --region '3p9zBNaojmuuBSou' \
    --body '{"status": "THV6uc6SQzXqcDEg"}' \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsUpdate' test.out

#- 33 InfoRegions
samples/cli/sample-apps Ams infoRegions \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 33 'InfoRegions' test.out

#- 34 FleetServerInfo
samples/cli/sample-apps Ams fleetServerInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'I4Mtf0EziTEPixJr' \
    > test.out 2>&1
eval_tap $? 34 'FleetServerInfo' test.out

#- 35 FleetServerConnectionInfo
samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace $AB_NAMESPACE \
    --serverID 'yZsdCMnhzyFEr8uM' \
    > test.out 2>&1
eval_tap $? 35 'FleetServerConnectionInfo' test.out

#- 36 ServerHistory
samples/cli/sample-apps Ams serverHistory \
    --namespace $AB_NAMESPACE \
    --serverID 'fJpKNb004oMjjg38' \
    > test.out 2>&1
eval_tap $? 36 'ServerHistory' test.out

#- 37 InfoSupportedInstances
samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 37 'InfoSupportedInstances' test.out

#- 38 AccountGet
samples/cli/sample-apps Ams accountGet \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 38 'AccountGet' test.out

#- 39 FleetClaimByID
samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'bS9zLflAJhiEysLn' \
    --namespace $AB_NAMESPACE \
    --body '{"region": "tdIYTU7AW45PY0xh", "sessionId": "HYHcCxWQvehmMTun"}' \
    > test.out 2>&1
eval_tap $? 39 'FleetClaimByID' test.out

#- 40 LocalWatchdogConnect
samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'RlcGdzY6tUiSQLx4' \
    > test.out 2>&1
eval_tap $? 40 'LocalWatchdogConnect' test.out

#- 41 FleetClaimByKeys
samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace $AB_NAMESPACE \
    --body '{"claimKeys": ["FM90Eh4d4DxTnh66", "kdWVQ7pRPVZmsrt0", "PddL4TN8lc4GRRzY"], "regions": ["C5Ui74gTidsVMeTR", "gYCpA4OMdMFPKrEI", "ApPprMzHFMafISb8"], "sessionId": "KG4hR5HJBBz6AJOg"}' \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByKeys' test.out

#- 42 WatchdogConnect
samples/cli/sample-apps Ams watchdogConnect \
    --namespace $AB_NAMESPACE \
    --watchdogID 'olfNnrFe2bAYBBdd' \
    > test.out 2>&1
eval_tap $? 42 'WatchdogConnect' test.out

#- 43 UploadURLGet
samples/cli/sample-apps Ams uploadURLGet \
    > test.out 2>&1
eval_tap $? 43 'UploadURLGet' test.out

#- 44 Func1
samples/cli/sample-apps Ams func1 \
    > test.out 2>&1
eval_tap $? 44 'Func1' test.out

#- 45 BasicHealthCheck
samples/cli/sample-apps Ams basicHealthCheck \
    > test.out 2>&1
eval_tap $? 45 'BasicHealthCheck' test.out


rm -f "tmp.dat"

exit $EXIT_CODE