#!/bin/bash

#Meta:
#- random seed: 256
#- template file: go-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

MODULE='cmd'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=316

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export JUSTICE_BASE_URL="http://0.0.0.0:8080"
export APP_CLIENT_ID="admin"
export APP_CLIENT_SECRET="admin"
export NAMESPACE="test"

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

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

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 listFulfillmentScripts
$ sample-apps Platform listFulfillmentScripts -h \
    >$TEMP_FILE 2>&1
update_status $? 'listFulfillmentScripts'
delete_file $TEMP_FILE

#- 2 testFulfillmentScriptEval
$ sample-apps Platform testFulfillmentScriptEval -h \
    >$TEMP_FILE 2>&1
update_status $? 'testFulfillmentScriptEval'
delete_file $TEMP_FILE

#- 3 getFulfillmentScript
$ sample-apps Platform getFulfillmentScript -h \
    >$TEMP_FILE 2>&1
update_status $? 'getFulfillmentScript'
delete_file $TEMP_FILE

#- 4 createFulfillmentScript
$ sample-apps Platform createFulfillmentScript -h \
    >$TEMP_FILE 2>&1
update_status $? 'createFulfillmentScript'
delete_file $TEMP_FILE

#- 5 deleteFulfillmentScript
$ sample-apps Platform deleteFulfillmentScript -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteFulfillmentScript'
delete_file $TEMP_FILE

#- 6 updateFulfillmentScript
$ sample-apps Platform updateFulfillmentScript -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateFulfillmentScript'
delete_file $TEMP_FILE

#- 7 queryCampaigns
$ sample-apps Platform queryCampaigns -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryCampaigns'
delete_file $TEMP_FILE

#- 8 createCampaign
$ sample-apps Platform createCampaign -h \
    >$TEMP_FILE 2>&1
update_status $? 'createCampaign'
delete_file $TEMP_FILE

#- 9 getCampaign
$ sample-apps Platform getCampaign -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCampaign'
delete_file $TEMP_FILE

#- 10 updateCampaign
$ sample-apps Platform updateCampaign -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateCampaign'
delete_file $TEMP_FILE

#- 11 getCampaignDynamic
$ sample-apps Platform getCampaignDynamic -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCampaignDynamic'
delete_file $TEMP_FILE

#- 12 getRootCategories
$ sample-apps Platform getRootCategories -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRootCategories'
delete_file $TEMP_FILE

#- 13 createCategory
$ sample-apps Platform createCategory -h \
    >$TEMP_FILE 2>&1
update_status $? 'createCategory'
delete_file $TEMP_FILE

#- 14 listCategoriesBasic
$ sample-apps Platform listCategoriesBasic -h \
    >$TEMP_FILE 2>&1
update_status $? 'listCategoriesBasic'
delete_file $TEMP_FILE

#- 15 getCategory
$ sample-apps Platform getCategory -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCategory'
delete_file $TEMP_FILE

#- 16 updateCategory
$ sample-apps Platform updateCategory -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateCategory'
delete_file $TEMP_FILE

#- 17 deleteCategory
$ sample-apps Platform deleteCategory -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCategory'
delete_file $TEMP_FILE

#- 18 getChildCategories
$ sample-apps Platform getChildCategories -h \
    >$TEMP_FILE 2>&1
update_status $? 'getChildCategories'
delete_file $TEMP_FILE

#- 19 getDescendantCategories
$ sample-apps Platform getDescendantCategories -h \
    >$TEMP_FILE 2>&1
update_status $? 'getDescendantCategories'
delete_file $TEMP_FILE

#- 20 queryCodes
$ sample-apps Platform queryCodes -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryCodes'
delete_file $TEMP_FILE

#- 21 createCodes
$ sample-apps Platform createCodes -h \
    >$TEMP_FILE 2>&1
update_status $? 'createCodes'
delete_file $TEMP_FILE

#- 22 download
$ sample-apps Platform download -h \
    >$TEMP_FILE 2>&1
update_status $? 'download'
delete_file $TEMP_FILE

#- 23 bulkDisableCodes
$ sample-apps Platform bulkDisableCodes -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkDisableCodes'
delete_file $TEMP_FILE

#- 24 bulkEnableCodes
$ sample-apps Platform bulkEnableCodes -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkEnableCodes'
delete_file $TEMP_FILE

#- 25 queryRedeemHistory
$ sample-apps Platform queryRedeemHistory -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryRedeemHistory'
delete_file $TEMP_FILE

#- 26 getCode
$ sample-apps Platform getCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCode'
delete_file $TEMP_FILE

#- 27 disableCode
$ sample-apps Platform disableCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'disableCode'
delete_file $TEMP_FILE

#- 28 enableCode
$ sample-apps Platform enableCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'enableCode'
delete_file $TEMP_FILE

#- 29 listCurrencies
$ sample-apps Platform listCurrencies -h \
    >$TEMP_FILE 2>&1
update_status $? 'listCurrencies'
delete_file $TEMP_FILE

#- 30 createCurrency
$ sample-apps Platform createCurrency -h \
    >$TEMP_FILE 2>&1
update_status $? 'createCurrency'
delete_file $TEMP_FILE

#- 31 updateCurrency
$ sample-apps Platform updateCurrency -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateCurrency'
delete_file $TEMP_FILE

#- 32 deleteCurrency
$ sample-apps Platform deleteCurrency -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteCurrency'
delete_file $TEMP_FILE

#- 33 getCurrencyConfig
$ sample-apps Platform getCurrencyConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrencyConfig'
delete_file $TEMP_FILE

#- 34 getCurrencySummary
$ sample-apps Platform getCurrencySummary -h \
    >$TEMP_FILE 2>&1
update_status $? 'getCurrencySummary'
delete_file $TEMP_FILE

#- 35 getDLCItemConfig
$ sample-apps Platform getDLCItemConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getDLCItemConfig'
delete_file $TEMP_FILE

#- 36 updateDLCItemConfig
$ sample-apps Platform updateDLCItemConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateDLCItemConfig'
delete_file $TEMP_FILE

#- 37 deleteDLCItemConfig
$ sample-apps Platform deleteDLCItemConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteDLCItemConfig'
delete_file $TEMP_FILE

#- 38 getPlatformDLCConfig
$ sample-apps Platform getPlatformDLCConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPlatformDLCConfig'
delete_file $TEMP_FILE

#- 39 updatePlatformDLCConfig
$ sample-apps Platform updatePlatformDLCConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlatformDLCConfig'
delete_file $TEMP_FILE

#- 40 deletePlatformDLCConfig
$ sample-apps Platform deletePlatformDLCConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlatformDLCConfig'
delete_file $TEMP_FILE

#- 41 queryEntitlements
$ sample-apps Platform queryEntitlements -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryEntitlements'
delete_file $TEMP_FILE

#- 42 getEntitlement
$ sample-apps Platform getEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'getEntitlement'
delete_file $TEMP_FILE

#- 43 queryFulfillmentHistories
$ sample-apps Platform queryFulfillmentHistories -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryFulfillmentHistories'
delete_file $TEMP_FILE

#- 44 getAppleIAPConfig
$ sample-apps Platform getAppleIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAppleIAPConfig'
delete_file $TEMP_FILE

#- 45 updateAppleIAPConfig
$ sample-apps Platform updateAppleIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateAppleIAPConfig'
delete_file $TEMP_FILE

#- 46 deleteAppleIAPConfig
$ sample-apps Platform deleteAppleIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteAppleIAPConfig'
delete_file $TEMP_FILE

#- 47 getEpicGamesIAPConfig
$ sample-apps Platform getEpicGamesIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 48 updateEpicGamesIAPConfig
$ sample-apps Platform updateEpicGamesIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 49 deleteEpicGamesIAPConfig
$ sample-apps Platform deleteEpicGamesIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteEpicGamesIAPConfig'
delete_file $TEMP_FILE

#- 50 getGoogleIAPConfig
$ sample-apps Platform getGoogleIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getGoogleIAPConfig'
delete_file $TEMP_FILE

#- 51 updateGoogleIAPConfig
$ sample-apps Platform updateGoogleIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGoogleIAPConfig'
delete_file $TEMP_FILE

#- 52 deleteGoogleIAPConfig
$ sample-apps Platform deleteGoogleIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteGoogleIAPConfig'
delete_file $TEMP_FILE

#- 53 updateGoogleP12File
$ sample-apps Platform updateGoogleP12File -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateGoogleP12File'
delete_file $TEMP_FILE

#- 54 getIAPItemConfig
$ sample-apps Platform getIAPItemConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getIAPItemConfig'
delete_file $TEMP_FILE

#- 55 updateIAPItemConfig
$ sample-apps Platform updateIAPItemConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateIAPItemConfig'
delete_file $TEMP_FILE

#- 56 deleteIAPItemConfig
$ sample-apps Platform deleteIAPItemConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteIAPItemConfig'
delete_file $TEMP_FILE

#- 57 getPlayStationIAPConfig
$ sample-apps Platform getPlayStationIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPlayStationIAPConfig'
delete_file $TEMP_FILE

#- 58 updatePlaystationIAPConfig
$ sample-apps Platform updatePlaystationIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 59 deletePlaystationIAPConfig
$ sample-apps Platform deletePlaystationIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePlaystationIAPConfig'
delete_file $TEMP_FILE

#- 60 getStadiaIAPConfig
$ sample-apps Platform getStadiaIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getStadiaIAPConfig'
delete_file $TEMP_FILE

#- 61 deleteStadiaIAPConfig
$ sample-apps Platform deleteStadiaIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStadiaIAPConfig'
delete_file $TEMP_FILE

#- 62 updateStadiaJsonConfigFile
$ sample-apps Platform updateStadiaJsonConfigFile -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateStadiaJsonConfigFile'
delete_file $TEMP_FILE

#- 63 getSteamIAPConfig
$ sample-apps Platform getSteamIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSteamIAPConfig'
delete_file $TEMP_FILE

#- 64 updateSteamIAPConfig
$ sample-apps Platform updateSteamIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateSteamIAPConfig'
delete_file $TEMP_FILE

#- 65 deleteSteamIAPConfig
$ sample-apps Platform deleteSteamIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteSteamIAPConfig'
delete_file $TEMP_FILE

#- 66 getXblIAPConfig
$ sample-apps Platform getXblIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getXblIAPConfig'
delete_file $TEMP_FILE

#- 67 updateXblIAPConfig
$ sample-apps Platform updateXblIAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblIAPConfig'
delete_file $TEMP_FILE

#- 68 deleteXblAPConfig
$ sample-apps Platform deleteXblAPConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteXblAPConfig'
delete_file $TEMP_FILE

#- 69 updateXblBPCertFile
$ sample-apps Platform updateXblBPCertFile -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateXblBPCertFile'
delete_file $TEMP_FILE

#- 70 syncInGameItem
$ sample-apps Platform syncInGameItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncInGameItem'
delete_file $TEMP_FILE

#- 71 createItem
$ sample-apps Platform createItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'createItem'
delete_file $TEMP_FILE

#- 72 getItemByAppId
$ sample-apps Platform getItemByAppId -h \
    >$TEMP_FILE 2>&1
update_status $? 'getItemByAppId'
delete_file $TEMP_FILE

#- 73 queryItems
$ sample-apps Platform queryItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryItems'
delete_file $TEMP_FILE

#- 74 listBasicItemsByFeatures
$ sample-apps Platform listBasicItemsByFeatures -h \
    >$TEMP_FILE 2>&1
update_status $? 'listBasicItemsByFeatures'
delete_file $TEMP_FILE

#- 75 getItemBySku
$ sample-apps Platform getItemBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'getItemBySku'
delete_file $TEMP_FILE

#- 76 getLocaleItemBySku
$ sample-apps Platform getLocaleItemBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLocaleItemBySku'
delete_file $TEMP_FILE

#- 77 getItemIdBySku
$ sample-apps Platform getItemIdBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'getItemIdBySku'
delete_file $TEMP_FILE

#- 78 bulkGetLocaleItems
$ sample-apps Platform bulkGetLocaleItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'bulkGetLocaleItems'
delete_file $TEMP_FILE

#- 79 searchItems
$ sample-apps Platform searchItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'searchItems'
delete_file $TEMP_FILE

#- 80 queryUncategorizedItems
$ sample-apps Platform queryUncategorizedItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryUncategorizedItems'
delete_file $TEMP_FILE

#- 81 getItem
$ sample-apps Platform getItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'getItem'
delete_file $TEMP_FILE

#- 82 updateItem
$ sample-apps Platform updateItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateItem'
delete_file $TEMP_FILE

#- 83 deleteItem
$ sample-apps Platform deleteItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteItem'
delete_file $TEMP_FILE

#- 84 acquireItem
$ sample-apps Platform acquireItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'acquireItem'
delete_file $TEMP_FILE

#- 85 getApp
$ sample-apps Platform getApp -h \
    >$TEMP_FILE 2>&1
update_status $? 'getApp'
delete_file $TEMP_FILE

#- 86 updateApp
$ sample-apps Platform updateApp -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateApp'
delete_file $TEMP_FILE

#- 87 disableItem
$ sample-apps Platform disableItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'disableItem'
delete_file $TEMP_FILE

#- 88 getItemDynamicData
$ sample-apps Platform getItemDynamicData -h \
    >$TEMP_FILE 2>&1
update_status $? 'getItemDynamicData'
delete_file $TEMP_FILE

#- 89 enableItem
$ sample-apps Platform enableItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'enableItem'
delete_file $TEMP_FILE

#- 90 featureItem
$ sample-apps Platform featureItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'featureItem'
delete_file $TEMP_FILE

#- 91 defeatureItem
$ sample-apps Platform defeatureItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'defeatureItem'
delete_file $TEMP_FILE

#- 92 getLocaleItem
$ sample-apps Platform getLocaleItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'getLocaleItem'
delete_file $TEMP_FILE

#- 93 returnItem
$ sample-apps Platform returnItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'returnItem'
delete_file $TEMP_FILE

#- 94 queryKeyGroups
$ sample-apps Platform queryKeyGroups -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryKeyGroups'
delete_file $TEMP_FILE

#- 95 createKeyGroup
$ sample-apps Platform createKeyGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'createKeyGroup'
delete_file $TEMP_FILE

#- 96 getKeyGroup
$ sample-apps Platform getKeyGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'getKeyGroup'
delete_file $TEMP_FILE

#- 97 updateKeyGroup
$ sample-apps Platform updateKeyGroup -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateKeyGroup'
delete_file $TEMP_FILE

#- 98 getKeyGroupDynamic
$ sample-apps Platform getKeyGroupDynamic -h \
    >$TEMP_FILE 2>&1
update_status $? 'getKeyGroupDynamic'
delete_file $TEMP_FILE

#- 99 listKeys
$ sample-apps Platform listKeys -h \
    >$TEMP_FILE 2>&1
update_status $? 'listKeys'
delete_file $TEMP_FILE

#- 100 uploadKeys
$ sample-apps Platform uploadKeys -h \
    >$TEMP_FILE 2>&1
update_status $? 'uploadKeys'
delete_file $TEMP_FILE

#- 101 queryOrders
$ sample-apps Platform queryOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryOrders'
delete_file $TEMP_FILE

#- 102 getOrderStatistics
$ sample-apps Platform getOrderStatistics -h \
    >$TEMP_FILE 2>&1
update_status $? 'getOrderStatistics'
delete_file $TEMP_FILE

#- 103 getOrder
$ sample-apps Platform getOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'getOrder'
delete_file $TEMP_FILE

#- 104 refundOrder
$ sample-apps Platform refundOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'refundOrder'
delete_file $TEMP_FILE

#- 105 getPaymentCallbackConfig
$ sample-apps Platform getPaymentCallbackConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentCallbackConfig'
delete_file $TEMP_FILE

#- 106 updatePaymentCallbackConfig
$ sample-apps Platform updatePaymentCallbackConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentCallbackConfig'
delete_file $TEMP_FILE

#- 107 queryPaymentNotifications
$ sample-apps Platform queryPaymentNotifications -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentNotifications'
delete_file $TEMP_FILE

#- 108 queryPaymentOrders
$ sample-apps Platform queryPaymentOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentOrders'
delete_file $TEMP_FILE

#- 109 createPaymentOrderByDedicated
$ sample-apps Platform createPaymentOrderByDedicated -h \
    >$TEMP_FILE 2>&1
update_status $? 'createPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 110 listExtOrderNoByExtTxId
$ sample-apps Platform listExtOrderNoByExtTxId -h \
    >$TEMP_FILE 2>&1
update_status $? 'listExtOrderNoByExtTxId'
delete_file $TEMP_FILE

#- 111 getPaymentOrder
$ sample-apps Platform getPaymentOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrder'
delete_file $TEMP_FILE

#- 112 chargePaymentOrder
$ sample-apps Platform chargePaymentOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'chargePaymentOrder'
delete_file $TEMP_FILE

#- 113 refundPaymentOrderByDedicated
$ sample-apps Platform refundPaymentOrderByDedicated -h \
    >$TEMP_FILE 2>&1
update_status $? 'refundPaymentOrderByDedicated'
delete_file $TEMP_FILE

#- 114 simulatePaymentOrderNotification
$ sample-apps Platform simulatePaymentOrderNotification -h \
    >$TEMP_FILE 2>&1
update_status $? 'simulatePaymentOrderNotification'
delete_file $TEMP_FILE

#- 115 getPaymentOrderChargeStatus
$ sample-apps Platform getPaymentOrderChargeStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentOrderChargeStatus'
delete_file $TEMP_FILE

#- 116 createReward
$ sample-apps Platform createReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'createReward'
delete_file $TEMP_FILE

#- 117 queryRewards
$ sample-apps Platform queryRewards -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards'
delete_file $TEMP_FILE

#- 118 exportRewards
$ sample-apps Platform exportRewards -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportRewards'
delete_file $TEMP_FILE

#- 119 importRewards
$ sample-apps Platform importRewards -h \
    >$TEMP_FILE 2>&1
update_status $? 'importRewards'
delete_file $TEMP_FILE

#- 120 getReward
$ sample-apps Platform getReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'getReward'
delete_file $TEMP_FILE

#- 121 updateReward
$ sample-apps Platform updateReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateReward'
delete_file $TEMP_FILE

#- 122 deleteReward
$ sample-apps Platform deleteReward -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteReward'
delete_file $TEMP_FILE

#- 123 checkEventCondition
$ sample-apps Platform checkEventCondition -h \
    >$TEMP_FILE 2>&1
update_status $? 'checkEventCondition'
delete_file $TEMP_FILE

#- 124 listStores
$ sample-apps Platform listStores -h \
    >$TEMP_FILE 2>&1
update_status $? 'listStores'
delete_file $TEMP_FILE

#- 125 createStore
$ sample-apps Platform createStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'createStore'
delete_file $TEMP_FILE

#- 126 importStore
$ sample-apps Platform importStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'importStore'
delete_file $TEMP_FILE

#- 127 getPublishedStore
$ sample-apps Platform getPublishedStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStore'
delete_file $TEMP_FILE

#- 128 deletePublishedStore
$ sample-apps Platform deletePublishedStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePublishedStore'
delete_file $TEMP_FILE

#- 129 getPublishedStoreBackup
$ sample-apps Platform getPublishedStoreBackup -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPublishedStoreBackup'
delete_file $TEMP_FILE

#- 130 rollbackPublishedStore
$ sample-apps Platform rollbackPublishedStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'rollbackPublishedStore'
delete_file $TEMP_FILE

#- 131 getStore
$ sample-apps Platform getStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'getStore'
delete_file $TEMP_FILE

#- 132 updateStore
$ sample-apps Platform updateStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateStore'
delete_file $TEMP_FILE

#- 133 deleteStore
$ sample-apps Platform deleteStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteStore'
delete_file $TEMP_FILE

#- 134 cloneStore
$ sample-apps Platform cloneStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'cloneStore'
delete_file $TEMP_FILE

#- 135 exportStore
$ sample-apps Platform exportStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'exportStore'
delete_file $TEMP_FILE

#- 136 querySubscriptions
$ sample-apps Platform querySubscriptions -h \
    >$TEMP_FILE 2>&1
update_status $? 'querySubscriptions'
delete_file $TEMP_FILE

#- 137 recurringChargeSubscription
$ sample-apps Platform recurringChargeSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'recurringChargeSubscription'
delete_file $TEMP_FILE

#- 138 getTicketDynamic
$ sample-apps Platform getTicketDynamic -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketDynamic'
delete_file $TEMP_FILE

#- 139 decreaseTicketSale
$ sample-apps Platform decreaseTicketSale -h \
    >$TEMP_FILE 2>&1
update_status $? 'decreaseTicketSale'
delete_file $TEMP_FILE

#- 140 getTicketBoothID
$ sample-apps Platform getTicketBoothID -h \
    >$TEMP_FILE 2>&1
update_status $? 'getTicketBoothID'
delete_file $TEMP_FILE

#- 141 increaseTicketSale
$ sample-apps Platform increaseTicketSale -h \
    >$TEMP_FILE 2>&1
update_status $? 'increaseTicketSale'
delete_file $TEMP_FILE

#- 142 anonymizeCampaign
$ sample-apps Platform anonymizeCampaign -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeCampaign'
delete_file $TEMP_FILE

#- 143 anonymizeEntitlement
$ sample-apps Platform anonymizeEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeEntitlement'
delete_file $TEMP_FILE

#- 144 anonymizeFulfillment
$ sample-apps Platform anonymizeFulfillment -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeFulfillment'
delete_file $TEMP_FILE

#- 145 anonymizeIntegration
$ sample-apps Platform anonymizeIntegration -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeIntegration'
delete_file $TEMP_FILE

#- 146 anonymizeOrder
$ sample-apps Platform anonymizeOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeOrder'
delete_file $TEMP_FILE

#- 147 anonymizePayment
$ sample-apps Platform anonymizePayment -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizePayment'
delete_file $TEMP_FILE

#- 148 anonymizeSubscription
$ sample-apps Platform anonymizeSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeSubscription'
delete_file $TEMP_FILE

#- 149 anonymizeWallet
$ sample-apps Platform anonymizeWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'anonymizeWallet'
delete_file $TEMP_FILE

#- 150 queryUserEntitlements
$ sample-apps Platform queryUserEntitlements -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlements'
delete_file $TEMP_FILE

#- 151 grantUserEntitlement
$ sample-apps Platform grantUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'grantUserEntitlement'
delete_file $TEMP_FILE

#- 152 getUserAppEntitlementByAppId
$ sample-apps Platform getUserAppEntitlementByAppId -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 153 queryUserEntitlementsByAppType
$ sample-apps Platform queryUserEntitlementsByAppType -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 154 getUserEntitlementByItemId
$ sample-apps Platform getUserEntitlementByItemId -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 155 getUserEntitlementBySku
$ sample-apps Platform getUserEntitlementBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementBySku'
delete_file $TEMP_FILE

#- 156 existsAnyUserActiveEntitlement
$ sample-apps Platform existsAnyUserActiveEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 157 existsAnyUserActiveEntitlementByItemIds
$ sample-apps Platform existsAnyUserActiveEntitlementByItemIds -h \
    >$TEMP_FILE 2>&1
update_status $? 'existsAnyUserActiveEntitlementByItemIds'
delete_file $TEMP_FILE

#- 158 getUserAppEntitlementOwnershipByAppId
$ sample-apps Platform getUserAppEntitlementOwnershipByAppId -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 159 getUserEntitlementOwnershipByItemId
$ sample-apps Platform getUserEntitlementOwnershipByItemId -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 160 getUserEntitlementOwnershipBySku
$ sample-apps Platform getUserEntitlementOwnershipBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 161 revokeUserEntitlements
$ sample-apps Platform revokeUserEntitlements -h \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlements'
delete_file $TEMP_FILE

#- 162 getUserEntitlement
$ sample-apps Platform getUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlement'
delete_file $TEMP_FILE

#- 163 updateUserEntitlement
$ sample-apps Platform updateUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserEntitlement'
delete_file $TEMP_FILE

#- 164 consumeUserEntitlement
$ sample-apps Platform consumeUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'consumeUserEntitlement'
delete_file $TEMP_FILE

#- 165 disableUserEntitlement
$ sample-apps Platform disableUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserEntitlement'
delete_file $TEMP_FILE

#- 166 enableUserEntitlement
$ sample-apps Platform enableUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserEntitlement'
delete_file $TEMP_FILE

#- 167 getUserEntitlementHistories
$ sample-apps Platform getUserEntitlementHistories -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserEntitlementHistories'
delete_file $TEMP_FILE

#- 168 revokeUserEntitlement
$ sample-apps Platform revokeUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'revokeUserEntitlement'
delete_file $TEMP_FILE

#- 169 fulfillItem
$ sample-apps Platform fulfillItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillItem'
delete_file $TEMP_FILE

#- 170 redeemCode
$ sample-apps Platform redeemCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'redeemCode'
delete_file $TEMP_FILE

#- 171 fulfillRewards
$ sample-apps Platform fulfillRewards -h \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillRewards'
delete_file $TEMP_FILE

#- 172 queryUserIAPOrders
$ sample-apps Platform queryUserIAPOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserIAPOrders'
delete_file $TEMP_FILE

#- 173 queryAllUserIAPOrders
$ sample-apps Platform queryAllUserIAPOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryAllUserIAPOrders'
delete_file $TEMP_FILE

#- 174 mockFulfillIAPItem
$ sample-apps Platform mockFulfillIAPItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'mockFulfillIAPItem'
delete_file $TEMP_FILE

#- 175 queryUserOrders
$ sample-apps Platform queryUserOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserOrders'
delete_file $TEMP_FILE

#- 176 countOfPurchasedItem
$ sample-apps Platform countOfPurchasedItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'countOfPurchasedItem'
delete_file $TEMP_FILE

#- 177 getUserOrder
$ sample-apps Platform getUserOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrder'
delete_file $TEMP_FILE

#- 178 updateUserOrderStatus
$ sample-apps Platform updateUserOrderStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateUserOrderStatus'
delete_file $TEMP_FILE

#- 179 fulfillUserOrder
$ sample-apps Platform fulfillUserOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'fulfillUserOrder'
delete_file $TEMP_FILE

#- 180 getUserOrderGrant
$ sample-apps Platform getUserOrderGrant -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderGrant'
delete_file $TEMP_FILE

#- 181 getUserOrderHistories
$ sample-apps Platform getUserOrderHistories -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserOrderHistories'
delete_file $TEMP_FILE

#- 182 processUserOrderNotification
$ sample-apps Platform processUserOrderNotification -h \
    >$TEMP_FILE 2>&1
update_status $? 'processUserOrderNotification'
delete_file $TEMP_FILE

#- 183 downloadUserOrderReceipt
$ sample-apps Platform downloadUserOrderReceipt -h \
    >$TEMP_FILE 2>&1
update_status $? 'downloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 184 createUserPaymentOrder
$ sample-apps Platform createUserPaymentOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'createUserPaymentOrder'
delete_file $TEMP_FILE

#- 185 refundUserPaymentOrder
$ sample-apps Platform refundUserPaymentOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'refundUserPaymentOrder'
delete_file $TEMP_FILE

#- 186 applyUserRedemption
$ sample-apps Platform applyUserRedemption -h \
    >$TEMP_FILE 2>&1
update_status $? 'applyUserRedemption'
delete_file $TEMP_FILE

#- 187 queryUserSubscriptions
$ sample-apps Platform queryUserSubscriptions -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryUserSubscriptions'
delete_file $TEMP_FILE

#- 188 getUserSubscriptionActivities
$ sample-apps Platform getUserSubscriptionActivities -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionActivities'
delete_file $TEMP_FILE

#- 189 platformSubscribeSubscription
$ sample-apps Platform platformSubscribeSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'platformSubscribeSubscription'
delete_file $TEMP_FILE

#- 190 checkUserSubscriptionSubscribableByItemId
$ sample-apps Platform checkUserSubscriptionSubscribableByItemId -h \
    >$TEMP_FILE 2>&1
update_status $? 'checkUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 191 getUserSubscription
$ sample-apps Platform getUserSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscription'
delete_file $TEMP_FILE

#- 192 deleteUserSubscription
$ sample-apps Platform deleteUserSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'deleteUserSubscription'
delete_file $TEMP_FILE

#- 193 cancelSubscription
$ sample-apps Platform cancelSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'cancelSubscription'
delete_file $TEMP_FILE

#- 194 grantDaysToSubscription
$ sample-apps Platform grantDaysToSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'grantDaysToSubscription'
delete_file $TEMP_FILE

#- 195 getUserSubscriptionBillingHistories
$ sample-apps Platform getUserSubscriptionBillingHistories -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 196 processUserSubscriptionNotification
$ sample-apps Platform processUserSubscriptionNotification -h \
    >$TEMP_FILE 2>&1
update_status $? 'processUserSubscriptionNotification'
delete_file $TEMP_FILE

#- 197 acquireUserTicket
$ sample-apps Platform acquireUserTicket -h \
    >$TEMP_FILE 2>&1
update_status $? 'acquireUserTicket'
delete_file $TEMP_FILE

#- 198 checkWallet
$ sample-apps Platform checkWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'checkWallet'
delete_file $TEMP_FILE

#- 199 creditUserWallet
$ sample-apps Platform creditUserWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'creditUserWallet'
delete_file $TEMP_FILE

#- 200 payWithUserWallet
$ sample-apps Platform payWithUserWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'payWithUserWallet'
delete_file $TEMP_FILE

#- 201 getUserWallet
$ sample-apps Platform getUserWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'getUserWallet'
delete_file $TEMP_FILE

#- 202 debitUserWallet
$ sample-apps Platform debitUserWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'debitUserWallet'
delete_file $TEMP_FILE

#- 203 disableUserWallet
$ sample-apps Platform disableUserWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'disableUserWallet'
delete_file $TEMP_FILE

#- 204 enableUserWallet
$ sample-apps Platform enableUserWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'enableUserWallet'
delete_file $TEMP_FILE

#- 205 listUserWalletTransactions
$ sample-apps Platform listUserWalletTransactions -h \
    >$TEMP_FILE 2>&1
update_status $? 'listUserWalletTransactions'
delete_file $TEMP_FILE

#- 206 queryWallets
$ sample-apps Platform queryWallets -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryWallets'
delete_file $TEMP_FILE

#- 207 getWallet
$ sample-apps Platform getWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'getWallet'
delete_file $TEMP_FILE

#- 208 syncOrders
$ sample-apps Platform syncOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncOrders'
delete_file $TEMP_FILE

#- 209 testAdyenConfig
$ sample-apps Platform testAdyenConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfig'
delete_file $TEMP_FILE

#- 210 testAliPayConfig
$ sample-apps Platform testAliPayConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfig'
delete_file $TEMP_FILE

#- 211 testCheckoutConfig
$ sample-apps Platform testCheckoutConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfig'
delete_file $TEMP_FILE

#- 212 debugMatchedPaymentMerchantConfig
$ sample-apps Platform debugMatchedPaymentMerchantConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'debugMatchedPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 213 testPayPalConfig
$ sample-apps Platform testPayPalConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfig'
delete_file $TEMP_FILE

#- 214 testStripeConfig
$ sample-apps Platform testStripeConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfig'
delete_file $TEMP_FILE

#- 215 testWxPayConfig
$ sample-apps Platform testWxPayConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfig'
delete_file $TEMP_FILE

#- 216 testXsollaConfig
$ sample-apps Platform testXsollaConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfig'
delete_file $TEMP_FILE

#- 217 getPaymentMerchantConfig
$ sample-apps Platform getPaymentMerchantConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentMerchantConfig'
delete_file $TEMP_FILE

#- 218 updateAdyenConfig
$ sample-apps Platform updateAdyenConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateAdyenConfig'
delete_file $TEMP_FILE

#- 219 testAdyenConfigById
$ sample-apps Platform testAdyenConfigById -h \
    >$TEMP_FILE 2>&1
update_status $? 'testAdyenConfigById'
delete_file $TEMP_FILE

#- 220 updateAliPayConfig
$ sample-apps Platform updateAliPayConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateAliPayConfig'
delete_file $TEMP_FILE

#- 221 testAliPayConfigById
$ sample-apps Platform testAliPayConfigById -h \
    >$TEMP_FILE 2>&1
update_status $? 'testAliPayConfigById'
delete_file $TEMP_FILE

#- 222 updateCheckoutConfig
$ sample-apps Platform updateCheckoutConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateCheckoutConfig'
delete_file $TEMP_FILE

#- 223 testCheckoutConfigById
$ sample-apps Platform testCheckoutConfigById -h \
    >$TEMP_FILE 2>&1
update_status $? 'testCheckoutConfigById'
delete_file $TEMP_FILE

#- 224 updatePayPalConfig
$ sample-apps Platform updatePayPalConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePayPalConfig'
delete_file $TEMP_FILE

#- 225 testPayPalConfigById
$ sample-apps Platform testPayPalConfigById -h \
    >$TEMP_FILE 2>&1
update_status $? 'testPayPalConfigById'
delete_file $TEMP_FILE

#- 226 updateStripeConfig
$ sample-apps Platform updateStripeConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateStripeConfig'
delete_file $TEMP_FILE

#- 227 testStripeConfigById
$ sample-apps Platform testStripeConfigById -h \
    >$TEMP_FILE 2>&1
update_status $? 'testStripeConfigById'
delete_file $TEMP_FILE

#- 228 updateWxPayConfig
$ sample-apps Platform updateWxPayConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfig'
delete_file $TEMP_FILE

#- 229 updateWxPayConfigCert
$ sample-apps Platform updateWxPayConfigCert -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateWxPayConfigCert'
delete_file $TEMP_FILE

#- 230 testWxPayConfigById
$ sample-apps Platform testWxPayConfigById -h \
    >$TEMP_FILE 2>&1
update_status $? 'testWxPayConfigById'
delete_file $TEMP_FILE

#- 231 updateXsollaConfig
$ sample-apps Platform updateXsollaConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaConfig'
delete_file $TEMP_FILE

#- 232 testXsollaConfigById
$ sample-apps Platform testXsollaConfigById -h \
    >$TEMP_FILE 2>&1
update_status $? 'testXsollaConfigById'
delete_file $TEMP_FILE

#- 233 updateXsollaUIConfig
$ sample-apps Platform updateXsollaUIConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updateXsollaUIConfig'
delete_file $TEMP_FILE

#- 234 queryPaymentProviderConfig
$ sample-apps Platform queryPaymentProviderConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryPaymentProviderConfig'
delete_file $TEMP_FILE

#- 235 createPaymentProviderConfig
$ sample-apps Platform createPaymentProviderConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'createPaymentProviderConfig'
delete_file $TEMP_FILE

#- 236 getAggregatePaymentProviders
$ sample-apps Platform getAggregatePaymentProviders -h \
    >$TEMP_FILE 2>&1
update_status $? 'getAggregatePaymentProviders'
delete_file $TEMP_FILE

#- 237 debugMatchedPaymentProviderConfig
$ sample-apps Platform debugMatchedPaymentProviderConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'debugMatchedPaymentProviderConfig'
delete_file $TEMP_FILE

#- 238 getSpecialPaymentProviders
$ sample-apps Platform getSpecialPaymentProviders -h \
    >$TEMP_FILE 2>&1
update_status $? 'getSpecialPaymentProviders'
delete_file $TEMP_FILE

#- 239 updatePaymentProviderConfig
$ sample-apps Platform updatePaymentProviderConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentProviderConfig'
delete_file $TEMP_FILE

#- 240 deletePaymentProviderConfig
$ sample-apps Platform deletePaymentProviderConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'deletePaymentProviderConfig'
delete_file $TEMP_FILE

#- 241 getPaymentTaxConfig
$ sample-apps Platform getPaymentTaxConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentTaxConfig'
delete_file $TEMP_FILE

#- 242 updatePaymentTaxConfig
$ sample-apps Platform updatePaymentTaxConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'updatePaymentTaxConfig'
delete_file $TEMP_FILE

#- 243 syncPaymentOrders
$ sample-apps Platform syncPaymentOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncPaymentOrders'
delete_file $TEMP_FILE

#- 244 publicGetRootCategories
$ sample-apps Platform publicGetRootCategories -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetRootCategories'
delete_file $TEMP_FILE

#- 245 downloadCategories
$ sample-apps Platform downloadCategories -h \
    >$TEMP_FILE 2>&1
update_status $? 'downloadCategories'
delete_file $TEMP_FILE

#- 246 publicGetCategory
$ sample-apps Platform publicGetCategory -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetCategory'
delete_file $TEMP_FILE

#- 247 publicGetChildCategories
$ sample-apps Platform publicGetChildCategories -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetChildCategories'
delete_file $TEMP_FILE

#- 248 publicGetDescendantCategories
$ sample-apps Platform publicGetDescendantCategories -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetDescendantCategories'
delete_file $TEMP_FILE

#- 249 publicListCurrencies
$ sample-apps Platform publicListCurrencies -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicListCurrencies'
delete_file $TEMP_FILE

#- 250 publicGetItemByAppId
$ sample-apps Platform publicGetItemByAppId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemByAppId'
delete_file $TEMP_FILE

#- 251 publicQueryItems
$ sample-apps Platform publicQueryItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryItems'
delete_file $TEMP_FILE

#- 252 publicGetItemBySku
$ sample-apps Platform publicGetItemBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemBySku'
delete_file $TEMP_FILE

#- 253 publicBulkGetItems
$ sample-apps Platform publicBulkGetItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicBulkGetItems'
delete_file $TEMP_FILE

#- 254 publicSearchItems
$ sample-apps Platform publicSearchItems -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicSearchItems'
delete_file $TEMP_FILE

#- 255 publicGetApp
$ sample-apps Platform publicGetApp -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetApp'
delete_file $TEMP_FILE

#- 256 publicGetItemDynamicData
$ sample-apps Platform publicGetItemDynamicData -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItemDynamicData'
delete_file $TEMP_FILE

#- 257 publicGetItem
$ sample-apps Platform publicGetItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetItem'
delete_file $TEMP_FILE

#- 258 getPaymentCustomization
$ sample-apps Platform getPaymentCustomization -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentCustomization'
delete_file $TEMP_FILE

#- 259 publicGetPaymentUrl
$ sample-apps Platform publicGetPaymentUrl -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentUrl'
delete_file $TEMP_FILE

#- 260 publicGetPaymentMethods
$ sample-apps Platform publicGetPaymentMethods -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentMethods'
delete_file $TEMP_FILE

#- 261 publicGetUnpaidPaymentOrder
$ sample-apps Platform publicGetUnpaidPaymentOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUnpaidPaymentOrder'
delete_file $TEMP_FILE

#- 262 pay
$ sample-apps Platform pay -h \
    >$TEMP_FILE 2>&1
update_status $? 'pay'
delete_file $TEMP_FILE

#- 263 publicCheckPaymentOrderPaidStatus
$ sample-apps Platform publicCheckPaymentOrderPaidStatus -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckPaymentOrderPaidStatus'
delete_file $TEMP_FILE

#- 264 getPaymentPublicConfig
$ sample-apps Platform getPaymentPublicConfig -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentPublicConfig'
delete_file $TEMP_FILE

#- 265 publicGetQRCode
$ sample-apps Platform publicGetQRCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetQRCode'
delete_file $TEMP_FILE

#- 266 publicNormalizePaymentReturnUrl
$ sample-apps Platform publicNormalizePaymentReturnUrl -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicNormalizePaymentReturnUrl'
delete_file $TEMP_FILE

#- 267 getPaymentTaxValue
$ sample-apps Platform getPaymentTaxValue -h \
    >$TEMP_FILE 2>&1
update_status $? 'getPaymentTaxValue'
delete_file $TEMP_FILE

#- 268 getRewardByCode
$ sample-apps Platform getRewardByCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'getRewardByCode'
delete_file $TEMP_FILE

#- 269 queryRewards1
$ sample-apps Platform queryRewards1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'queryRewards1'
delete_file $TEMP_FILE

#- 270 getReward1
$ sample-apps Platform getReward1 -h \
    >$TEMP_FILE 2>&1
update_status $? 'getReward1'
delete_file $TEMP_FILE

#- 271 publicListStores
$ sample-apps Platform publicListStores -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicListStores'
delete_file $TEMP_FILE

#- 272 publicExistsAnyMyActiveEntitlement
$ sample-apps Platform publicExistsAnyMyActiveEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyMyActiveEntitlement'
delete_file $TEMP_FILE

#- 273 publicGetMyAppEntitlementOwnershipByAppId
$ sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 274 publicGetMyEntitlementOwnershipByItemId
$ sample-apps Platform publicGetMyEntitlementOwnershipByItemId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 275 publicGetMyEntitlementOwnershipBySku
$ sample-apps Platform publicGetMyEntitlementOwnershipBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 276 publicGetEntitlementOwnershipToken
$ sample-apps Platform publicGetEntitlementOwnershipToken -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetEntitlementOwnershipToken'
delete_file $TEMP_FILE

#- 277 publicGetMyWallet
$ sample-apps Platform publicGetMyWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetMyWallet'
delete_file $TEMP_FILE

#- 278 publicSyncPsnDlcInventory
$ sample-apps Platform publicSyncPsnDlcInventory -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicSyncPsnDlcInventory'
delete_file $TEMP_FILE

#- 279 syncSteamDLC
$ sample-apps Platform syncSteamDLC -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamDLC'
delete_file $TEMP_FILE

#- 280 syncXboxDLC
$ sample-apps Platform syncXboxDLC -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxDLC'
delete_file $TEMP_FILE

#- 281 publicQueryUserEntitlements
$ sample-apps Platform publicQueryUserEntitlements -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlements'
delete_file $TEMP_FILE

#- 282 publicGetUserAppEntitlementByAppId
$ sample-apps Platform publicGetUserAppEntitlementByAppId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementByAppId'
delete_file $TEMP_FILE

#- 283 publicQueryUserEntitlementsByAppType
$ sample-apps Platform publicQueryUserEntitlementsByAppType -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserEntitlementsByAppType'
delete_file $TEMP_FILE

#- 284 publicGetUserEntitlementByItemId
$ sample-apps Platform publicGetUserEntitlementByItemId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementByItemId'
delete_file $TEMP_FILE

#- 285 publicGetUserEntitlementBySku
$ sample-apps Platform publicGetUserEntitlementBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementBySku'
delete_file $TEMP_FILE

#- 286 publicExistsAnyUserActiveEntitlement
$ sample-apps Platform publicExistsAnyUserActiveEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicExistsAnyUserActiveEntitlement'
delete_file $TEMP_FILE

#- 287 publicGetUserAppEntitlementOwnershipByAppId
$ sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserAppEntitlementOwnershipByAppId'
delete_file $TEMP_FILE

#- 288 publicGetUserEntitlementOwnershipByItemId
$ sample-apps Platform publicGetUserEntitlementOwnershipByItemId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipByItemId'
delete_file $TEMP_FILE

#- 289 publicGetUserEntitlementOwnershipBySku
$ sample-apps Platform publicGetUserEntitlementOwnershipBySku -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlementOwnershipBySku'
delete_file $TEMP_FILE

#- 290 publicGetUserEntitlement
$ sample-apps Platform publicGetUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserEntitlement'
delete_file $TEMP_FILE

#- 291 publicConsumeUserEntitlement
$ sample-apps Platform publicConsumeUserEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicConsumeUserEntitlement'
delete_file $TEMP_FILE

#- 292 publicRedeemCode
$ sample-apps Platform publicRedeemCode -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicRedeemCode'
delete_file $TEMP_FILE

#- 293 publicFulfillAppleIAPItem
$ sample-apps Platform publicFulfillAppleIAPItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillAppleIAPItem'
delete_file $TEMP_FILE

#- 294 syncEpicGamesInventory
$ sample-apps Platform syncEpicGamesInventory -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncEpicGamesInventory'
delete_file $TEMP_FILE

#- 295 publicFulfillGoogleIAPItem
$ sample-apps Platform publicFulfillGoogleIAPItem -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicFulfillGoogleIAPItem'
delete_file $TEMP_FILE

#- 296 publicReconcilePlayStationStore
$ sample-apps Platform publicReconcilePlayStationStore -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicReconcilePlayStationStore'
delete_file $TEMP_FILE

#- 297 syncStadiaEntitlement
$ sample-apps Platform syncStadiaEntitlement -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncStadiaEntitlement'
delete_file $TEMP_FILE

#- 298 syncSteamInventory
$ sample-apps Platform syncSteamInventory -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncSteamInventory'
delete_file $TEMP_FILE

#- 299 syncXboxInventory
$ sample-apps Platform syncXboxInventory -h \
    >$TEMP_FILE 2>&1
update_status $? 'syncXboxInventory'
delete_file $TEMP_FILE

#- 300 publicQueryUserOrders
$ sample-apps Platform publicQueryUserOrders -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserOrders'
delete_file $TEMP_FILE

#- 301 publicCreateUserOrder
$ sample-apps Platform publicCreateUserOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCreateUserOrder'
delete_file $TEMP_FILE

#- 302 publicGetUserOrder
$ sample-apps Platform publicGetUserOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrder'
delete_file $TEMP_FILE

#- 303 publicCancelUserOrder
$ sample-apps Platform publicCancelUserOrder -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelUserOrder'
delete_file $TEMP_FILE

#- 304 publicGetUserOrderHistories
$ sample-apps Platform publicGetUserOrderHistories -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserOrderHistories'
delete_file $TEMP_FILE

#- 305 publicDownloadUserOrderReceipt
$ sample-apps Platform publicDownloadUserOrderReceipt -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDownloadUserOrderReceipt'
delete_file $TEMP_FILE

#- 306 publicGetPaymentAccounts
$ sample-apps Platform publicGetPaymentAccounts -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetPaymentAccounts'
delete_file $TEMP_FILE

#- 307 publicDeletePaymentAccount
$ sample-apps Platform publicDeletePaymentAccount -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicDeletePaymentAccount'
delete_file $TEMP_FILE

#- 308 publicQueryUserSubscriptions
$ sample-apps Platform publicQueryUserSubscriptions -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicQueryUserSubscriptions'
delete_file $TEMP_FILE

#- 309 publicSubscribeSubscription
$ sample-apps Platform publicSubscribeSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicSubscribeSubscription'
delete_file $TEMP_FILE

#- 310 publicCheckUserSubscriptionSubscribableByItemId
$ sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCheckUserSubscriptionSubscribableByItemId'
delete_file $TEMP_FILE

#- 311 publicGetUserSubscription
$ sample-apps Platform publicGetUserSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscription'
delete_file $TEMP_FILE

#- 312 publicChangeSubscriptionBillingAccount
$ sample-apps Platform publicChangeSubscriptionBillingAccount -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicChangeSubscriptionBillingAccount'
delete_file $TEMP_FILE

#- 313 publicCancelSubscription
$ sample-apps Platform publicCancelSubscription -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicCancelSubscription'
delete_file $TEMP_FILE

#- 314 publicGetUserSubscriptionBillingHistories
$ sample-apps Platform publicGetUserSubscriptionBillingHistories -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetUserSubscriptionBillingHistories'
delete_file $TEMP_FILE

#- 315 publicGetWallet
$ sample-apps Platform publicGetWallet -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicGetWallet'
delete_file $TEMP_FILE

#- 316 publicListUserWalletTransactions
$ sample-apps Platform publicListUserWalletTransactions -h \
    >$TEMP_FILE 2>&1
update_status $? 'publicListUserWalletTransactions'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT