## Go Extend SDK CLI Sample App Operation Index for Platform service.

### Operation `list_fulfillment_scripts`
```sh
$ samples/cli/sample-apps Platform listFulfillmentScripts \
    > result.txt
```

### Operation `get_fulfillment_script`
```sh
$ samples/cli/sample-apps Platform getFulfillmentScript \
    --id 'string' \
    > result.txt
```

### Operation `create_fulfillment_script`
```sh
$ samples/cli/sample-apps Platform createFulfillmentScript \
    --id 'string' \
    --body '{"grantDays": "string"}' \
    > result.txt
```

### Operation `delete_fulfillment_script`
```sh
$ samples/cli/sample-apps Platform deleteFulfillmentScript \
    --id 'string' \
    > result.txt
```

### Operation `update_fulfillment_script`
```sh
$ samples/cli/sample-apps Platform updateFulfillmentScript \
    --id 'string' \
    --body '{"grantDays": "string"}' \
    > result.txt
```

### Operation `list_item_type_configs`
```sh
$ samples/cli/sample-apps Platform listItemTypeConfigs \
    > result.txt
```

### Operation `create_item_type_config`
```sh
$ samples/cli/sample-apps Platform createItemTypeConfig \
    --body '{"clazz": "string", "dryRun": false, "fulfillmentUrl": "string", "itemType": "APP", "purchaseConditionUrl": "string"}' \
    > result.txt
```

### Operation `search_item_type_config`
```sh
$ samples/cli/sample-apps Platform searchItemTypeConfig \
    --clazz 'string' \
    --itemType 'APP' \
    > result.txt
```

### Operation `get_item_type_config`
```sh
$ samples/cli/sample-apps Platform getItemTypeConfig \
    --id 'string' \
    > result.txt
```

### Operation `update_item_type_config`
```sh
$ samples/cli/sample-apps Platform updateItemTypeConfig \
    --id 'string' \
    --body '{"clazz": "string", "dryRun": false, "fulfillmentUrl": "string", "purchaseConditionUrl": "string"}' \
    > result.txt
```

### Operation `delete_item_type_config`
```sh
$ samples/cli/sample-apps Platform deleteItemTypeConfig \
    --id 'string' \
    > result.txt
```

### Operation `query_campaigns`
```sh
$ samples/cli/sample-apps Platform queryCampaigns \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --tag 'string' \
    > result.txt
```

### Operation `create_campaign`
```sh
$ samples/cli/sample-apps Platform createCampaign \
    --namespace 'string' \
    --body '{"description": "string", "discountConfig": {}, "items": [{}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 1, "name": "string", "redeemEnd": "2000-01-01T12:34:56Z", "redeemStart": "2000-01-01T12:34:56Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["string"], "type": "REDEMPTION"}' \
    > result.txt
```

### Operation `get_campaign`
```sh
$ samples/cli/sample-apps Platform getCampaign \
    --campaignId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_campaign`
```sh
$ samples/cli/sample-apps Platform updateCampaign \
    --campaignId 'string' \
    --namespace 'string' \
    --body '{"description": "string", "discountConfig": {}, "items": [{}], "maxRedeemCountPerCampaignPerUser": 1, "maxRedeemCountPerCode": 1, "maxRedeemCountPerCodePerUser": 1, "maxSaleCount": 1, "name": "string", "redeemEnd": "2000-01-01T12:34:56Z", "redeemStart": "2000-01-01T12:34:56Z", "redeemType": "DISCOUNT", "status": "ACTIVE", "tags": ["string"]}' \
    > result.txt
```

### Operation `rename_batch`
```sh
$ samples/cli/sample-apps Platform renameBatch \
    --campaignId 'string' \
    --namespace 'string' \
    --body '{"newName": "string", "oldName": "string"}' \
    > result.txt
```

### Operation `query_campaign_batch_names`
```sh
$ samples/cli/sample-apps Platform queryCampaignBatchNames \
    --campaignId 'string' \
    --namespace 'string' \
    --batchName 'string' \
    --limit 1 \
    > result.txt
```

### Operation `get_campaign_dynamic`
```sh
$ samples/cli/sample-apps Platform getCampaignDynamic \
    --campaignId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_catalog_config`
```sh
$ samples/cli/sample-apps Platform getCatalogConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_catalog_config`
```sh
$ samples/cli/sample-apps Platform updateCatalogConfig \
    --namespace 'string' \
    --body '{"enableInventoryCheck": false, "itemDeletionCheckConfig": ["CAMPAIGN"]}' \
    > result.txt
```

### Operation `get_loot_box_plugin_config`
```sh
$ samples/cli/sample-apps Platform getLootBoxPluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_loot_box_plugin_config`
```sh
$ samples/cli/sample-apps Platform updateLootBoxPluginConfig \
    --namespace 'string' \
    --body '{"appConfig": {}, "customConfig": {}, "extendType": "APP"}' \
    > result.txt
```

### Operation `delete_loot_box_plugin_config`
```sh
$ samples/cli/sample-apps Platform deleteLootBoxPluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `uplod_loot_box_plugin_config_cert`
```sh
$ samples/cli/sample-apps Platform uplodLootBoxPluginConfigCert \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_loot_box_grpc_info`
```sh
$ samples/cli/sample-apps Platform getLootBoxGrpcInfo \
    --namespace 'string' \
    --force false \
    > result.txt
```

### Operation `get_section_plugin_config`
```sh
$ samples/cli/sample-apps Platform getSectionPluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_section_plugin_config`
```sh
$ samples/cli/sample-apps Platform updateSectionPluginConfig \
    --namespace 'string' \
    --body '{"appConfig": {}, "customConfig": {}, "extendType": "APP"}' \
    > result.txt
```

### Operation `delete_section_plugin_config`
```sh
$ samples/cli/sample-apps Platform deleteSectionPluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `upload_section_plugin_config_cert`
```sh
$ samples/cli/sample-apps Platform uploadSectionPluginConfigCert \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_root_categories`
```sh
$ samples/cli/sample-apps Platform getRootCategories \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `create_category`
```sh
$ samples/cli/sample-apps Platform createCategory \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"categoryPath": "string", "localizationDisplayNames": {"string": "string"}}' \
    > result.txt
```

### Operation `list_categories_basic`
```sh
$ samples/cli/sample-apps Platform listCategoriesBasic \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `get_category`
```sh
$ samples/cli/sample-apps Platform getCategory \
    --categoryPath 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `update_category`
```sh
$ samples/cli/sample-apps Platform updateCategory \
    --categoryPath 'string' \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"localizationDisplayNames": {"string": "string"}}' \
    > result.txt
```

### Operation `delete_category`
```sh
$ samples/cli/sample-apps Platform deleteCategory \
    --categoryPath 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `get_child_categories`
```sh
$ samples/cli/sample-apps Platform getChildCategories \
    --categoryPath 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `get_descendant_categories`
```sh
$ samples/cli/sample-apps Platform getDescendantCategories \
    --categoryPath 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `query_codes`
```sh
$ samples/cli/sample-apps Platform queryCodes \
    --campaignId 'string' \
    --namespace 'string' \
    --activeOnly false \
    --batchName 'string' \
    --batchNo '[1]' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --withBatchName false \
    > result.txt
```

### Operation `create_codes`
```sh
$ samples/cli/sample-apps Platform createCodes \
    --campaignId 'string' \
    --namespace 'string' \
    --body '{"batchName": "string", "codeValue": "string", "quantity": 1}' \
    > result.txt
```

### Operation `download`
```sh
$ samples/cli/sample-apps Platform download \
    --campaignId 'string' \
    --namespace 'string' \
    --batchName 'string' \
    --batchNo '[1]' \
    --withBatchName false \
    > result.txt
```

### Operation `bulk_disable_codes`
```sh
$ samples/cli/sample-apps Platform bulkDisableCodes \
    --campaignId 'string' \
    --namespace 'string' \
    --batchName 'string' \
    --batchNo '[1]' \
    > result.txt
```

### Operation `bulk_enable_codes`
```sh
$ samples/cli/sample-apps Platform bulkEnableCodes \
    --campaignId 'string' \
    --namespace 'string' \
    --batchName 'string' \
    --batchNo '[1]' \
    > result.txt
```

### Operation `query_redeem_history`
```sh
$ samples/cli/sample-apps Platform queryRedeemHistory \
    --campaignId 'string' \
    --namespace 'string' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --userId 'string' \
    > result.txt
```

### Operation `get_code`
```sh
$ samples/cli/sample-apps Platform getCode \
    --code 'string' \
    --namespace 'string' \
    --redeemable false \
    --withBatchName false \
    > result.txt
```

### Operation `disable_code`
```sh
$ samples/cli/sample-apps Platform disableCode \
    --code 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `enable_code`
```sh
$ samples/cli/sample-apps Platform enableCode \
    --code 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `list_currencies`
```sh
$ samples/cli/sample-apps Platform listCurrencies \
    --namespace 'string' \
    --currencyType 'REAL' \
    > result.txt
```

### Operation `create_currency`
```sh
$ samples/cli/sample-apps Platform createCurrency \
    --namespace 'string' \
    --body '{"currencyCode": "string", "currencySymbol": "string", "currencyType": "REAL", "decimals": 1, "localizationDescriptions": {"string": "string"}}' \
    > result.txt
```

### Operation `update_currency`
```sh
$ samples/cli/sample-apps Platform updateCurrency \
    --currencyCode 'string' \
    --namespace 'string' \
    --body '{"localizationDescriptions": {"string": "string"}}' \
    > result.txt
```

### Operation `delete_currency`
```sh
$ samples/cli/sample-apps Platform deleteCurrency \
    --currencyCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_currency_config`
```sh
$ samples/cli/sample-apps Platform getCurrencyConfig \
    --currencyCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_currency_summary`
```sh
$ samples/cli/sample-apps Platform getCurrencySummary \
    --currencyCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_dlc_item_config_history`
```sh
$ samples/cli/sample-apps Platform getDLCItemConfigHistory \
    --namespace 'string' \
    --dlcId 'string' \
    > result.txt
```

### Operation `restore_dlc_item_config_history`
```sh
$ samples/cli/sample-apps Platform restoreDLCItemConfigHistory \
    --id 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_dlc_item_config`
```sh
$ samples/cli/sample-apps Platform getDLCItemConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_dlc_item_config`
```sh
$ samples/cli/sample-apps Platform updateDLCItemConfig \
    --namespace 'string' \
    --body '{"data": [{}]}' \
    > result.txt
```

### Operation `delete_dlc_item_config`
```sh
$ samples/cli/sample-apps Platform deleteDLCItemConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `get_platform_dlc_config`
```sh
$ samples/cli/sample-apps Platform getPlatformDLCConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_platform_dlc_config`
```sh
$ samples/cli/sample-apps Platform updatePlatformDLCConfig \
    --namespace 'string' \
    --body '{"data": [{}]}' \
    > result.txt
```

### Operation `delete_platform_dlc_config`
```sh
$ samples/cli/sample-apps Platform deletePlatformDLCConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `query_entitlements`
```sh
$ samples/cli/sample-apps Platform queryEntitlements \
    --namespace 'string' \
    --activeOnly false \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'string' \
    --itemId '["string"]' \
    --limit 1 \
    --offset 1 \
    --origin 'Epic' \
    --userId 'string' \
    > result.txt
```

### Operation `query_entitlements_by_item_ids`
```sh
$ samples/cli/sample-apps Platform queryEntitlementsByItemIds \
    --namespace 'string' \
    --activeOnly false \
    --itemIds '["string"]' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `enable_entitlement_origin_feature`
```sh
$ samples/cli/sample-apps Platform enableEntitlementOriginFeature \
    --namespace 'string' \
    > result.txt
```

### Operation `get_entitlement_config_info`
```sh
$ samples/cli/sample-apps Platform getEntitlementConfigInfo \
    --namespace 'string' \
    --withoutCache false \
    > result.txt
```

### Operation `grant_entitlements`
```sh
$ samples/cli/sample-apps Platform grantEntitlements \
    --namespace 'string' \
    --body '{"entitlementGrantList": [{}], "userIds": ["string"]}' \
    > result.txt
```

### Operation `revoke_entitlements`
```sh
$ samples/cli/sample-apps Platform revokeEntitlements \
    --namespace 'string' \
    --body '["string"]' \
    > result.txt
```

### Operation `get_entitlement`
```sh
$ samples/cli/sample-apps Platform getEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `query_fulfillment_histories`
```sh
$ samples/cli/sample-apps Platform queryFulfillmentHistories \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --status 'FAIL' \
    --userId 'string' \
    > result.txt
```

### Operation `query_iap_clawback_history`
```sh
$ samples/cli/sample-apps Platform queryIAPClawbackHistory \
    --namespace 'string' \
    --endTime 'string' \
    --eventType 'CHARGEBACK' \
    --externalOrderId 'string' \
    --limit 1 \
    --offset 1 \
    --startTime 'string' \
    --status 'FAIL' \
    --userId 'string' \
    > result.txt
```

### Operation `mock_play_station_stream_event`
```sh
$ samples/cli/sample-apps Platform mockPlayStationStreamEvent \
    --namespace 'string' \
    --body '{"body": {}, "eventDomain": "string", "eventSource": "string", "eventType": "string", "eventVersion": 1, "id": "string", "timestamp": "string"}' \
    > result.txt
```

### Operation `mock_xbl_clawback_event`
```sh
$ samples/cli/sample-apps Platform mockXblClawbackEvent \
    --namespace 'string' \
    --body '{"data": {}, "datacontenttype": "string", "id": "string", "source": "string", "specVersion": "string", "subject": "string", "time": "string", "traceparent": "string", "type": "string"}' \
    > result.txt
```

### Operation `get_apple_iap_config`
```sh
$ samples/cli/sample-apps Platform getAppleIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_apple_iap_config`
```sh
$ samples/cli/sample-apps Platform updateAppleIAPConfig \
    --namespace 'string' \
    --body '{"appAppleId": 1, "bundleId": "string", "issuerId": "string", "keyId": "string", "password": "string", "version": "V1"}' \
    > result.txt
```

### Operation `delete_apple_iap_config`
```sh
$ samples/cli/sample-apps Platform deleteAppleIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_apple_p8_file`
```sh
$ samples/cli/sample-apps Platform updateAppleP8File \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_epic_games_iap_config`
```sh
$ samples/cli/sample-apps Platform getEpicGamesIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_epic_games_iap_config`
```sh
$ samples/cli/sample-apps Platform updateEpicGamesIAPConfig \
    --namespace 'string' \
    --body '{"sandboxId": "string"}' \
    > result.txt
```

### Operation `delete_epic_games_iap_config`
```sh
$ samples/cli/sample-apps Platform deleteEpicGamesIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `get_google_iap_config`
```sh
$ samples/cli/sample-apps Platform getGoogleIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_google_iap_config`
```sh
$ samples/cli/sample-apps Platform updateGoogleIAPConfig \
    --namespace 'string' \
    --body '{"applicationName": "string", "notificationTokenAudience": "string", "notificationTokenEmail": "string", "packageName": "string", "serviceAccountId": "string"}' \
    > result.txt
```

### Operation `delete_google_iap_config`
```sh
$ samples/cli/sample-apps Platform deleteGoogleIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_google_p12_file`
```sh
$ samples/cli/sample-apps Platform updateGoogleP12File \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_iap_item_config`
```sh
$ samples/cli/sample-apps Platform getIAPItemConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_iap_item_config`
```sh
$ samples/cli/sample-apps Platform updateIAPItemConfig \
    --namespace 'string' \
    --body '{"data": [{}]}' \
    > result.txt
```

### Operation `delete_iap_item_config`
```sh
$ samples/cli/sample-apps Platform deleteIAPItemConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `get_oculus_iap_config`
```sh
$ samples/cli/sample-apps Platform getOculusIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_oculus_iap_config`
```sh
$ samples/cli/sample-apps Platform updateOculusIAPConfig \
    --namespace 'string' \
    --body '{"appId": "string", "appSecret": "string", "webhookVerifyToken": "string"}' \
    > result.txt
```

### Operation `delete_oculus_iap_config`
```sh
$ samples/cli/sample-apps Platform deleteOculusIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `list_oculus_subscription_groups`
```sh
$ samples/cli/sample-apps Platform listOculusSubscriptionGroups \
    --namespace 'string' \
    > result.txt
```

### Operation `create_oculus_subscription_group`
```sh
$ samples/cli/sample-apps Platform createOculusSubscriptionGroup \
    --namespace 'string' \
    --body '{"sku": "string"}' \
    > result.txt
```

### Operation `delete_oculus_subscription_group`
```sh
$ samples/cli/sample-apps Platform deleteOculusSubscriptionGroup \
    --namespace 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `list_oculus_subscription_group_tier`
```sh
$ samples/cli/sample-apps Platform listOculusSubscriptionGroupTier \
    --namespace 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `add_tier_into_meta_quest_subscription_group`
```sh
$ samples/cli/sample-apps Platform addTierIntoMetaQuestSubscriptionGroup \
    --namespace 'string' \
    --body '{"groupSku": "string", "sku": "string"}' \
    > result.txt
```

### Operation `delete_oculus_subscription_tier`
```sh
$ samples/cli/sample-apps Platform deleteOculusSubscriptionTier \
    --namespace 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `get_play_station_iap_config`
```sh
$ samples/cli/sample-apps Platform getPlayStationIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_playstation_iap_config`
```sh
$ samples/cli/sample-apps Platform updatePlaystationIAPConfig \
    --namespace 'string' \
    --body '{"backOfficeServerClientId": "string", "backOfficeServerClientSecret": "string", "enableStreamJob": false, "environment": "string", "streamName": "string", "streamPartnerName": "string"}' \
    > result.txt
```

### Operation `delete_playstation_iap_config`
```sh
$ samples/cli/sample-apps Platform deletePlaystationIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `validate_existed_playstation_iap_config`
```sh
$ samples/cli/sample-apps Platform validateExistedPlaystationIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `validate_playstation_iap_config`
```sh
$ samples/cli/sample-apps Platform validatePlaystationIAPConfig \
    --namespace 'string' \
    --body '{"backOfficeServerClientId": "string", "backOfficeServerClientSecret": "string", "enableStreamJob": false, "environment": "string", "streamName": "string", "streamPartnerName": "string"}' \
    > result.txt
```

### Operation `get_steam_iap_config`
```sh
$ samples/cli/sample-apps Platform getSteamIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_steam_iap_config`
```sh
$ samples/cli/sample-apps Platform updateSteamIAPConfig \
    --namespace 'string' \
    --body '{"appId": "string", "env": "LIVE", "publisherAuthenticationKey": "string", "syncMode": "INVENTORY"}' \
    > result.txt
```

### Operation `delete_steam_iap_config`
```sh
$ samples/cli/sample-apps Platform deleteSteamIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `get_twitch_iap_config`
```sh
$ samples/cli/sample-apps Platform getTwitchIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_twitch_iap_config`
```sh
$ samples/cli/sample-apps Platform updateTwitchIAPConfig \
    --namespace 'string' \
    --body '{"clientId": "string", "clientSecret": "string", "organizationId": "string"}' \
    > result.txt
```

### Operation `delete_twitch_iap_config`
```sh
$ samples/cli/sample-apps Platform deleteTwitchIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `get_xbl_iap_config`
```sh
$ samples/cli/sample-apps Platform getXblIAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_xbl_iap_config`
```sh
$ samples/cli/sample-apps Platform updateXblIAPConfig \
    --namespace 'string' \
    --body '{"enableClawback": false, "entraAppClientId": "string", "entraAppClientSecret": "string", "entraTenantId": "string", "relyingPartyCert": "string"}' \
    > result.txt
```

### Operation `delete_xbl_ap_config`
```sh
$ samples/cli/sample-apps Platform deleteXblAPConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_xbl_bp_cert_file`
```sh
$ samples/cli/sample-apps Platform updateXblBPCertFile \
    --namespace 'string' \
    --file 'tmp.dat' \
    --password 'string' \
    > result.txt
```

### Operation `query_third_party_notifications`
```sh
$ samples/cli/sample-apps Platform queryThirdPartyNotifications \
    --namespace 'string' \
    --endDate 'string' \
    --externalId 'string' \
    --limit 1 \
    --offset 1 \
    --source 'APPLE' \
    --startDate 'string' \
    --status 'ERROR' \
    --type 'string' \
    > result.txt
```

### Operation `query_abnormal_transactions`
```sh
$ samples/cli/sample-apps Platform queryAbnormalTransactions \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --orderId 'string' \
    --steamId 'string' \
    > result.txt
```

### Operation `admin_get_steam_job_info`
```sh
$ samples/cli/sample-apps Platform adminGetSteamJobInfo \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_reset_steam_job_time`
```sh
$ samples/cli/sample-apps Platform adminResetSteamJobTime \
    --namespace 'string' \
    --body '{"env": "LIVE", "lastTime": "2000-01-01T12:34:56Z"}' \
    > result.txt
```

### Operation `admin_refund_iap_order`
```sh
$ samples/cli/sample-apps Platform adminRefundIAPOrder \
    --iapOrderNo 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `query_steam_report_histories`
```sh
$ samples/cli/sample-apps Platform querySteamReportHistories \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --orderId 'string' \
    --processStatus 'ERROR' \
    --steamId 'string' \
    > result.txt
```

### Operation `query_third_party_subscription`
```sh
$ samples/cli/sample-apps Platform queryThirdPartySubscription \
    --namespace 'string' \
    --activeOnly false \
    --groupId 'string' \
    --limit 1 \
    --offset 1 \
    --platform 'APPLE' \
    --productId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_iap_order_consume_details`
```sh
$ samples/cli/sample-apps Platform getIAPOrderConsumeDetails \
    --iapOrderNo 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `download_invoice_details`
```sh
$ samples/cli/sample-apps Platform downloadInvoiceDetails \
    --namespace 'string' \
    --endTime 'string' \
    --feature 'string' \
    --itemId 'string' \
    --itemType 'APP' \
    --startTime 'string' \
    > result.txt
```

### Operation `generate_invoice_summary`
```sh
$ samples/cli/sample-apps Platform generateInvoiceSummary \
    --namespace 'string' \
    --endTime 'string' \
    --feature 'string' \
    --itemId 'string' \
    --itemType 'APP' \
    --startTime 'string' \
    > result.txt
```

### Operation `sync_in_game_item`
```sh
$ samples/cli/sample-apps Platform syncInGameItem \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"categoryPath": "string", "targetItemId": "string", "targetNamespace": "string"}' \
    > result.txt
```

### Operation `create_item`
```sh
$ samples/cli/sample-apps Platform createItem \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"appId": "string", "appType": "DEMO", "baseAppId": "string", "boothName": "string", "categoryPath": "string", "clazz": "string", "displayOrder": 1, "entitlementType": "CONSUMABLE", "ext": {"string": {}}, "features": ["string"], "flexible": false, "images": [{}], "inventoryConfig": {}, "itemId": "string", "itemIds": ["string"], "itemQty": {"string": 1}, "itemType": "APP", "listable": false, "localizations": {"string": {}}, "lootBoxConfig": {}, "maxCount": 1, "maxCountPerUser": 1, "name": "string", "optionBoxConfig": {}, "purchasable": false, "recurring": {}, "regionData": {"string": []}, "saleConfig": {}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "string", "stackable": false, "status": "ACTIVE", "tags": ["string"], "targetCurrencyCode": "string", "targetNamespace": "string", "thumbnailUrl": "string", "useCount": 1}' \
    > result.txt
```

### Operation `get_item_by_app_id`
```sh
$ samples/cli/sample-apps Platform getItemByAppId \
    --namespace 'string' \
    --activeOnly false \
    --storeId 'string' \
    --appId 'string' \
    > result.txt
```

### Operation `query_items`
```sh
$ samples/cli/sample-apps Platform queryItems \
    --namespace 'string' \
    --activeOnly false \
    --appType 'DEMO' \
    --availableDate 'string' \
    --baseAppId 'string' \
    --categoryPath 'string' \
    --features 'string' \
    --includeSubCategoryItem false \
    --itemType 'APP' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --sortBy '["name"]' \
    --storeId 'string' \
    --tags 'string' \
    --targetNamespace 'string' \
    > result.txt
```

### Operation `list_basic_items_by_features`
```sh
$ samples/cli/sample-apps Platform listBasicItemsByFeatures \
    --namespace 'string' \
    --activeOnly false \
    --features '["string"]' \
    > result.txt
```

### Operation `get_items`
```sh
$ samples/cli/sample-apps Platform getItems \
    --namespace 'string' \
    --activeOnly false \
    --storeId 'string' \
    --itemIds 'string' \
    > result.txt
```

### Operation `get_item_by_sku`
```sh
$ samples/cli/sample-apps Platform getItemBySku \
    --namespace 'string' \
    --activeOnly false \
    --storeId 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `get_locale_item_by_sku`
```sh
$ samples/cli/sample-apps Platform getLocaleItemBySku \
    --namespace 'string' \
    --activeOnly false \
    --language 'string' \
    --populateBundle false \
    --region 'string' \
    --storeId 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `get_estimated_price`
```sh
$ samples/cli/sample-apps Platform getEstimatedPrice \
    --namespace 'string' \
    --platform 'string' \
    --region 'string' \
    --storeId 'string' \
    --itemIds 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_item_id_by_sku`
```sh
$ samples/cli/sample-apps Platform getItemIdBySku \
    --namespace 'string' \
    --activeOnly false \
    --storeId 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `get_bulk_item_id_by_skus`
```sh
$ samples/cli/sample-apps Platform getBulkItemIdBySkus \
    --namespace 'string' \
    --sku '["string"]' \
    --storeId 'string' \
    > result.txt
```

### Operation `bulk_get_locale_items`
```sh
$ samples/cli/sample-apps Platform bulkGetLocaleItems \
    --namespace 'string' \
    --activeOnly false \
    --language 'string' \
    --region 'string' \
    --storeId 'string' \
    --itemIds 'string' \
    > result.txt
```

### Operation `get_available_predicate_types`
```sh
$ samples/cli/sample-apps Platform getAvailablePredicateTypes \
    --namespace 'string' \
    > result.txt
```

### Operation `validate_item_purchase_condition`
```sh
$ samples/cli/sample-apps Platform validateItemPurchaseCondition \
    --namespace 'string' \
    --platform 'string' \
    --userId 'string' \
    --body '{"itemIds": ["string"]}' \
    > result.txt
```

### Operation `bulk_update_region_data`
```sh
$ samples/cli/sample-apps Platform bulkUpdateRegionData \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"changes": [{}]}' \
    > result.txt
```

### Operation `search_items`
```sh
$ samples/cli/sample-apps Platform searchItems \
    --namespace 'string' \
    --activeOnly false \
    --itemType 'APP' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --storeId 'string' \
    --keyword 'string' \
    --language 'string' \
    > result.txt
```

### Operation `query_uncategorized_items`
```sh
$ samples/cli/sample-apps Platform queryUncategorizedItems \
    --namespace 'string' \
    --activeOnly false \
    --limit 1 \
    --offset 1 \
    --sortBy '["name"]' \
    --storeId 'string' \
    > result.txt
```

### Operation `get_item`
```sh
$ samples/cli/sample-apps Platform getItem \
    --itemId 'string' \
    --namespace 'string' \
    --activeOnly false \
    --storeId 'string' \
    > result.txt
```

### Operation `update_item`
```sh
$ samples/cli/sample-apps Platform updateItem \
    --itemId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"appId": "string", "appType": "DEMO", "baseAppId": "string", "boothName": "string", "categoryPath": "string", "clazz": "string", "displayOrder": 1, "entitlementType": "CONSUMABLE", "ext": {"string": {}}, "features": ["string"], "flexible": false, "images": [{}], "inventoryConfig": {}, "itemIds": ["string"], "itemQty": {"string": 1}, "itemType": "APP", "listable": false, "localizations": {"string": {}}, "lootBoxConfig": {}, "maxCount": 1, "maxCountPerUser": 1, "name": "string", "optionBoxConfig": {}, "purchasable": false, "recurring": {}, "regionData": {"string": []}, "saleConfig": {}, "seasonType": "PASS", "sectionExclusive": false, "sellable": false, "sku": "string", "stackable": false, "status": "ACTIVE", "tags": ["string"], "targetCurrencyCode": "string", "targetNamespace": "string", "thumbnailUrl": "string", "useCount": 1}' \
    > result.txt
```

### Operation `delete_item`
```sh
$ samples/cli/sample-apps Platform deleteItem \
    --itemId 'string' \
    --namespace 'string' \
    --featuresToCheck '["CAMPAIGN"]' \
    --force false \
    --storeId 'string' \
    > result.txt
```

### Operation `acquire_item`
```sh
$ samples/cli/sample-apps Platform acquireItem \
    --itemId 'string' \
    --namespace 'string' \
    --body '{"count": 1, "orderNo": "string"}' \
    > result.txt
```

### Operation `get_app`
```sh
$ samples/cli/sample-apps Platform getApp \
    --itemId 'string' \
    --namespace 'string' \
    --activeOnly false \
    --storeId 'string' \
    > result.txt
```

### Operation `update_app`
```sh
$ samples/cli/sample-apps Platform updateApp \
    --itemId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"carousel": [{}], "developer": "string", "forumUrl": "string", "genres": ["Action"], "localizations": {"string": {}}, "platformRequirements": {"string": []}, "platforms": ["Android"], "players": ["Coop"], "primaryGenre": "Action", "publisher": "string", "releaseDate": "2000-01-01T12:34:56Z", "websiteUrl": "string"}' \
    > result.txt
```

### Operation `disable_item`
```sh
$ samples/cli/sample-apps Platform disableItem \
    --itemId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"featuresToCheck": ["CAMPAIGN"]}' \
    > result.txt
```

### Operation `get_item_dynamic_data`
```sh
$ samples/cli/sample-apps Platform getItemDynamicData \
    --itemId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `enable_item`
```sh
$ samples/cli/sample-apps Platform enableItem \
    --itemId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `feature_item`
```sh
$ samples/cli/sample-apps Platform featureItem \
    --feature 'string' \
    --itemId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `defeature_item`
```sh
$ samples/cli/sample-apps Platform defeatureItem \
    --feature 'string' \
    --itemId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `get_locale_item`
```sh
$ samples/cli/sample-apps Platform getLocaleItem \
    --itemId 'string' \
    --namespace 'string' \
    --activeOnly false \
    --language 'string' \
    --populateBundle false \
    --region 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `update_item_purchase_condition`
```sh
$ samples/cli/sample-apps Platform updateItemPurchaseCondition \
    --itemId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"purchaseCondition": {}}' \
    > result.txt
```

### Operation `query_item_references`
```sh
$ samples/cli/sample-apps Platform queryItemReferences \
    --itemId 'string' \
    --namespace 'string' \
    --featuresToCheck '["CAMPAIGN"]' \
    --storeId 'string' \
    > result.txt
```

### Operation `return_item`
```sh
$ samples/cli/sample-apps Platform returnItem \
    --itemId 'string' \
    --namespace 'string' \
    --body '{"orderNo": "string"}' \
    > result.txt
```

### Operation `query_key_groups`
```sh
$ samples/cli/sample-apps Platform queryKeyGroups \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --tag 'string' \
    > result.txt
```

### Operation `create_key_group`
```sh
$ samples/cli/sample-apps Platform createKeyGroup \
    --namespace 'string' \
    --body '{"description": "string", "name": "string", "status": "ACTIVE", "tags": ["string"]}' \
    > result.txt
```

### Operation `get_key_group`
```sh
$ samples/cli/sample-apps Platform getKeyGroup \
    --keyGroupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_key_group`
```sh
$ samples/cli/sample-apps Platform updateKeyGroup \
    --keyGroupId 'string' \
    --namespace 'string' \
    --body '{"description": "string", "name": "string", "status": "ACTIVE", "tags": ["string"]}' \
    > result.txt
```

### Operation `get_key_group_dynamic`
```sh
$ samples/cli/sample-apps Platform getKeyGroupDynamic \
    --keyGroupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `list_keys`
```sh
$ samples/cli/sample-apps Platform listKeys \
    --keyGroupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --status 'ACQUIRED' \
    > result.txt
```

### Operation `upload_keys`
```sh
$ samples/cli/sample-apps Platform uploadKeys \
    --keyGroupId 'string' \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `query_orders`
```sh
$ samples/cli/sample-apps Platform queryOrders \
    --namespace 'string' \
    --endTime 'string' \
    --limit 1 \
    --offset 1 \
    --orderNos '["string"]' \
    --sortBy 'string' \
    --startTime 'string' \
    --status 'CHARGEBACK' \
    --withTotal false \
    > result.txt
```

### Operation `get_order_statistics`
```sh
$ samples/cli/sample-apps Platform getOrderStatistics \
    --namespace 'string' \
    > result.txt
```

### Operation `get_order`
```sh
$ samples/cli/sample-apps Platform getOrder \
    --namespace 'string' \
    --orderNo 'string' \
    > result.txt
```

### Operation `refund_order`
```sh
$ samples/cli/sample-apps Platform refundOrder \
    --namespace 'string' \
    --orderNo 'string' \
    --body '{"description": "string"}' \
    > result.txt
```

### Operation `get_payment_merchant_config`
```sh
$ samples/cli/sample-apps Platform getPaymentMerchantConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_payment_domain_whitelist_config`
```sh
$ samples/cli/sample-apps Platform updatePaymentDomainWhitelistConfig \
    --namespace 'string' \
    --body '{"domains": ["string"]}' \
    > result.txt
```

### Operation `query_payment_notifications`
```sh
$ samples/cli/sample-apps Platform queryPaymentNotifications \
    --namespace 'string' \
    --endDate 'string' \
    --externalId 'string' \
    --limit 1 \
    --notificationSource 'ADYEN' \
    --notificationType 'string' \
    --offset 1 \
    --paymentOrderNo 'string' \
    --startDate 'string' \
    --status 'ERROR' \
    > result.txt
```

### Operation `query_payment_orders`
```sh
$ samples/cli/sample-apps Platform queryPaymentOrders \
    --namespace 'string' \
    --channel 'EXTERNAL' \
    --extTxId 'string' \
    --limit 1 \
    --offset 1 \
    --status 'AUTHORISED' \
    > result.txt
```

### Operation `create_payment_order_by_dedicated`
```sh
$ samples/cli/sample-apps Platform createPaymentOrderByDedicated \
    --namespace 'string' \
    --body '{"currencyCode": "string", "currencyNamespace": "string", "customParameters": {"string": {}}, "description": "string", "extOrderNo": "string", "extUserId": "string", "itemType": "APP", "language": "string", "metadata": {"string": "string"}, "notifyUrl": "string", "omitNotification": false, "platform": "string", "price": 1, "recurringPaymentOrderNo": "string", "region": "string", "returnUrl": "string", "sandbox": false, "sku": "string", "subscriptionId": "string", "targetNamespace": "string", "targetUserId": "string", "title": "string"}' \
    > result.txt
```

### Operation `list_ext_order_no_by_ext_tx_id`
```sh
$ samples/cli/sample-apps Platform listExtOrderNoByExtTxId \
    --namespace 'string' \
    --extTxId 'string' \
    > result.txt
```

### Operation `get_payment_order`
```sh
$ samples/cli/sample-apps Platform getPaymentOrder \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    > result.txt
```

### Operation `charge_payment_order`
```sh
$ samples/cli/sample-apps Platform chargePaymentOrder \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    --body '{"extTxId": "string", "paymentMethod": "string", "paymentProvider": "ADYEN"}' \
    > result.txt
```

### Operation `refund_payment_order_by_dedicated`
```sh
$ samples/cli/sample-apps Platform refundPaymentOrderByDedicated \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    --body '{"description": "string"}' \
    > result.txt
```

### Operation `simulate_payment_order_notification`
```sh
$ samples/cli/sample-apps Platform simulatePaymentOrderNotification \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    --body '{"amount": 1, "currencyCode": "string", "notifyType": "CHARGE", "paymentProvider": "ADYEN", "salesTax": 1, "vat": 1}' \
    > result.txt
```

### Operation `get_payment_order_charge_status`
```sh
$ samples/cli/sample-apps Platform getPaymentOrderChargeStatus \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    > result.txt
```

### Operation `get_psn_entitlement_ownership`
```sh
$ samples/cli/sample-apps Platform getPsnEntitlementOwnership \
    --entitlementLabel 'string' \
    --namespace 'string' \
    --body '{"accessToken": "string", "serviceLabel": 1}' \
    > result.txt
```

### Operation `get_xbox_entitlement_ownership`
```sh
$ samples/cli/sample-apps Platform getXboxEntitlementOwnership \
    --namespace 'string' \
    --productSku 'string' \
    --body '{"delegationToken": "string", "sandboxId": "string"}' \
    > result.txt
```

### Operation `get_platform_entitlement_config`
```sh
$ samples/cli/sample-apps Platform getPlatformEntitlementConfig \
    --namespace 'string' \
    --platform 'Epic' \
    > result.txt
```

### Operation `update_platform_entitlement_config`
```sh
$ samples/cli/sample-apps Platform updatePlatformEntitlementConfig \
    --namespace 'string' \
    --platform 'Epic' \
    --body '{"allowedPlatformOrigins": ["Epic"]}' \
    > result.txt
```

### Operation `get_platform_wallet_config`
```sh
$ samples/cli/sample-apps Platform getPlatformWalletConfig \
    --namespace 'string' \
    --platform 'Epic' \
    > result.txt
```

### Operation `update_platform_wallet_config`
```sh
$ samples/cli/sample-apps Platform updatePlatformWalletConfig \
    --namespace 'string' \
    --platform 'Epic' \
    --body '{"allowedBalanceOrigins": ["Epic"]}' \
    > result.txt
```

### Operation `reset_platform_wallet_config`
```sh
$ samples/cli/sample-apps Platform resetPlatformWalletConfig \
    --namespace 'string' \
    --platform 'Epic' \
    > result.txt
```

### Operation `get_revocation_config`
```sh
$ samples/cli/sample-apps Platform getRevocationConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_revocation_config`
```sh
$ samples/cli/sample-apps Platform updateRevocationConfig \
    --namespace 'string' \
    --body '{"entitlement": {}, "wallet": {}}' \
    > result.txt
```

### Operation `delete_revocation_config`
```sh
$ samples/cli/sample-apps Platform deleteRevocationConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `query_revocation_histories`
```sh
$ samples/cli/sample-apps Platform queryRevocationHistories \
    --namespace 'string' \
    --endTime 'string' \
    --limit 1 \
    --offset 1 \
    --source 'DLC' \
    --startTime 'string' \
    --status 'FAIL' \
    --transactionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_revocation_plugin_config`
```sh
$ samples/cli/sample-apps Platform getRevocationPluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_revocation_plugin_config`
```sh
$ samples/cli/sample-apps Platform updateRevocationPluginConfig \
    --namespace 'string' \
    --body '{"appConfig": {}, "customConfig": {}, "extendType": "APP"}' \
    > result.txt
```

### Operation `delete_revocation_plugin_config`
```sh
$ samples/cli/sample-apps Platform deleteRevocationPluginConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `upload_revocation_plugin_config_cert`
```sh
$ samples/cli/sample-apps Platform uploadRevocationPluginConfigCert \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `create_reward`
```sh
$ samples/cli/sample-apps Platform createReward \
    --namespace 'string' \
    --body '{"description": "string", "eventTopic": "string", "maxAwarded": 1, "maxAwardedPerUser": 1, "namespaceExpression": "string", "rewardCode": "string", "rewardConditions": [{}], "userIdExpression": "string"}' \
    > result.txt
```

### Operation `query_rewards`
```sh
$ samples/cli/sample-apps Platform queryRewards \
    --namespace 'string' \
    --eventTopic 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy '["namespace"]' \
    > result.txt
```

### Operation `export_rewards`
```sh
$ samples/cli/sample-apps Platform exportRewards \
    --namespace 'string' \
    > result.txt
```

### Operation `import_rewards`
```sh
$ samples/cli/sample-apps Platform importRewards \
    --namespace 'string' \
    --replaceExisting false \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_reward`
```sh
$ samples/cli/sample-apps Platform getReward \
    --namespace 'string' \
    --rewardId 'string' \
    > result.txt
```

### Operation `update_reward`
```sh
$ samples/cli/sample-apps Platform updateReward \
    --namespace 'string' \
    --rewardId 'string' \
    --body '{"description": "string", "eventTopic": "string", "maxAwarded": 1, "maxAwardedPerUser": 1, "namespaceExpression": "string", "rewardCode": "string", "rewardConditions": [{}], "userIdExpression": "string"}' \
    > result.txt
```

### Operation `delete_reward`
```sh
$ samples/cli/sample-apps Platform deleteReward \
    --namespace 'string' \
    --rewardId 'string' \
    > result.txt
```

### Operation `check_event_condition`
```sh
$ samples/cli/sample-apps Platform checkEventCondition \
    --namespace 'string' \
    --rewardId 'string' \
    --body '{"payload": {"string": {}}}' \
    > result.txt
```

### Operation `delete_reward_condition_record`
```sh
$ samples/cli/sample-apps Platform deleteRewardConditionRecord \
    --namespace 'string' \
    --rewardId 'string' \
    --body '{"conditionName": "string", "userId": "string"}' \
    > result.txt
```

### Operation `query_sections`
```sh
$ samples/cli/sample-apps Platform querySections \
    --namespace 'string' \
    --end 'string' \
    --limit 1 \
    --offset 1 \
    --start 'string' \
    --storeId 'string' \
    --viewId 'string' \
    > result.txt
```

### Operation `create_section`
```sh
$ samples/cli/sample-apps Platform createSection \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"active": false, "displayOrder": 1, "endDate": "2000-01-01T12:34:56Z", "ext": {"string": {}}, "fixedPeriodRotationConfig": {}, "items": [{}], "localizations": {"string": {}}, "name": "string", "rotationType": "CUSTOM", "startDate": "2000-01-01T12:34:56Z", "viewId": "string"}' \
    > result.txt
```

### Operation `purge_expired_section`
```sh
$ samples/cli/sample-apps Platform purgeExpiredSection \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `get_section`
```sh
$ samples/cli/sample-apps Platform getSection \
    --namespace 'string' \
    --sectionId 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `update_section`
```sh
$ samples/cli/sample-apps Platform updateSection \
    --namespace 'string' \
    --sectionId 'string' \
    --storeId 'string' \
    --body '{"active": false, "displayOrder": 1, "endDate": "2000-01-01T12:34:56Z", "ext": {"string": {}}, "fixedPeriodRotationConfig": {}, "items": [{}], "localizations": {"string": {}}, "name": "string", "rotationType": "CUSTOM", "startDate": "2000-01-01T12:34:56Z", "viewId": "string"}' \
    > result.txt
```

### Operation `delete_section`
```sh
$ samples/cli/sample-apps Platform deleteSection \
    --namespace 'string' \
    --sectionId 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `list_stores`
```sh
$ samples/cli/sample-apps Platform listStores \
    --namespace 'string' \
    > result.txt
```

### Operation `create_store`
```sh
$ samples/cli/sample-apps Platform createStore \
    --namespace 'string' \
    --body '{"defaultLanguage": "string", "defaultRegion": "string", "description": "string", "supportedLanguages": ["string"], "supportedRegions": ["string"], "title": "string"}' \
    > result.txt
```

### Operation `get_catalog_definition`
```sh
$ samples/cli/sample-apps Platform getCatalogDefinition \
    --namespace 'string' \
    --catalogType 'APP' \
    > result.txt
```

### Operation `download_csv_templates`
```sh
$ samples/cli/sample-apps Platform downloadCSVTemplates \
    --namespace 'string' \
    > result.txt
```

### Operation `export_store_by_csv`
```sh
$ samples/cli/sample-apps Platform exportStoreByCSV \
    --namespace 'string' \
    --body '{"catalogType": "APP", "fieldsToBeIncluded": ["string"], "idsToBeExported": ["string"], "storeId": "string"}' \
    > result.txt
```

### Operation `get_published_store`
```sh
$ samples/cli/sample-apps Platform getPublishedStore \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_published_store`
```sh
$ samples/cli/sample-apps Platform deletePublishedStore \
    --namespace 'string' \
    > result.txt
```

### Operation `get_published_store_backup`
```sh
$ samples/cli/sample-apps Platform getPublishedStoreBackup \
    --namespace 'string' \
    > result.txt
```

### Operation `rollback_published_store`
```sh
$ samples/cli/sample-apps Platform rollbackPublishedStore \
    --namespace 'string' \
    > result.txt
```

### Operation `get_store`
```sh
$ samples/cli/sample-apps Platform getStore \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `update_store`
```sh
$ samples/cli/sample-apps Platform updateStore \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"defaultLanguage": "string", "defaultRegion": "string", "description": "string", "supportedLanguages": ["string"], "supportedRegions": ["string"], "title": "string"}' \
    > result.txt
```

### Operation `delete_store`
```sh
$ samples/cli/sample-apps Platform deleteStore \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `query_changes`
```sh
$ samples/cli/sample-apps Platform queryChanges \
    --namespace 'string' \
    --storeId 'string' \
    --action 'CREATE' \
    --itemSku 'string' \
    --itemType 'APP' \
    --limit 1 \
    --offset 1 \
    --selected false \
    --sortBy '["createdAt"]' \
    --status 'PUBLISHED' \
    --type 'CATEGORY' \
    --updatedAtEnd 'string' \
    --updatedAtStart 'string' \
    --withTotal false \
    > result.txt
```

### Operation `publish_all`
```sh
$ samples/cli/sample-apps Platform publishAll \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `publish_selected`
```sh
$ samples/cli/sample-apps Platform publishSelected \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `select_all_records`
```sh
$ samples/cli/sample-apps Platform selectAllRecords \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `select_all_records_by_criteria`
```sh
$ samples/cli/sample-apps Platform selectAllRecordsByCriteria \
    --namespace 'string' \
    --storeId 'string' \
    --action 'CREATE' \
    --itemSku 'string' \
    --itemType 'APP' \
    --selected false \
    --type 'CATEGORY' \
    --updatedAtEnd 'string' \
    --updatedAtStart 'string' \
    > result.txt
```

### Operation `get_statistic`
```sh
$ samples/cli/sample-apps Platform getStatistic \
    --namespace 'string' \
    --storeId 'string' \
    --action 'CREATE' \
    --itemSku 'string' \
    --itemType 'APP' \
    --type 'CATEGORY' \
    --updatedAtEnd 'string' \
    --updatedAtStart 'string' \
    > result.txt
```

### Operation `unselect_all_records`
```sh
$ samples/cli/sample-apps Platform unselectAllRecords \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `select_record`
```sh
$ samples/cli/sample-apps Platform selectRecord \
    --changeId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `unselect_record`
```sh
$ samples/cli/sample-apps Platform unselectRecord \
    --changeId 'string' \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `clone_store`
```sh
$ samples/cli/sample-apps Platform cloneStore \
    --namespace 'string' \
    --storeId 'string' \
    --targetStoreId 'string' \
    > result.txt
```

### Operation `query_import_history`
```sh
$ samples/cli/sample-apps Platform queryImportHistory \
    --namespace 'string' \
    --storeId 'string' \
    --end 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --start 'string' \
    --success false \
    > result.txt
```

### Operation `import_store_by_csv`
```sh
$ samples/cli/sample-apps Platform importStoreByCSV \
    --namespace 'string' \
    --storeId 'string' \
    --category 'tmp.dat' \
    --display 'tmp.dat' \
    --item 'tmp.dat' \
    --notes 'string' \
    --section 'tmp.dat' \
    > result.txt
```

### Operation `query_subscriptions`
```sh
$ samples/cli/sample-apps Platform querySubscriptions \
    --namespace 'string' \
    --chargeStatus 'CHARGED' \
    --itemId 'string' \
    --limit 1 \
    --offset 1 \
    --sku 'string' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    --userId 'string' \
    > result.txt
```

### Operation `recurring_charge_subscription`
```sh
$ samples/cli/sample-apps Platform recurringChargeSubscription \
    --namespace 'string' \
    --subscriptionId 'string' \
    > result.txt
```

### Operation `get_ticket_dynamic`
```sh
$ samples/cli/sample-apps Platform getTicketDynamic \
    --boothName 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `decrease_ticket_sale`
```sh
$ samples/cli/sample-apps Platform decreaseTicketSale \
    --boothName 'string' \
    --namespace 'string' \
    --body '{"orderNo": "string"}' \
    > result.txt
```

### Operation `get_ticket_booth_id`
```sh
$ samples/cli/sample-apps Platform getTicketBoothID \
    --boothName 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `increase_ticket_sale`
```sh
$ samples/cli/sample-apps Platform increaseTicketSale \
    --boothName 'string' \
    --namespace 'string' \
    --body '{"count": 1, "orderNo": "string"}' \
    > result.txt
```

### Operation `commit`
```sh
$ samples/cli/sample-apps Platform commit \
    --namespace 'string' \
    --body '{"actions": [{}], "metadata": {"string": {}}, "needPreCheck": false, "transactionId": "string", "type": "string"}' \
    > result.txt
```

### Operation `get_trade_history_by_criteria`
```sh
$ samples/cli/sample-apps Platform getTradeHistoryByCriteria \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --status 'FAILED' \
    --type 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_trade_history_by_transaction_id`
```sh
$ samples/cli/sample-apps Platform getTradeHistoryByTransactionId \
    --namespace 'string' \
    --transactionId 'string' \
    > result.txt
```

### Operation `unlock_steam_user_achievement`
```sh
$ samples/cli/sample-apps Platform unlockSteamUserAchievement \
    --namespace 'string' \
    --userId 'string' \
    --body '{"achievements": [{}], "steamUserId": "string"}' \
    > result.txt
```

### Operation `get_xbl_user_achievements`
```sh
$ samples/cli/sample-apps Platform getXblUserAchievements \
    --namespace 'string' \
    --userId 'string' \
    --xboxUserId 'string' \
    > result.txt
```

### Operation `update_xbl_user_achievement`
```sh
$ samples/cli/sample-apps Platform updateXblUserAchievement \
    --namespace 'string' \
    --userId 'string' \
    --body '{"achievements": [{}], "serviceConfigId": "string", "titleId": "string", "xboxUserId": "string"}' \
    > result.txt
```

### Operation `anonymize_campaign`
```sh
$ samples/cli/sample-apps Platform anonymizeCampaign \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_entitlement`
```sh
$ samples/cli/sample-apps Platform anonymizeEntitlement \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_fulfillment`
```sh
$ samples/cli/sample-apps Platform anonymizeFulfillment \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_integration`
```sh
$ samples/cli/sample-apps Platform anonymizeIntegration \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_order`
```sh
$ samples/cli/sample-apps Platform anonymizeOrder \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_payment`
```sh
$ samples/cli/sample-apps Platform anonymizePayment \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_revocation`
```sh
$ samples/cli/sample-apps Platform anonymizeRevocation \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_subscription`
```sh
$ samples/cli/sample-apps Platform anonymizeSubscription \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `anonymize_wallet`
```sh
$ samples/cli/sample-apps Platform anonymizeWallet \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_user_dlc_by_platform`
```sh
$ samples/cli/sample-apps Platform getUserDLCByPlatform \
    --namespace 'string' \
    --userId 'string' \
    --type 'EPICGAMES' \
    > result.txt
```

### Operation `get_user_dlc`
```sh
$ samples/cli/sample-apps Platform getUserDLC \
    --namespace 'string' \
    --userId 'string' \
    --includeAllNamespaces false \
    --status 'FULFILLED' \
    --type 'EPICGAMES' \
    > result.txt
```

### Operation `query_user_entitlements`
```sh
$ samples/cli/sample-apps Platform queryUserEntitlements \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --appType 'DEMO' \
    --collectionId 'string' \
    --entitlementClazz 'APP' \
    --entitlementName 'string' \
    --features '["string"]' \
    --fuzzyMatchName false \
    --ignoreActiveDate false \
    --itemId '["string"]' \
    --limit 1 \
    --offset 1 \
    --origin 'Epic' \
    > result.txt
```

### Operation `grant_user_entitlement`
```sh
$ samples/cli/sample-apps Platform grantUserEntitlement \
    --namespace 'string' \
    --userId 'string' \
    --body '[{"collectionId": "string", "endDate": "2000-01-01T12:34:56Z", "grantedCode": "string", "itemId": "string", "itemNamespace": "string", "language": "string", "metadata": {"string": {}}, "origin": "Epic", "quantity": 1, "region": "string", "source": "ACHIEVEMENT", "startDate": "2000-01-01T12:34:56Z", "storeId": "string"}]' \
    > result.txt
```

### Operation `get_user_app_entitlement_by_app_id`
```sh
$ samples/cli/sample-apps Platform getUserAppEntitlementByAppId \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --appId 'string' \
    > result.txt
```

### Operation `query_user_entitlements_by_app_type`
```sh
$ samples/cli/sample-apps Platform queryUserEntitlementsByAppType \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --limit 1 \
    --offset 1 \
    --appType 'DEMO' \
    > result.txt
```

### Operation `get_user_entitlements_by_ids`
```sh
$ samples/cli/sample-apps Platform getUserEntitlementsByIds \
    --namespace 'string' \
    --userId 'string' \
    --ids '["string"]' \
    > result.txt
```

### Operation `get_user_entitlement_by_item_id`
```sh
$ samples/cli/sample-apps Platform getUserEntitlementByItemId \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --entitlementClazz 'APP' \
    --platform 'string' \
    --itemId 'string' \
    > result.txt
```

### Operation `get_user_active_entitlements_by_item_ids`
```sh
$ samples/cli/sample-apps Platform getUserActiveEntitlementsByItemIds \
    --namespace 'string' \
    --userId 'string' \
    --ids '["string"]' \
    --platform 'string' \
    > result.txt
```

### Operation `get_user_entitlement_by_sku`
```sh
$ samples/cli/sample-apps Platform getUserEntitlementBySku \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --entitlementClazz 'APP' \
    --platform 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `exists_any_user_active_entitlement`
```sh
$ samples/cli/sample-apps Platform existsAnyUserActiveEntitlement \
    --namespace 'string' \
    --userId 'string' \
    --appIds '["string"]' \
    --itemIds '["string"]' \
    --platform 'string' \
    --skus '["string"]' \
    > result.txt
```

### Operation `exists_any_user_active_entitlement_by_item_ids`
```sh
$ samples/cli/sample-apps Platform existsAnyUserActiveEntitlementByItemIds \
    --namespace 'string' \
    --userId 'string' \
    --platform 'string' \
    --itemIds '["string"]' \
    > result.txt
```

### Operation `get_user_app_entitlement_ownership_by_app_id`
```sh
$ samples/cli/sample-apps Platform getUserAppEntitlementOwnershipByAppId \
    --namespace 'string' \
    --userId 'string' \
    --appId 'string' \
    > result.txt
```

### Operation `get_user_entitlement_ownership_by_item_id`
```sh
$ samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemId \
    --namespace 'string' \
    --userId 'string' \
    --entitlementClazz 'APP' \
    --platform 'string' \
    --itemId 'string' \
    > result.txt
```

### Operation `get_user_entitlement_ownership_by_item_ids`
```sh
$ samples/cli/sample-apps Platform getUserEntitlementOwnershipByItemIds \
    --namespace 'string' \
    --userId 'string' \
    --ids '["string"]' \
    --platform 'string' \
    > result.txt
```

### Operation `get_user_entitlement_ownership_by_sku`
```sh
$ samples/cli/sample-apps Platform getUserEntitlementOwnershipBySku \
    --namespace 'string' \
    --userId 'string' \
    --entitlementClazz 'APP' \
    --platform 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `revoke_all_entitlements`
```sh
$ samples/cli/sample-apps Platform revokeAllEntitlements \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `revoke_user_entitlements`
```sh
$ samples/cli/sample-apps Platform revokeUserEntitlements \
    --namespace 'string' \
    --userId 'string' \
    --entitlementIds 'string' \
    > result.txt
```

### Operation `get_user_entitlement`
```sh
$ samples/cli/sample-apps Platform getUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_user_entitlement`
```sh
$ samples/cli/sample-apps Platform updateUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"collectionId": "string", "endDate": "2000-01-01T12:34:56Z", "nullFieldList": ["string"], "origin": "Epic", "reason": "string", "startDate": "2000-01-01T12:34:56Z", "status": "ACTIVE", "useCount": 1}' \
    > result.txt
```

### Operation `consume_user_entitlement`
```sh
$ samples/cli/sample-apps Platform consumeUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"metadata": {"string": {}}, "options": ["string"], "platform": "string", "requestId": "string", "useCount": 1}' \
    > result.txt
```

### Operation `disable_user_entitlement`
```sh
$ samples/cli/sample-apps Platform disableUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `enable_user_entitlement`
```sh
$ samples/cli/sample-apps Platform enableUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_user_entitlement_histories`
```sh
$ samples/cli/sample-apps Platform getUserEntitlementHistories \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `revoke_user_entitlement`
```sh
$ samples/cli/sample-apps Platform revokeUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"metadata": {"string": {}}}' \
    > result.txt
```

### Operation `revoke_user_entitlement_by_use_count`
```sh
$ samples/cli/sample-apps Platform revokeUserEntitlementByUseCount \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"reason": "string", "useCount": 1}' \
    > result.txt
```

### Operation `pre_check_revoke_user_entitlement_by_use_count`
```sh
$ samples/cli/sample-apps Platform preCheckRevokeUserEntitlementByUseCount \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --quantity 1 \
    > result.txt
```

### Operation `sell_user_entitlement`
```sh
$ samples/cli/sample-apps Platform sellUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"platform": "string", "requestId": "string", "useCount": 1}' \
    > result.txt
```

### Operation `fulfill_item`
```sh
$ samples/cli/sample-apps Platform fulfillItem \
    --namespace 'string' \
    --userId 'string' \
    --body '{"duration": 1, "endDate": "2000-01-01T12:34:56Z", "entitlementCollectionId": "string", "entitlementOrigin": "Epic", "itemId": "string", "itemSku": "string", "language": "string", "metadata": {"string": {}}, "order": {}, "orderNo": "string", "origin": "Epic", "overrideBundleItemQty": {"string": 1}, "quantity": 1, "region": "string", "source": "ACHIEVEMENT", "startDate": "2000-01-01T12:34:56Z", "storeId": "string"}' \
    > result.txt
```

### Operation `redeem_code`
```sh
$ samples/cli/sample-apps Platform redeemCode \
    --namespace 'string' \
    --userId 'string' \
    --body '{"code": "string", "language": "string", "region": "string"}' \
    > result.txt
```

### Operation `pre_check_fulfill_item`
```sh
$ samples/cli/sample-apps Platform preCheckFulfillItem \
    --namespace 'string' \
    --userId 'string' \
    --body '{"itemId": "string", "itemSku": "string", "quantity": 1}' \
    > result.txt
```

### Operation `fulfill_rewards`
```sh
$ samples/cli/sample-apps Platform fulfillRewards \
    --namespace 'string' \
    --userId 'string' \
    --body '{"entitlementCollectionId": "string", "entitlementOrigin": "Epic", "metadata": {"string": {}}, "origin": "Epic", "rewards": [{}], "source": "ACHIEVEMENT", "transactionId": "string"}' \
    > result.txt
```

### Operation `query_user_iap_orders`
```sh
$ samples/cli/sample-apps Platform queryUserIAPOrders \
    --namespace 'string' \
    --userId 'string' \
    --endTime 'string' \
    --limit 1 \
    --offset 1 \
    --productId 'string' \
    --startTime 'string' \
    --status 'FAILED' \
    --type 'APPLE' \
    > result.txt
```

### Operation `query_all_user_iap_orders`
```sh
$ samples/cli/sample-apps Platform queryAllUserIAPOrders \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `query_user_iap_consume_history`
```sh
$ samples/cli/sample-apps Platform queryUserIAPConsumeHistory \
    --namespace 'string' \
    --userId 'string' \
    --endTime 'string' \
    --limit 1 \
    --offset 1 \
    --startTime 'string' \
    --status 'FAIL' \
    --type 'APPLE' \
    > result.txt
```

### Operation `mock_fulfill_iap_item`
```sh
$ samples/cli/sample-apps Platform mockFulfillIAPItem \
    --namespace 'string' \
    --userId 'string' \
    --body '{"itemIdentityType": "ITEM_ID", "language": "string", "productId": "string", "region": "string", "transactionId": "string", "type": "APPLE"}' \
    > result.txt
```

### Operation `admin_sync_oculus_subscriptions`
```sh
$ samples/cli/sample-apps Platform adminSyncOculusSubscriptions \
    --namespace 'string' \
    --userId 'string' \
    --body '{"skus": ["string"]}' \
    > result.txt
```

### Operation `admin_get_iap_order_line_items`
```sh
$ samples/cli/sample-apps Platform adminGetIAPOrderLineItems \
    --iapOrderNo 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_sync_steam_abnormal_transaction`
```sh
$ samples/cli/sample-apps Platform adminSyncSteamAbnormalTransaction \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_sync_steam_iap_by_transaction`
```sh
$ samples/cli/sample-apps Platform adminSyncSteamIAPByTransaction \
    --namespace 'string' \
    --userId 'string' \
    --body '{"orderId": "string"}' \
    > result.txt
```

### Operation `query_user_third_party_subscription`
```sh
$ samples/cli/sample-apps Platform queryUserThirdPartySubscription \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --groupId 'string' \
    --limit 1 \
    --offset 1 \
    --platform 'APPLE' \
    --productId 'string' \
    > result.txt
```

### Operation `get_third_party_platform_subscription_ownership_by_group_id`
```sh
$ samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByGroupId \
    --namespace 'string' \
    --platform 'APPLE' \
    --userId 'string' \
    --groupId 'string' \
    > result.txt
```

### Operation `get_third_party_platform_subscription_ownership_by_product_id`
```sh
$ samples/cli/sample-apps Platform getThirdPartyPlatformSubscriptionOwnershipByProductId \
    --namespace 'string' \
    --platform 'APPLE' \
    --userId 'string' \
    --productId 'string' \
    > result.txt
```

### Operation `query_user_third_party_subscription_transactions`
```sh
$ samples/cli/sample-apps Platform queryUserThirdPartySubscriptionTransactions \
    --namespace 'string' \
    --userId 'string' \
    --activeOnly false \
    --groupId 'string' \
    --limit 1 \
    --offset 1 \
    --platform 'APPLE' \
    --productId 'string' \
    > result.txt
```

### Operation `get_third_party_subscription_details`
```sh
$ samples/cli/sample-apps Platform getThirdPartySubscriptionDetails \
    --id 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_subscription_history`
```sh
$ samples/cli/sample-apps Platform getSubscriptionHistory \
    --id 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `sync_subscription_transaction`
```sh
$ samples/cli/sample-apps Platform syncSubscriptionTransaction \
    --id 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_third_party_user_subscription_details`
```sh
$ samples/cli/sample-apps Platform getThirdPartyUserSubscriptionDetails \
    --id 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `sync_subscription`
```sh
$ samples/cli/sample-apps Platform syncSubscription \
    --id 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `query_user_orders`
```sh
$ samples/cli/sample-apps Platform queryUserOrders \
    --namespace 'string' \
    --userId 'string' \
    --discounted false \
    --itemId 'string' \
    --limit 1 \
    --offset 1 \
    --status 'CHARGEBACK' \
    > result.txt
```

### Operation `admin_create_user_order`
```sh
$ samples/cli/sample-apps Platform adminCreateUserOrder \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "currencyNamespace": "string", "discountCodes": ["string"], "discountedPrice": 1, "entitlementPlatform": "Epic", "ext": {"string": {}}, "itemId": "string", "language": "string", "options": {}, "platform": "Epic", "price": 1, "quantity": 1, "region": "string", "returnUrl": "string", "sandbox": false, "sectionId": "string"}' \
    > result.txt
```

### Operation `count_of_purchased_item`
```sh
$ samples/cli/sample-apps Platform countOfPurchasedItem \
    --namespace 'string' \
    --userId 'string' \
    --itemId 'string' \
    > result.txt
```

### Operation `get_user_order`
```sh
$ samples/cli/sample-apps Platform getUserOrder \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_user_order_status`
```sh
$ samples/cli/sample-apps Platform updateUserOrderStatus \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    --body '{"status": "CHARGEBACK", "statusReason": "string"}' \
    > result.txt
```

### Operation `fulfill_user_order`
```sh
$ samples/cli/sample-apps Platform fulfillUserOrder \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_user_order_histories`
```sh
$ samples/cli/sample-apps Platform getUserOrderHistories \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `process_user_order_notification`
```sh
$ samples/cli/sample-apps Platform processUserOrderNotification \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    --body '{"additionalData": {}, "authorisedTime": "2000-01-01T12:34:56Z", "chargebackReversedTime": "2000-01-01T12:34:56Z", "chargebackTime": "2000-01-01T12:34:56Z", "chargedTime": "2000-01-01T12:34:56Z", "createdTime": "2000-01-01T12:34:56Z", "currency": {}, "customParameters": {"string": {}}, "extOrderNo": "string", "extTxId": "string", "extUserId": "string", "issuedAt": "2000-01-01T12:34:56Z", "metadata": {"string": "string"}, "namespace": "string", "nonceStr": "string", "paymentData": {}, "paymentMethod": "string", "paymentMethodFee": 1, "paymentOrderNo": "string", "paymentProvider": "ADYEN", "paymentProviderFee": 1, "paymentStationUrl": "string", "price": 1, "refundedTime": "2000-01-01T12:34:56Z", "salesTax": 1, "sandbox": false, "sku": "string", "status": "AUTHORISED", "statusReason": "string", "subscriptionId": "string", "subtotalPrice": 1, "targetNamespace": "string", "targetUserId": "string", "tax": 1, "totalPrice": 1, "totalTax": 1, "txEndTime": "2000-01-01T12:34:56Z", "type": "string", "userId": "string", "vat": 1}' \
    > result.txt
```

### Operation `download_user_order_receipt`
```sh
$ samples/cli/sample-apps Platform downloadUserOrderReceipt \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `create_user_payment_order`
```sh
$ samples/cli/sample-apps Platform createUserPaymentOrder \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "currencyNamespace": "string", "customParameters": {"string": {}}, "description": "string", "extOrderNo": "string", "extUserId": "string", "itemType": "APP", "language": "string", "metadata": {"string": "string"}, "notifyUrl": "string", "omitNotification": false, "platform": "string", "price": 1, "recurringPaymentOrderNo": "string", "region": "string", "returnUrl": "string", "sandbox": false, "sku": "string", "subscriptionId": "string", "title": "string"}' \
    > result.txt
```

### Operation `refund_user_payment_order`
```sh
$ samples/cli/sample-apps Platform refundUserPaymentOrder \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    --userId 'string' \
    --body '{"description": "string"}' \
    > result.txt
```

### Operation `get_user_platform_account_closure_histories`
```sh
$ samples/cli/sample-apps Platform getUserPlatformAccountClosureHistories \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `apply_user_redemption`
```sh
$ samples/cli/sample-apps Platform applyUserRedemption \
    --namespace 'string' \
    --userId 'string' \
    --body '{"code": "string", "orderNo": "string"}' \
    > result.txt
```

### Operation `do_revocation`
```sh
$ samples/cli/sample-apps Platform doRevocation \
    --namespace 'string' \
    --userId 'string' \
    --body '{"meta": {"string": {}}, "reason": "string", "requestId": "string", "revokeEntries": [{}], "source": "DLC", "transactionId": "string"}' \
    > result.txt
```

### Operation `register_xbl_sessions`
```sh
$ samples/cli/sample-apps Platform registerXblSessions \
    --namespace 'string' \
    --userId 'string' \
    --body '{"gameSessionId": "string", "payload": {"string": {}}, "scid": "string", "sessionTemplateName": "string"}' \
    > result.txt
```

### Operation `query_user_subscriptions`
```sh
$ samples/cli/sample-apps Platform queryUserSubscriptions \
    --namespace 'string' \
    --userId 'string' \
    --chargeStatus 'CHARGED' \
    --itemId 'string' \
    --limit 1 \
    --offset 1 \
    --sku 'string' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > result.txt
```

### Operation `get_user_subscription_activities`
```sh
$ samples/cli/sample-apps Platform getUserSubscriptionActivities \
    --namespace 'string' \
    --userId 'string' \
    --excludeSystem false \
    --limit 1 \
    --offset 1 \
    --subscriptionId 'string' \
    > result.txt
```

### Operation `platform_subscribe_subscription`
```sh
$ samples/cli/sample-apps Platform platformSubscribeSubscription \
    --namespace 'string' \
    --userId 'string' \
    --body '{"grantDays": 1, "itemId": "string", "language": "string", "reason": "string", "region": "string", "source": "string"}' \
    > result.txt
```

### Operation `check_user_subscription_subscribable_by_item_id`
```sh
$ samples/cli/sample-apps Platform checkUserSubscriptionSubscribableByItemId \
    --namespace 'string' \
    --userId 'string' \
    --itemId 'string' \
    > result.txt
```

### Operation `get_user_subscription`
```sh
$ samples/cli/sample-apps Platform getUserSubscription \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `delete_user_subscription`
```sh
$ samples/cli/sample-apps Platform deleteUserSubscription \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `cancel_subscription`
```sh
$ samples/cli/sample-apps Platform cancelSubscription \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    --force false \
    --body '{"immediate": false, "reason": "string"}' \
    > result.txt
```

### Operation `grant_days_to_subscription`
```sh
$ samples/cli/sample-apps Platform grantDaysToSubscription \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    --body '{"grantDays": 1, "reason": "string"}' \
    > result.txt
```

### Operation `get_user_subscription_billing_histories`
```sh
$ samples/cli/sample-apps Platform getUserSubscriptionBillingHistories \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    --excludeFree false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `process_user_subscription_notification`
```sh
$ samples/cli/sample-apps Platform processUserSubscriptionNotification \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    --body '{"additionalData": {}, "authorisedTime": "2000-01-01T12:34:56Z", "chargebackReversedTime": "2000-01-01T12:34:56Z", "chargebackTime": "2000-01-01T12:34:56Z", "chargedTime": "2000-01-01T12:34:56Z", "createdTime": "2000-01-01T12:34:56Z", "currency": {}, "customParameters": {"string": {}}, "extOrderNo": "string", "extTxId": "string", "extUserId": "string", "issuedAt": "2000-01-01T12:34:56Z", "metadata": {"string": "string"}, "namespace": "string", "nonceStr": "string", "paymentData": {}, "paymentMethod": "string", "paymentMethodFee": 1, "paymentOrderNo": "string", "paymentProvider": "ADYEN", "paymentProviderFee": 1, "paymentStationUrl": "string", "price": 1, "refundedTime": "2000-01-01T12:34:56Z", "salesTax": 1, "sandbox": false, "sku": "string", "status": "AUTHORISED", "statusReason": "string", "subscriptionId": "string", "subtotalPrice": 1, "targetNamespace": "string", "targetUserId": "string", "tax": 1, "totalPrice": 1, "totalTax": 1, "txEndTime": "2000-01-01T12:34:56Z", "type": "string", "userId": "string", "vat": 1}' \
    > result.txt
```

### Operation `acquire_user_ticket`
```sh
$ samples/cli/sample-apps Platform acquireUserTicket \
    --boothName 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"count": 1, "orderNo": "string"}' \
    > result.txt
```

### Operation `query_user_currency_wallets`
```sh
$ samples/cli/sample-apps Platform queryUserCurrencyWallets \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `debit_user_wallet_by_currency_code`
```sh
$ samples/cli/sample-apps Platform debitUserWalletByCurrencyCode \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"allowOverdraft": false, "amount": 1, "balanceOrigin": "Epic", "balanceSource": "DLC_REVOCATION", "metadata": {"string": {}}, "reason": "string"}' \
    > result.txt
```

### Operation `list_user_currency_transactions`
```sh
$ samples/cli/sample-apps Platform listUserCurrencyTransactions \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `check_balance`
```sh
$ samples/cli/sample-apps Platform checkBalance \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --request '{"amount": 1, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"string": {}}, "reason": "string", "walletPlatform": "Epic"}' \
    > result.txt
```

### Operation `credit_user_wallet`
```sh
$ samples/cli/sample-apps Platform creditUserWallet \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"amount": 1, "expireAt": "2000-01-01T12:34:56Z", "metadata": {"string": {}}, "origin": "Epic", "reason": "string", "source": "ACHIEVEMENT"}' \
    > result.txt
```

### Operation `debit_by_wallet_platform`
```sh
$ samples/cli/sample-apps Platform debitByWalletPlatform \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --request '{"amount": 1, "debitBalanceSource": "DLC_REVOCATION", "metadata": {"string": {}}, "reason": "string", "walletPlatform": "Epic"}' \
    > result.txt
```

### Operation `pay_with_user_wallet`
```sh
$ samples/cli/sample-apps Platform payWithUserWallet \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"amount": 1, "metadata": {"string": {}}, "walletPlatform": "Epic"}' \
    > result.txt
```

### Operation `list_views`
```sh
$ samples/cli/sample-apps Platform listViews \
    --namespace 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `create_view`
```sh
$ samples/cli/sample-apps Platform createView \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"displayOrder": 1, "localizations": {"string": {}}, "name": "string"}' \
    > result.txt
```

### Operation `get_view`
```sh
$ samples/cli/sample-apps Platform getView \
    --namespace 'string' \
    --viewId 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `update_view`
```sh
$ samples/cli/sample-apps Platform updateView \
    --namespace 'string' \
    --viewId 'string' \
    --storeId 'string' \
    --body '{"displayOrder": 1, "localizations": {"string": {}}, "name": "string"}' \
    > result.txt
```

### Operation `delete_view`
```sh
$ samples/cli/sample-apps Platform deleteView \
    --namespace 'string' \
    --viewId 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `get_wallet_config`
```sh
$ samples/cli/sample-apps Platform getWalletConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_wallet_config`
```sh
$ samples/cli/sample-apps Platform updateWalletConfig \
    --namespace 'string' \
    --body '{"enablePaidForVCExpiration": false}' \
    > result.txt
```

### Operation `bulk_credit`
```sh
$ samples/cli/sample-apps Platform bulkCredit \
    --namespace 'string' \
    --body '[{"creditRequest": {}, "currencyCode": "string", "userIds": ["string"]}]' \
    > result.txt
```

### Operation `bulk_debit`
```sh
$ samples/cli/sample-apps Platform bulkDebit \
    --namespace 'string' \
    --body '[{"currencyCode": "string", "request": {}, "userIds": ["string"]}]' \
    > result.txt
```

### Operation `sync_orders`
```sh
$ samples/cli/sample-apps Platform syncOrders \
    --nextEvaluatedKey 'string' \
    --end 'string' \
    --start 'string' \
    > result.txt
```

### Operation `test_adyen_config`
```sh
$ samples/cli/sample-apps Platform testAdyenConfig \
    --sandbox false \
    --body '{"allowedPaymentMethods": ["string"], "apiKey": "string", "authoriseAsCapture": false, "blockedPaymentMethods": ["string"], "clientKey": "string", "dropInSettings": "string", "liveEndpointUrlPrefix": "string", "merchantAccount": "string", "notificationHmacKey": "string", "notificationPassword": "string", "notificationUsername": "string", "returnUrl": "string", "settings": "string"}' \
    > result.txt
```

### Operation `test_ali_pay_config`
```sh
$ samples/cli/sample-apps Platform testAliPayConfig \
    --sandbox false \
    --body '{"appId": "string", "privateKey": "string", "publicKey": "string", "returnUrl": "string"}' \
    > result.txt
```

### Operation `test_checkout_config`
```sh
$ samples/cli/sample-apps Platform testCheckoutConfig \
    --sandbox false \
    --body '{"publicKey": "string", "secretKey": "string"}' \
    > result.txt
```

### Operation `debug_matched_payment_merchant_config`
```sh
$ samples/cli/sample-apps Platform debugMatchedPaymentMerchantConfig \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `test_neon_pay_config`
```sh
$ samples/cli/sample-apps Platform testNeonPayConfig \
    --sandbox false \
    --body '{"apiKey": "string", "webhookSecretKey": "string"}' \
    > result.txt
```

### Operation `test_pay_pal_config`
```sh
$ samples/cli/sample-apps Platform testPayPalConfig \
    --sandbox false \
    --body '{"clientID": "string", "clientSecret": "string", "returnUrl": "string", "webHookId": "string"}' \
    > result.txt
```

### Operation `test_stripe_config`
```sh
$ samples/cli/sample-apps Platform testStripeConfig \
    --sandbox false \
    --body '{"allowedPaymentMethodTypes": ["string"], "publishableKey": "string", "secretKey": "string", "webhookSecret": "string"}' \
    > result.txt
```

### Operation `test_wx_pay_config`
```sh
$ samples/cli/sample-apps Platform testWxPayConfig \
    --body '{"appId": "string", "key": "string", "mchid": "string", "returnUrl": "string"}' \
    > result.txt
```

### Operation `test_xsolla_config`
```sh
$ samples/cli/sample-apps Platform testXsollaConfig \
    --body '{"apiKey": "string", "flowCompletionUrl": "string", "merchantId": 1, "projectId": 1, "projectSecretKey": "string"}' \
    > result.txt
```

### Operation `get_payment_merchant_config_1`
```sh
$ samples/cli/sample-apps Platform getPaymentMerchantConfig1 \
    --id 'string' \
    > result.txt
```

### Operation `update_adyen_config`
```sh
$ samples/cli/sample-apps Platform updateAdyenConfig \
    --id 'string' \
    --sandbox false \
    --validate false \
    --body '{"allowedPaymentMethods": ["string"], "apiKey": "string", "authoriseAsCapture": false, "blockedPaymentMethods": ["string"], "clientKey": "string", "dropInSettings": "string", "liveEndpointUrlPrefix": "string", "merchantAccount": "string", "notificationHmacKey": "string", "notificationPassword": "string", "notificationUsername": "string", "returnUrl": "string", "settings": "string"}' \
    > result.txt
```

### Operation `test_adyen_config_by_id`
```sh
$ samples/cli/sample-apps Platform testAdyenConfigById \
    --id 'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_ali_pay_config`
```sh
$ samples/cli/sample-apps Platform updateAliPayConfig \
    --id 'string' \
    --sandbox false \
    --validate false \
    --body '{"appId": "string", "privateKey": "string", "publicKey": "string", "returnUrl": "string"}' \
    > result.txt
```

### Operation `test_ali_pay_config_by_id`
```sh
$ samples/cli/sample-apps Platform testAliPayConfigById \
    --id 'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_checkout_config`
```sh
$ samples/cli/sample-apps Platform updateCheckoutConfig \
    --id 'string' \
    --sandbox false \
    --validate false \
    --body '{"publicKey": "string", "secretKey": "string"}' \
    > result.txt
```

### Operation `test_checkout_config_by_id`
```sh
$ samples/cli/sample-apps Platform testCheckoutConfigById \
    --id 'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_neon_pay_config`
```sh
$ samples/cli/sample-apps Platform updateNeonPayConfig \
    --id 'string' \
    --sandbox false \
    --validate false \
    --body '{"apiKey": "string", "webhookSecretKey": "string"}' \
    > result.txt
```

### Operation `test_neon_pay_config_by_id`
```sh
$ samples/cli/sample-apps Platform testNeonPayConfigById \
    --id 'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_pay_pal_config`
```sh
$ samples/cli/sample-apps Platform updatePayPalConfig \
    --id 'string' \
    --sandbox false \
    --validate false \
    --body '{"clientID": "string", "clientSecret": "string", "returnUrl": "string", "webHookId": "string"}' \
    > result.txt
```

### Operation `test_pay_pal_config_by_id`
```sh
$ samples/cli/sample-apps Platform testPayPalConfigById \
    --id 'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_stripe_config`
```sh
$ samples/cli/sample-apps Platform updateStripeConfig \
    --id 'string' \
    --sandbox false \
    --validate false \
    --body '{"allowedPaymentMethodTypes": ["string"], "publishableKey": "string", "secretKey": "string", "webhookSecret": "string"}' \
    > result.txt
```

### Operation `test_stripe_config_by_id`
```sh
$ samples/cli/sample-apps Platform testStripeConfigById \
    --id 'string' \
    --sandbox false \
    > result.txt
```

### Operation `update_wx_pay_config`
```sh
$ samples/cli/sample-apps Platform updateWxPayConfig \
    --id 'string' \
    --validate false \
    --body '{"appId": "string", "key": "string", "mchid": "string", "returnUrl": "string"}' \
    > result.txt
```

### Operation `update_wx_pay_config_cert`
```sh
$ samples/cli/sample-apps Platform updateWxPayConfigCert \
    --id 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `test_wx_pay_config_by_id`
```sh
$ samples/cli/sample-apps Platform testWxPayConfigById \
    --id 'string' \
    > result.txt
```

### Operation `update_xsolla_config`
```sh
$ samples/cli/sample-apps Platform updateXsollaConfig \
    --id 'string' \
    --validate false \
    --body '{"apiKey": "string", "flowCompletionUrl": "string", "merchantId": 1, "projectId": 1, "projectSecretKey": "string"}' \
    > result.txt
```

### Operation `test_xsolla_config_by_id`
```sh
$ samples/cli/sample-apps Platform testXsollaConfigById \
    --id 'string' \
    > result.txt
```

### Operation `update_xsolla_ui_config`
```sh
$ samples/cli/sample-apps Platform updateXsollaUIConfig \
    --id 'string' \
    --body '{"device": "DESKTOP", "showCloseButton": false, "size": "LARGE", "theme": "DARK"}' \
    > result.txt
```

### Operation `query_payment_provider_config`
```sh
$ samples/cli/sample-apps Platform queryPaymentProviderConfig \
    --limit 1 \
    --namespace 'string' \
    --offset 1 \
    --region 'string' \
    > result.txt
```

### Operation `create_payment_provider_config`
```sh
$ samples/cli/sample-apps Platform createPaymentProviderConfig \
    --body '{"aggregate": "ADYEN", "namespace": "string", "region": "string", "sandboxTaxJarApiToken": "string", "specials": ["ADYEN"], "taxJarApiToken": "string", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > result.txt
```

### Operation `get_aggregate_payment_providers`
```sh
$ samples/cli/sample-apps Platform getAggregatePaymentProviders \
    > result.txt
```

### Operation `debug_matched_payment_provider_config`
```sh
$ samples/cli/sample-apps Platform debugMatchedPaymentProviderConfig \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `get_special_payment_providers`
```sh
$ samples/cli/sample-apps Platform getSpecialPaymentProviders \
    > result.txt
```

### Operation `update_payment_provider_config`
```sh
$ samples/cli/sample-apps Platform updatePaymentProviderConfig \
    --id 'string' \
    --body '{"aggregate": "ADYEN", "namespace": "string", "region": "string", "sandboxTaxJarApiToken": "string", "specials": ["ADYEN"], "taxJarApiToken": "string", "taxJarEnabled": false, "useGlobalTaxJarApiToken": false}' \
    > result.txt
```

### Operation `delete_payment_provider_config`
```sh
$ samples/cli/sample-apps Platform deletePaymentProviderConfig \
    --id 'string' \
    > result.txt
```

### Operation `get_payment_tax_config`
```sh
$ samples/cli/sample-apps Platform getPaymentTaxConfig \
    > result.txt
```

### Operation `update_payment_tax_config`
```sh
$ samples/cli/sample-apps Platform updatePaymentTaxConfig \
    --body '{"sandboxTaxJarApiToken": "string", "taxJarApiToken": "string", "taxJarEnabled": false, "taxJarProductCodesMapping": {"string": "string"}}' \
    > result.txt
```

### Operation `sync_payment_orders`
```sh
$ samples/cli/sample-apps Platform syncPaymentOrders \
    --nextEvaluatedKey 'string' \
    --end 'string' \
    --start 'string' \
    > result.txt
```

### Operation `public_get_root_categories`
```sh
$ samples/cli/sample-apps Platform publicGetRootCategories \
    --namespace 'string' \
    --language 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `download_categories`
```sh
$ samples/cli/sample-apps Platform downloadCategories \
    --namespace 'string' \
    --language 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `public_get_category`
```sh
$ samples/cli/sample-apps Platform publicGetCategory \
    --categoryPath 'string' \
    --namespace 'string' \
    --language 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `public_get_child_categories`
```sh
$ samples/cli/sample-apps Platform publicGetChildCategories \
    --categoryPath 'string' \
    --namespace 'string' \
    --language 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `public_get_descendant_categories`
```sh
$ samples/cli/sample-apps Platform publicGetDescendantCategories \
    --categoryPath 'string' \
    --namespace 'string' \
    --language 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `public_list_currencies`
```sh
$ samples/cli/sample-apps Platform publicListCurrencies \
    --namespace 'string' \
    --currencyType 'REAL' \
    > result.txt
```

### Operation `ge_dlc_durable_reward_short_map`
```sh
$ samples/cli/sample-apps Platform geDLCDurableRewardShortMap \
    --namespace 'string' \
    --dlcType 'EPICGAMES' \
    > result.txt
```

### Operation `get_apple_config_version`
```sh
$ samples/cli/sample-apps Platform getAppleConfigVersion \
    --namespace 'string' \
    > result.txt
```

### Operation `get_iap_item_mapping`
```sh
$ samples/cli/sample-apps Platform getIAPItemMapping \
    --namespace 'string' \
    --platform 'APPLE' \
    > result.txt
```

### Operation `public_get_item_by_app_id`
```sh
$ samples/cli/sample-apps Platform publicGetItemByAppId \
    --namespace 'string' \
    --language 'string' \
    --region 'string' \
    --storeId 'string' \
    --appId 'string' \
    > result.txt
```

### Operation `public_query_items`
```sh
$ samples/cli/sample-apps Platform publicQueryItems \
    --namespace 'string' \
    --appType 'DEMO' \
    --autoCalcEstimatedPrice false \
    --baseAppId 'string' \
    --categoryPath 'string' \
    --features 'string' \
    --includeSubCategoryItem false \
    --itemType 'APP' \
    --language 'string' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --sortBy '["name"]' \
    --storeId 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `public_get_item_by_sku`
```sh
$ samples/cli/sample-apps Platform publicGetItemBySku \
    --namespace 'string' \
    --autoCalcEstimatedPrice false \
    --language 'string' \
    --region 'string' \
    --storeId 'string' \
    --sku 'string' \
    > result.txt
```

### Operation `public_get_estimated_price`
```sh
$ samples/cli/sample-apps Platform publicGetEstimatedPrice \
    --namespace 'string' \
    --region 'string' \
    --storeId 'string' \
    --itemIds 'string' \
    > result.txt
```

### Operation `public_bulk_get_items`
```sh
$ samples/cli/sample-apps Platform publicBulkGetItems \
    --namespace 'string' \
    --autoCalcEstimatedPrice false \
    --language 'string' \
    --region 'string' \
    --storeId 'string' \
    --itemIds 'string' \
    > result.txt
```

### Operation `public_validate_item_purchase_condition`
```sh
$ samples/cli/sample-apps Platform publicValidateItemPurchaseCondition \
    --namespace 'string' \
    --body '{"itemIds": ["string"]}' \
    > result.txt
```

### Operation `public_search_items`
```sh
$ samples/cli/sample-apps Platform publicSearchItems \
    --namespace 'string' \
    --autoCalcEstimatedPrice false \
    --itemType 'APP' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --storeId 'string' \
    --keyword 'string' \
    --language 'string' \
    > result.txt
```

### Operation `public_get_app`
```sh
$ samples/cli/sample-apps Platform publicGetApp \
    --itemId 'string' \
    --namespace 'string' \
    --language 'string' \
    --region 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `public_get_item_dynamic_data`
```sh
$ samples/cli/sample-apps Platform publicGetItemDynamicData \
    --itemId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_item`
```sh
$ samples/cli/sample-apps Platform publicGetItem \
    --itemId 'string' \
    --namespace 'string' \
    --autoCalcEstimatedPrice false \
    --language 'string' \
    --populateBundle false \
    --region 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `public_get_payment_url`
```sh
$ samples/cli/sample-apps Platform publicGetPaymentUrl \
    --namespace 'string' \
    --body '{"neonPayConfig": {}, "paymentOrderNo": "string", "paymentProvider": "ADYEN", "returnUrl": "string", "ui": "string", "zipCode": "string"}' \
    > result.txt
```

### Operation `public_get_payment_methods`
```sh
$ samples/cli/sample-apps Platform publicGetPaymentMethods \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    > result.txt
```

### Operation `public_get_unpaid_payment_order`
```sh
$ samples/cli/sample-apps Platform publicGetUnpaidPaymentOrder \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    > result.txt
```

### Operation `pay`
```sh
$ samples/cli/sample-apps Platform pay \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    --paymentProvider 'ADYEN' \
    --zipCode 'string' \
    --body '{"token": "string"}' \
    > result.txt
```

### Operation `public_check_payment_order_paid_status`
```sh
$ samples/cli/sample-apps Platform publicCheckPaymentOrderPaidStatus \
    --namespace 'string' \
    --paymentOrderNo 'string' \
    > result.txt
```

### Operation `get_payment_public_config`
```sh
$ samples/cli/sample-apps Platform getPaymentPublicConfig \
    --namespace 'string' \
    --sandbox false \
    --paymentProvider 'ADYEN' \
    --region 'string' \
    > result.txt
```

### Operation `public_get_qr_code`
```sh
$ samples/cli/sample-apps Platform publicGetQRCode \
    --namespace 'string' \
    --code 'string' \
    > result.txt
```

### Operation `public_normalize_payment_return_url`
```sh
$ samples/cli/sample-apps Platform publicNormalizePaymentReturnUrl \
    --namespace 'string' \
    --payerID 'string' \
    --foreinginvoice 'string' \
    --invoiceId 'string' \
    --payload 'string' \
    --redirectResult 'string' \
    --resultCode 'string' \
    --sessionId 'string' \
    --status 'string' \
    --token 'string' \
    --type 'string' \
    --userId 'string' \
    --orderNo 'string' \
    --paymentOrderNo 'string' \
    --paymentProvider 'ADYEN' \
    --returnUrl 'string' \
    > result.txt
```

### Operation `get_payment_tax_value`
```sh
$ samples/cli/sample-apps Platform getPaymentTaxValue \
    --namespace 'string' \
    --zipCode 'string' \
    --paymentOrderNo 'string' \
    --paymentProvider 'ADYEN' \
    > result.txt
```

### Operation `get_reward_by_code`
```sh
$ samples/cli/sample-apps Platform getRewardByCode \
    --namespace 'string' \
    --rewardCode 'string' \
    > result.txt
```

### Operation `query_rewards_1`
```sh
$ samples/cli/sample-apps Platform queryRewards1 \
    --namespace 'string' \
    --eventTopic 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy '["namespace"]' \
    > result.txt
```

### Operation `get_reward_1`
```sh
$ samples/cli/sample-apps Platform getReward1 \
    --namespace 'string' \
    --rewardId 'string' \
    > result.txt
```

### Operation `public_list_stores`
```sh
$ samples/cli/sample-apps Platform publicListStores \
    --namespace 'string' \
    > result.txt
```

### Operation `public_exists_any_my_active_entitlement`
```sh
$ samples/cli/sample-apps Platform publicExistsAnyMyActiveEntitlement \
    --namespace 'string' \
    --appIds '["string"]' \
    --itemIds '["string"]' \
    --skus '["string"]' \
    > result.txt
```

### Operation `public_get_my_app_entitlement_ownership_by_app_id`
```sh
$ samples/cli/sample-apps Platform publicGetMyAppEntitlementOwnershipByAppId \
    --namespace 'string' \
    --appId 'string' \
    > result.txt
```

### Operation `public_get_my_entitlement_ownership_by_item_id`
```sh
$ samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipByItemId \
    --namespace 'string' \
    --entitlementClazz 'APP' \
    --itemId 'string' \
    > result.txt
```

### Operation `public_get_my_entitlement_ownership_by_sku`
```sh
$ samples/cli/sample-apps Platform publicGetMyEntitlementOwnershipBySku \
    --namespace 'string' \
    --entitlementClazz 'APP' \
    --sku 'string' \
    > result.txt
```

### Operation `public_get_entitlement_ownership_token`
```sh
$ samples/cli/sample-apps Platform publicGetEntitlementOwnershipToken \
    --namespace 'string' \
    --appIds '["string"]' \
    --itemIds '["string"]' \
    --skus '["string"]' \
    > result.txt
```

### Operation `sync_twitch_drops_entitlement`
```sh
$ samples/cli/sample-apps Platform syncTwitchDropsEntitlement \
    --namespace 'string' \
    --body '{"gameId": "string", "language": "string", "region": "string"}' \
    > result.txt
```

### Operation `public_get_my_wallet`
```sh
$ samples/cli/sample-apps Platform publicGetMyWallet \
    --currencyCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `sync_epic_game_dlc`
```sh
$ samples/cli/sample-apps Platform syncEpicGameDLC \
    --namespace 'string' \
    --userId 'string' \
    --body '{"epicGamesJwtToken": "string"}' \
    > result.txt
```

### Operation `sync_oculus_dlc`
```sh
$ samples/cli/sample-apps Platform syncOculusDLC \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_sync_psn_dlc_inventory`
```sh
$ samples/cli/sample-apps Platform publicSyncPsnDlcInventory \
    --namespace 'string' \
    --userId 'string' \
    --body '{"serviceLabel": 1}' \
    > result.txt
```

### Operation `public_sync_psn_dlc_inventory_with_multiple_service_labels`
```sh
$ samples/cli/sample-apps Platform publicSyncPsnDlcInventoryWithMultipleServiceLabels \
    --namespace 'string' \
    --userId 'string' \
    --body '{"serviceLabels": [1]}' \
    > result.txt
```

### Operation `sync_steam_dlc`
```sh
$ samples/cli/sample-apps Platform syncSteamDLC \
    --namespace 'string' \
    --userId 'string' \
    --body '{"appId": "string", "steamId": "string"}' \
    > result.txt
```

### Operation `sync_xbox_dlc`
```sh
$ samples/cli/sample-apps Platform syncXboxDLC \
    --namespace 'string' \
    --userId 'string' \
    --body '{"xstsToken": "string"}' \
    > result.txt
```

### Operation `public_query_user_entitlements`
```sh
$ samples/cli/sample-apps Platform publicQueryUserEntitlements \
    --namespace 'string' \
    --userId 'string' \
    --appType 'DEMO' \
    --entitlementClazz 'APP' \
    --entitlementName 'string' \
    --features '["string"]' \
    --itemId '["string"]' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_user_app_entitlement_by_app_id`
```sh
$ samples/cli/sample-apps Platform publicGetUserAppEntitlementByAppId \
    --namespace 'string' \
    --userId 'string' \
    --appId 'string' \
    > result.txt
```

### Operation `public_query_user_entitlements_by_app_type`
```sh
$ samples/cli/sample-apps Platform publicQueryUserEntitlementsByAppType \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --appType 'DEMO' \
    > result.txt
```

### Operation `public_get_user_entitlements_by_ids`
```sh
$ samples/cli/sample-apps Platform publicGetUserEntitlementsByIds \
    --namespace 'string' \
    --userId 'string' \
    --availablePlatformOnly false \
    --ids '["string"]' \
    > result.txt
```

### Operation `public_user_entitlement_history`
```sh
$ samples/cli/sample-apps Platform publicUserEntitlementHistory \
    --namespace 'string' \
    --userId 'string' \
    --endDate 'string' \
    --entitlementClazz 'APP' \
    --limit 1 \
    --offset 1 \
    --startDate 'string' \
    > result.txt
```

### Operation `public_exists_any_user_active_entitlement`
```sh
$ samples/cli/sample-apps Platform publicExistsAnyUserActiveEntitlement \
    --namespace 'string' \
    --userId 'string' \
    --appIds '["string"]' \
    --itemIds '["string"]' \
    --skus '["string"]' \
    > result.txt
```

### Operation `public_get_user_app_entitlement_ownership_by_app_id`
```sh
$ samples/cli/sample-apps Platform publicGetUserAppEntitlementOwnershipByAppId \
    --namespace 'string' \
    --userId 'string' \
    --appId 'string' \
    > result.txt
```

### Operation `public_get_user_entitlement_ownership_by_item_id`
```sh
$ samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemId \
    --namespace 'string' \
    --userId 'string' \
    --entitlementClazz 'APP' \
    --itemId 'string' \
    > result.txt
```

### Operation `public_get_user_entitlement_ownership_by_item_ids`
```sh
$ samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipByItemIds \
    --namespace 'string' \
    --userId 'string' \
    --ids '["string"]' \
    > result.txt
```

### Operation `public_get_user_entitlement_ownership_by_sku`
```sh
$ samples/cli/sample-apps Platform publicGetUserEntitlementOwnershipBySku \
    --namespace 'string' \
    --userId 'string' \
    --entitlementClazz 'APP' \
    --sku 'string' \
    > result.txt
```

### Operation `public_get_user_entitlement`
```sh
$ samples/cli/sample-apps Platform publicGetUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_consume_user_entitlement`
```sh
$ samples/cli/sample-apps Platform publicConsumeUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"metadata": {}, "options": ["string"], "requestId": "string", "useCount": 1}' \
    > result.txt
```

### Operation `public_sell_user_entitlement`
```sh
$ samples/cli/sample-apps Platform publicSellUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"requestId": "string", "useCount": 1}' \
    > result.txt
```

### Operation `public_split_user_entitlement`
```sh
$ samples/cli/sample-apps Platform publicSplitUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"metadata": {}, "useCount": 1}' \
    > result.txt
```

### Operation `public_transfer_user_entitlement`
```sh
$ samples/cli/sample-apps Platform publicTransferUserEntitlement \
    --entitlementId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"entitlementId": "string", "metadata": {}, "useCount": 1}' \
    > result.txt
```

### Operation `public_redeem_code`
```sh
$ samples/cli/sample-apps Platform publicRedeemCode \
    --namespace 'string' \
    --userId 'string' \
    --body '{"code": "string", "language": "string", "region": "string"}' \
    > result.txt
```

### Operation `public_fulfill_apple_iap_item`
```sh
$ samples/cli/sample-apps Platform publicFulfillAppleIAPItem \
    --namespace 'string' \
    --userId 'string' \
    --body '{"excludeOldTransactions": false, "language": "string", "productId": "string", "receiptData": "string", "region": "string", "transactionId": "string"}' \
    > result.txt
```

### Operation `sync_epic_games_inventory`
```sh
$ samples/cli/sample-apps Platform syncEpicGamesInventory \
    --namespace 'string' \
    --userId 'string' \
    --body '{"epicGamesJwtToken": "string"}' \
    > result.txt
```

### Operation `public_fulfill_google_iap_item`
```sh
$ samples/cli/sample-apps Platform publicFulfillGoogleIAPItem \
    --namespace 'string' \
    --userId 'string' \
    --body '{"autoAck": false, "autoConsume": false, "language": "string", "orderId": "string", "packageName": "string", "productId": "string", "purchaseTime": 1, "purchaseToken": "string", "region": "string", "subscriptionPurchase": false}' \
    > result.txt
```

### Operation `sync_oculus_subscriptions`
```sh
$ samples/cli/sample-apps Platform syncOculusSubscriptions \
    --namespace 'string' \
    --userId 'string' \
    --body '{"skus": ["string"]}' \
    > result.txt
```

### Operation `sync_oculus_consumable_entitlements`
```sh
$ samples/cli/sample-apps Platform syncOculusConsumableEntitlements \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_reconcile_play_station_store`
```sh
$ samples/cli/sample-apps Platform publicReconcilePlayStationStore \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "price": 3.14, "productId": "string", "serviceLabel": 1}' \
    > result.txt
```

### Operation `public_reconcile_play_station_store_with_multiple_service_labels`
```sh
$ samples/cli/sample-apps Platform publicReconcilePlayStationStoreWithMultipleServiceLabels \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "price": 3.14, "productId": "string", "serviceLabels": [1]}' \
    > result.txt
```

### Operation `sync_steam_inventory`
```sh
$ samples/cli/sample-apps Platform syncSteamInventory \
    --namespace 'string' \
    --userId 'string' \
    --body '{"appId": "string", "currencyCode": "string", "language": "string", "price": 3.14, "productId": "string", "region": "string", "steamId": "string"}' \
    > result.txt
```

### Operation `sync_steam_abnormal_transaction`
```sh
$ samples/cli/sample-apps Platform syncSteamAbnormalTransaction \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `sync_steam_iap_by_transaction`
```sh
$ samples/cli/sample-apps Platform syncSteamIAPByTransaction \
    --namespace 'string' \
    --userId 'string' \
    --body '{"orderId": "string"}' \
    > result.txt
```

### Operation `public_query_user_third_party_subscription`
```sh
$ samples/cli/sample-apps Platform publicQueryUserThirdPartySubscription \
    --namespace 'string' \
    --platform 'APPLE' \
    --userId 'string' \
    --activeOnly false \
    --groupId 'string' \
    --limit 1 \
    --offset 1 \
    --productId 'string' \
    > result.txt
```

### Operation `sync_twitch_drops_entitlement_1`
```sh
$ samples/cli/sample-apps Platform syncTwitchDropsEntitlement1 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"gameId": "string", "language": "string", "region": "string"}' \
    > result.txt
```

### Operation `sync_xbox_inventory`
```sh
$ samples/cli/sample-apps Platform syncXboxInventory \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "price": 3.14, "productId": "string", "xstsToken": "string"}' \
    > result.txt
```

### Operation `public_query_user_orders`
```sh
$ samples/cli/sample-apps Platform publicQueryUserOrders \
    --namespace 'string' \
    --userId 'string' \
    --discounted false \
    --itemId 'string' \
    --limit 1 \
    --offset 1 \
    --status 'CHARGEBACK' \
    > result.txt
```

### Operation `public_create_user_order`
```sh
$ samples/cli/sample-apps Platform publicCreateUserOrder \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "discountCodes": ["string"], "discountedPrice": 1, "ext": {"string": {}}, "itemId": "string", "language": "string", "price": 1, "quantity": 1, "region": "string", "returnUrl": "string", "sectionId": "string"}' \
    > result.txt
```

### Operation `public_preview_order_price`
```sh
$ samples/cli/sample-apps Platform publicPreviewOrderPrice \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "discountCodes": ["string"], "discountedPrice": 1, "itemId": "string", "price": 1, "quantity": 1}' \
    > result.txt
```

### Operation `public_get_user_order`
```sh
$ samples/cli/sample-apps Platform publicGetUserOrder \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_cancel_user_order`
```sh
$ samples/cli/sample-apps Platform publicCancelUserOrder \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_user_order_histories`
```sh
$ samples/cli/sample-apps Platform publicGetUserOrderHistories \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_download_user_order_receipt`
```sh
$ samples/cli/sample-apps Platform publicDownloadUserOrderReceipt \
    --namespace 'string' \
    --orderNo 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_payment_accounts`
```sh
$ samples/cli/sample-apps Platform publicGetPaymentAccounts \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_delete_payment_account`
```sh
$ samples/cli/sample-apps Platform publicDeletePaymentAccount \
    --id 'string' \
    --namespace 'string' \
    --type 'card' \
    --userId 'string' \
    > result.txt
```

### Operation `public_list_active_sections`
```sh
$ samples/cli/sample-apps Platform publicListActiveSections \
    --namespace 'string' \
    --userId 'string' \
    --autoCalcEstimatedPrice false \
    --language 'string' \
    --region 'string' \
    --storeId 'string' \
    --viewId 'string' \
    > result.txt
```

### Operation `public_query_user_subscriptions`
```sh
$ samples/cli/sample-apps Platform publicQueryUserSubscriptions \
    --namespace 'string' \
    --userId 'string' \
    --chargeStatus 'CHARGED' \
    --itemId 'string' \
    --limit 1 \
    --offset 1 \
    --sku 'string' \
    --status 'ACTIVE' \
    --subscribedBy 'PLATFORM' \
    > result.txt
```

### Operation `public_subscribe_subscription`
```sh
$ samples/cli/sample-apps Platform publicSubscribeSubscription \
    --namespace 'string' \
    --userId 'string' \
    --body '{"currencyCode": "string", "itemId": "string", "language": "string", "region": "string", "returnUrl": "string", "source": "string"}' \
    > result.txt
```

### Operation `public_check_user_subscription_subscribable_by_item_id`
```sh
$ samples/cli/sample-apps Platform publicCheckUserSubscriptionSubscribableByItemId \
    --namespace 'string' \
    --userId 'string' \
    --itemId 'string' \
    > result.txt
```

### Operation `public_get_user_subscription`
```sh
$ samples/cli/sample-apps Platform publicGetUserSubscription \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_change_subscription_billing_account`
```sh
$ samples/cli/sample-apps Platform publicChangeSubscriptionBillingAccount \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_cancel_subscription`
```sh
$ samples/cli/sample-apps Platform publicCancelSubscription \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    --body '{"immediate": false, "reason": "string"}' \
    > result.txt
```

### Operation `public_get_user_subscription_billing_histories`
```sh
$ samples/cli/sample-apps Platform publicGetUserSubscriptionBillingHistories \
    --namespace 'string' \
    --subscriptionId 'string' \
    --userId 'string' \
    --excludeFree false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_list_views`
```sh
$ samples/cli/sample-apps Platform publicListViews \
    --namespace 'string' \
    --userId 'string' \
    --language 'string' \
    --storeId 'string' \
    > result.txt
```

### Operation `public_get_wallet`
```sh
$ samples/cli/sample-apps Platform publicGetWallet \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_list_user_wallet_transactions`
```sh
$ samples/cli/sample-apps Platform publicListUserWalletTransactions \
    --currencyCode 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_my_dlc_content`
```sh
$ samples/cli/sample-apps Platform publicGetMyDLCContent \
    --includeAllNamespaces false \
    --type 'EPICGAMES' \
    > result.txt
```

### Operation `query_fulfillments`
```sh
$ samples/cli/sample-apps Platform queryFulfillments \
    --namespace 'string' \
    --endTime 'string' \
    --limit 1 \
    --offset 1 \
    --startTime 'string' \
    --state 'FULFILLED' \
    --transactionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `query_items_v2`
```sh
$ samples/cli/sample-apps Platform queryItemsV2 \
    --namespace 'string' \
    --appType 'DEMO' \
    --availableDate 'string' \
    --baseAppId 'string' \
    --categoryPath 'string' \
    --features 'string' \
    --includeSubCategoryItem false \
    --itemName 'string' \
    --itemStatus 'ACTIVE' \
    --itemType '["APP"]' \
    --limit 1 \
    --offset 1 \
    --region 'string' \
    --sectionExclusive false \
    --sortBy '["name"]' \
    --storeId 'string' \
    --tags 'string' \
    --targetNamespace 'string' \
    --withTotal false \
    > result.txt
```

### Operation `import_store_1`
```sh
$ samples/cli/sample-apps Platform importStore1 \
    --namespace 'string' \
    --storeId 'string' \
    --strictMode false \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `export_store_1`
```sh
$ samples/cli/sample-apps Platform exportStore1 \
    --namespace 'string' \
    --storeId 'string' \
    --body '{"itemIds": ["string"]}' \
    > result.txt
```

### Operation `fulfill_rewards_v2`
```sh
$ samples/cli/sample-apps Platform fulfillRewardsV2 \
    --namespace 'string' \
    --userId 'string' \
    --body '{"entitlementCollectionId": "string", "entitlementOrigin": "Epic", "metadata": {"string": {}}, "origin": "Epic", "rewards": [{}], "source": "ACHIEVEMENT", "transactionId": "string"}' \
    > result.txt
```

### Operation `v2_public_fulfill_apple_iap_item`
```sh
$ samples/cli/sample-apps Platform v2PublicFulfillAppleIAPItem \
    --namespace 'string' \
    --userId 'string' \
    --body '{"transactionId": "string"}' \
    > result.txt
```

### Operation `fulfill_items_v3`
```sh
$ samples/cli/sample-apps Platform fulfillItemsV3 \
    --namespace 'string' \
    --transactionId 'string' \
    --userId 'string' \
    --body '{"items": [{}]}' \
    > result.txt
```

### Operation `retry_fulfill_items_v3`
```sh
$ samples/cli/sample-apps Platform retryFulfillItemsV3 \
    --namespace 'string' \
    --transactionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `revoke_items_v3`
```sh
$ samples/cli/sample-apps Platform revokeItemsV3 \
    --namespace 'string' \
    --transactionId 'string' \
    --userId 'string' \
    > result.txt
```

