#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_TOKEN="/tmp/justice-sample-apps/userData"
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=63

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

rm -f $TEMP_TOKEN
mkdir -p $(dirname $TEMP_TOKEN)
echo {"\"access_token"\":"\"foo"\"} >> $TEMP_TOKEN
echo "1..$OPERATIONS_COUNT"

#- 1 listConfig
samples/cli/sample-apps Dsmc listConfig \
    >$TEMP_FILE 2>&1
update_status $? 'listConfig'
delete_file $TEMP_FILE

#- 2 saveConfig
update_status 0 'saveConfig (skipped deprecated)'

#- 3 updateImage
samples/cli/sample-apps Dsmc updateImage \
    --body '{"artifactPath": "FtBxyZcD", "image": "XBpGlsQu", "namespace": "Ju8vMf0I", "persistent": true, "version": "JkTrd8ID"}' \
    >$TEMP_FILE 2>&1
update_status $? 'updateImage'
delete_file $TEMP_FILE

#- 4 createImage
samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "cV2zXnTK", "dockerPath": "jXY1bPqa", "image": "miBxx9Cs", "namespace": "18EY84ek", "persistent": true, "version": "qRzHU1oh"}' \
    >$TEMP_FILE 2>&1
update_status $? 'createImage'
delete_file $TEMP_FILE

#- 5 importImages
samples/cli/sample-apps Dsmc importImages \
    --file 'tmp.dat' \
    >$TEMP_FILE 2>&1
update_status $? 'importImages'
delete_file $TEMP_FILE

#- 6 getConfig
samples/cli/sample-apps Dsmc getConfig \
    --namespace '570KQBVa' \
    >$TEMP_FILE 2>&1
update_status $? 'getConfig'
delete_file $TEMP_FILE

#- 7 createConfig
samples/cli/sample-apps Dsmc createConfig \
    --body '{"claim_timeout": 8, "creation_timeout": 44, "default_version": "c72krSha", "port": 27, "ports": {"3Ynozp1C": 72}, "protocol": "mIQTuBdN", "providers": ["EUsxFb8C"], "session_timeout": 70, "unreachable_timeout": 76}' \
    --namespace '7DJZaMSx' \
    >$TEMP_FILE 2>&1
update_status $? 'createConfig'
delete_file $TEMP_FILE

#- 8 deleteConfig
samples/cli/sample-apps Dsmc deleteConfig \
    --namespace 'ECbZbygy' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteConfig'
delete_file $TEMP_FILE

#- 9 updateConfig
samples/cli/sample-apps Dsmc updateConfig \
    --body '{"claim_timeout": 29, "creation_timeout": 1, "default_version": "rORoeNHS", "port": 2, "protocol": "8Rh3kgs9", "providers": ["qqJbnQso"], "session_timeout": 54, "unreachable_timeout": 12}' \
    --namespace 'iVpP8Cm3' \
    >$TEMP_FILE 2>&1
update_status $? 'updateConfig'
delete_file $TEMP_FILE

#- 10 clearCache
samples/cli/sample-apps Dsmc clearCache \
    --namespace 'yvASUoxd' \
    >$TEMP_FILE 2>&1
update_status $? 'clearCache'
delete_file $TEMP_FILE

#- 11 getAllDeployment
samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace 'xxFqmAGT' \
    --count '70' \
    --offset '68' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllDeployment'
delete_file $TEMP_FILE

#- 12 getDeployment
samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'EdagEtp4' \
    --namespace 'w29KOu9c' \
    >$TEMP_FILE 2>&1
update_status $? 'getDeployment'
delete_file $TEMP_FILE

#- 13 createDeployment
samples/cli/sample-apps Dsmc createDeployment \
    --body '{"allow_version_override": true, "buffer_count": 33, "buffer_percent": 96, "configuration": "HkkP8npL", "enable_region_overrides": true, "game_version": "KMfjiX7j", "max_count": 31, "min_count": 21, "overrides": {"VZk3IaQY": {"buffer_count": 60, "buffer_percent": 24, "configuration": "qGodOEGt", "enable_region_overrides": false, "game_version": "POj0c6i0", "max_count": 70, "min_count": 21, "name": "vIas73uc", "region_overrides": {"YnFAJ3DK": {"buffer_count": 91, "buffer_percent": 61, "max_count": 28, "min_count": 13, "name": "g0Y39UoY", "use_buffer_percent": false}}, "regions": ["pv5bVAgt"], "use_buffer_percent": true}}, "region_overrides": {"DhUTDUsc": {"buffer_count": 2, "buffer_percent": 85, "max_count": 59, "min_count": 18, "name": "bTQuPMz2", "use_buffer_percent": false}}, "regions": ["kyU89ZPO"], "use_buffer_percent": true}' \
    --deployment '6zPFJ42c' \
    --namespace 'wmzBBSMN' \
    >$TEMP_FILE 2>&1
update_status $? 'createDeployment'
delete_file $TEMP_FILE

#- 14 deleteDeployment
samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'coAAOjKN' \
    --namespace 'jfcYHm09' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeployment'
delete_file $TEMP_FILE

#- 15 updateDeployment
samples/cli/sample-apps Dsmc updateDeployment \
    --body '{"allow_version_override": false, "buffer_count": 100, "buffer_percent": 13, "configuration": "BU1sqjyK", "enable_region_overrides": false, "game_version": "RSOFQBtu", "max_count": 86, "min_count": 61, "regions": ["Z8hRVX7L"], "use_buffer_percent": true}' \
    --deployment 'DdYiQS9i' \
    --namespace '7mV1C91p' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeployment'
delete_file $TEMP_FILE

#- 16 createRootRegionOverride
samples/cli/sample-apps Dsmc createRootRegionOverride \
    --body '{"buffer_count": 18, "buffer_percent": 64, "max_count": 13, "min_count": 31, "use_buffer_percent": true}' \
    --deployment 'L6ycTQdv' \
    --namespace 'ln2LAuSQ' \
    --region 'WEXL6LFE' \
    >$TEMP_FILE 2>&1
update_status $? 'createRootRegionOverride'
delete_file $TEMP_FILE

#- 17 deleteRootRegionOverride
samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment '1YHo9m12' \
    --namespace '6ZWc8hHt' \
    --region 'WvbNYqgU' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteRootRegionOverride'
delete_file $TEMP_FILE

#- 18 updateRootRegionOverride
samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --body '{"buffer_count": 33, "buffer_percent": 37, "max_count": 22, "min_count": 53, "use_buffer_percent": true}' \
    --deployment 'FPiHUIva' \
    --namespace 'Cv8kU9dB' \
    --region 'BpdsJLhs' \
    >$TEMP_FILE 2>&1
update_status $? 'updateRootRegionOverride'
delete_file $TEMP_FILE

#- 19 createDeploymentOverride
samples/cli/sample-apps Dsmc createDeploymentOverride \
    --body '{"buffer_count": 95, "buffer_percent": 49, "configuration": "Exrkxoot", "enable_region_overrides": true, "game_version": "7WOfercZ", "max_count": 7, "min_count": 31, "region_overrides": {"Mci37Ds7": {"buffer_count": 88, "buffer_percent": 10, "max_count": 61, "min_count": 46, "name": "aI3uzLte", "use_buffer_percent": false}}, "regions": ["FAlt4hr7"], "use_buffer_percent": false}' \
    --deployment 'OYiBA5lt' \
    --namespace 'AOXmlG6e' \
    --version 'h1dTdoTF' \
    >$TEMP_FILE 2>&1
update_status $? 'createDeploymentOverride'
delete_file $TEMP_FILE

#- 20 deleteDeploymentOverride
samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'pBIcuC1d' \
    --namespace 'QY93OJnJ' \
    --version '6Te9vD8l' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDeploymentOverride'
delete_file $TEMP_FILE

#- 21 updateDeploymentOverride
samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --body '{"buffer_count": 7, "buffer_percent": 50, "configuration": "7Hu8AD79", "enable_region_overrides": false, "game_version": "dWunvizU", "max_count": 33, "min_count": 31, "regions": ["HyhhERoG"], "use_buffer_percent": false}' \
    --deployment 'drysMizB' \
    --namespace 'GSRdP2l7' \
    --version 'DNSZ8Aq0' \
    >$TEMP_FILE 2>&1
update_status $? 'updateDeploymentOverride'
delete_file $TEMP_FILE

#- 22 createOverrideRegionOverride
samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --body '{"buffer_count": 98, "buffer_percent": 16, "max_count": 82, "min_count": 75, "use_buffer_percent": false}' \
    --deployment '07ZddOGT' \
    --namespace 'MlJjBwj9' \
    --region 'HJHQKseE' \
    --version 'dSXRDSvg' \
    >$TEMP_FILE 2>&1
update_status $? 'createOverrideRegionOverride'
delete_file $TEMP_FILE

#- 23 deleteOverrideRegionOverride
samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'uauw1xT7' \
    --namespace 'eMwSl9ML' \
    --region 'H0NnTJ2u' \
    --version 'lNzBvwJa' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteOverrideRegionOverride'
delete_file $TEMP_FILE

#- 24 updateOverrideRegionOverride
samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --body '{"buffer_count": 84, "buffer_percent": 0, "max_count": 71, "min_count": 23, "use_buffer_percent": false}' \
    --deployment 'vA8RWSpa' \
    --namespace 'bUt7xk6Q' \
    --region 'xyWhfqoW' \
    --version 'fJw2o8oW' \
    >$TEMP_FILE 2>&1
update_status $? 'updateOverrideRegionOverride'
delete_file $TEMP_FILE

#- 25 getAllPodConfig
samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace 'UqvPCZ2H' \
    --count '50' \
    --offset '91' \
    >$TEMP_FILE 2>&1
update_status $? 'getAllPodConfig'
delete_file $TEMP_FILE

#- 26 getPodConfig
samples/cli/sample-apps Dsmc getPodConfig \
    --name '7NXmWDlX' \
    --namespace 'suNIdQJR' \
    >$TEMP_FILE 2>&1
update_status $? 'getPodConfig'
delete_file $TEMP_FILE

#- 27 createPodConfig
samples/cli/sample-apps Dsmc createPodConfig \
    --body '{"cpu_limit": 23, "mem_limit": 37, "params": "NOlvkfwa"}' \
    --name 'SbnsuLCg' \
    --namespace 'ToxuVTek' \
    >$TEMP_FILE 2>&1
update_status $? 'createPodConfig'
delete_file $TEMP_FILE

#- 28 deletePodConfig
samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'Jgvg6h5H' \
    --namespace 'IpH0Dvip' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePodConfig'
delete_file $TEMP_FILE

#- 29 updatePodConfig
samples/cli/sample-apps Dsmc updatePodConfig \
    --body '{"cpu_limit": 23, "mem_limit": 61, "name": "k4vj3LDp", "params": "4yqDt8QU"}' \
    --name 'ZDpxlHas' \
    --namespace 'inGcjrkm' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePodConfig'
delete_file $TEMP_FILE

#- 30 addPort
samples/cli/sample-apps Dsmc addPort \
    --body '{"port": 87}' \
    --name 'MttgjDSa' \
    --namespace 'IVBmft3U' \
    >$TEMP_FILE 2>&1
update_status $? 'addPort'
delete_file $TEMP_FILE

#- 31 deletePort
samples/cli/sample-apps Dsmc deletePort \
    --name 'dg7p9PGm' \
    --namespace 'Y2H5kX4M' \
    >$TEMP_FILE 2>&1
update_status $? 'deletePort'
delete_file $TEMP_FILE

#- 32 updatePort
samples/cli/sample-apps Dsmc updatePort \
    --body '{"name": "sisSX28n", "port": 53}' \
    --name 'RxWRpv5o' \
    --namespace 'u5xtvd28' \
    >$TEMP_FILE 2>&1
update_status $? 'updatePort'
delete_file $TEMP_FILE

#- 33 listImages
samples/cli/sample-apps Dsmc listImages \
    --namespace 'OUfCt8UJ' \
    --count '57' \
    --offset '10' \
    --q 'lNyj6HsT' \
    --sortBy 'updatedAt' \
    --sortDirection 'asc' \
    >$TEMP_FILE 2>&1
update_status $? 'listImages'
delete_file $TEMP_FILE

#- 34 deleteImage
samples/cli/sample-apps Dsmc deleteImage \
    --namespace 'lnaaS9lq' \
    --imageURI 'yygPcfkJ' \
    --version 'IxfQZza8' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteImage'
delete_file $TEMP_FILE

#- 35 exportImages
samples/cli/sample-apps Dsmc exportImages \
    --namespace 'kNVbDxVM' \
    >$TEMP_FILE 2>&1
update_status $? 'exportImages'
delete_file $TEMP_FILE

#- 36 getImageLimit
samples/cli/sample-apps Dsmc getImageLimit \
    --namespace 'q7HJk0F8' \
    >$TEMP_FILE 2>&1
update_status $? 'getImageLimit'
delete_file $TEMP_FILE

#- 37 getImageDetail
samples/cli/sample-apps Dsmc getImageDetail \
    --namespace '9xAc3YVf' \
    --version 'aENtrl0p' \
    >$TEMP_FILE 2>&1
update_status $? 'getImageDetail'
delete_file $TEMP_FILE

#- 38 listServer
samples/cli/sample-apps Dsmc listServer \
    --namespace 'TKZTXqzH' \
    --count '40' \
    --offset '55' \
    --region 'MYQSA2jz' \
    >$TEMP_FILE 2>&1
update_status $? 'listServer'
delete_file $TEMP_FILE

#- 39 countServer
samples/cli/sample-apps Dsmc countServer \
    --namespace '1ZOpdOjS' \
    >$TEMP_FILE 2>&1
update_status $? 'countServer'
delete_file $TEMP_FILE

#- 40 countServerDetailed
samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace 'yMddB41J' \
    --region 'uMf7RUyB' \
    >$TEMP_FILE 2>&1
update_status $? 'countServerDetailed'
delete_file $TEMP_FILE

#- 41 listLocalServer
samples/cli/sample-apps Dsmc listLocalServer \
    --namespace 'HRj8IiRi' \
    >$TEMP_FILE 2>&1
update_status $? 'listLocalServer'
delete_file $TEMP_FILE

#- 42 deleteLocalServer
samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'mRllHT6D' \
    --namespace 'c40vFFA6' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteLocalServer'
delete_file $TEMP_FILE

#- 43 getServer
samples/cli/sample-apps Dsmc getServer \
    --namespace 'gpU7EW3x' \
    --podName '1dCpm55g' \
    >$TEMP_FILE 2>&1
update_status $? 'getServer'
delete_file $TEMP_FILE

#- 44 deleteServer
samples/cli/sample-apps Dsmc deleteServer \
    --namespace 'OeqQIqcJ' \
    --podName 'VKmBM1J1' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteServer'
delete_file $TEMP_FILE

#- 45 getServerLogs
samples/cli/sample-apps Dsmc getServerLogs \
    --namespace 'IbuTrrkb' \
    --podName 'muT1whOq' \
    >$TEMP_FILE 2>&1
update_status $? 'getServerLogs'
delete_file $TEMP_FILE

#- 46 listSession
samples/cli/sample-apps Dsmc listSession \
    --namespace 'mEnDXIWr' \
    --count '54' \
    --offset '82' \
    --region 'lSay46mv' \
    --withServer 'True' \
    >$TEMP_FILE 2>&1
update_status $? 'listSession'
delete_file $TEMP_FILE

#- 47 countSession
samples/cli/sample-apps Dsmc countSession \
    --namespace 'AZAOjtFJ' \
    --region '2vmTj7tT' \
    >$TEMP_FILE 2>&1
update_status $? 'countSession'
delete_file $TEMP_FILE

#- 48 deleteSession
samples/cli/sample-apps Dsmc deleteSession \
    --namespace '7TZHWDdC' \
    --sessionID 'kIsZoArW' \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSession'
delete_file $TEMP_FILE

#- 49 exportConfigV1
samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace 'wPHcyFAd' \
    >$TEMP_FILE 2>&1
update_status $? 'exportConfigV1'
delete_file $TEMP_FILE

#- 50 importConfigV1
samples/cli/sample-apps Dsmc importConfigV1 \
    --file 'tmp.dat' \
    --namespace 'AtYciLIg' \
    >$TEMP_FILE 2>&1
update_status $? 'importConfigV1'
delete_file $TEMP_FILE

#- 51 imageDetailClient
samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace 'RwFRr0gw' \
    --version 'B9tz3vp9' \
    >$TEMP_FILE 2>&1
update_status $? 'imageDetailClient'
delete_file $TEMP_FILE

#- 52 deregisterLocalServer
samples/cli/sample-apps Dsmc deregisterLocalServer \
    --body '{"name": "9XVlV8rK"}' \
    --namespace '3tE6n0sm' \
    >$TEMP_FILE 2>&1
update_status $? 'deregisterLocalServer'
delete_file $TEMP_FILE

#- 53 registerLocalServer
samples/cli/sample-apps Dsmc registerLocalServer \
    --body '{"custom_attribute": "ip1tw3L7", "ip": "cUd9pqtv", "name": "6JfPZwcC", "port": 94}' \
    --namespace 'OXcVa80T' \
    >$TEMP_FILE 2>&1
update_status $? 'registerLocalServer'
delete_file $TEMP_FILE

#- 54 registerServer
samples/cli/sample-apps Dsmc registerServer \
    --body '{"custom_attribute": "mCwtD2lA", "pod_name": "H01o6Ndc"}' \
    --namespace 'BIgzrDyW' \
    >$TEMP_FILE 2>&1
update_status $? 'registerServer'
delete_file $TEMP_FILE

#- 55 shutdownServer
samples/cli/sample-apps Dsmc shutdownServer \
    --body '{"kill_me": false, "pod_name": "FBYGmmBa"}' \
    --namespace 'wMyoKyNp' \
    >$TEMP_FILE 2>&1
update_status $? 'shutdownServer'
delete_file $TEMP_FILE

#- 56 getServerSession
samples/cli/sample-apps Dsmc getServerSession \
    --namespace 'dAasm8xw' \
    --podName 'UfzOlQiZ' \
    >$TEMP_FILE 2>&1
update_status $? 'getServerSession'
delete_file $TEMP_FILE

#- 57 createSession
samples/cli/sample-apps Dsmc createSession \
    --body '{"client_version": "Y4NbOQXJ", "configuration": "7uOTzNMv", "deployment": "uq2tNl4C", "game_mode": "X4IjiK4D", "matching_allies": [{"matching_parties": [{"party_attributes": {"EUJRVK3l": {}}, "party_id": "9Eb0R1XR", "party_members": [{"user_id": "b0RH8vS1"}]}]}], "namespace": "smeOlngr", "pod_name": "dTXCzaPB", "region": "tkZMio4w", "session_id": "cyhloVS3"}' \
    --namespace 'rYp8QtcE' \
    >$TEMP_FILE 2>&1
update_status $? 'createSession'
delete_file $TEMP_FILE

#- 58 claimServer
samples/cli/sample-apps Dsmc claimServer \
    --body '{"session_id": "mCEVc75U"}' \
    --namespace 'feypWjDN' \
    >$TEMP_FILE 2>&1
update_status $? 'claimServer'
delete_file $TEMP_FILE

#- 59 getSession
samples/cli/sample-apps Dsmc getSession \
    --namespace 'hzCL5sWS' \
    --sessionID '2qwO763i' \
    >$TEMP_FILE 2>&1
update_status $? 'getSession'
delete_file $TEMP_FILE

#- 60 getDefaultProvider
samples/cli/sample-apps Dsmc getDefaultProvider \
    >$TEMP_FILE 2>&1
update_status $? 'getDefaultProvider'
delete_file $TEMP_FILE

#- 61 listProviders
samples/cli/sample-apps Dsmc listProviders \
    >$TEMP_FILE 2>&1
update_status $? 'listProviders'
delete_file $TEMP_FILE

#- 62 listProvidersByRegion
samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'EklkzLm8' \
    >$TEMP_FILE 2>&1
update_status $? 'listProvidersByRegion'
delete_file $TEMP_FILE

#- 63 publicGetMessages
samples/cli/sample-apps Dsmc publicGetMessages \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMessages'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT