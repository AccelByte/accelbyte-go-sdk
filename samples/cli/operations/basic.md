## Go Extend SDK CLI Sample App Operation Index for Basic service.

### Operation `get_namespaces`
```sh
$ samples/cli/sample-apps Basic getNamespaces \
    --activeOnly false \
    > result.txt
```

### Operation `create_namespace`
```sh
$ samples/cli/sample-apps Basic createNamespace \
    --body '{"displayName": "string", "namespace": "string"}' \
    > result.txt
```

### Operation `get_namespace`
```sh
$ samples/cli/sample-apps Basic getNamespace \
    --namespace 'string' \
    --activeOnly false \
    > result.txt
```

### Operation `delete_namespace`
```sh
$ samples/cli/sample-apps Basic deleteNamespace \
    --namespace 'string' \
    > result.txt
```

### Operation `update_namespace`
```sh
$ samples/cli/sample-apps Basic updateNamespace \
    --namespace 'string' \
    --body '{"displayName": "string"}' \
    > result.txt
```

### Operation `get_child_namespaces`
```sh
$ samples/cli/sample-apps Basic getChildNamespaces \
    --namespace 'string' \
    --activeOnly false \
    > result.txt
```

### Operation `create_config`
```sh
$ samples/cli/sample-apps Basic createConfig \
    --namespace 'string' \
    --body '{"key": "string", "value": "string"}' \
    > result.txt
```

### Operation `get_config`
```sh
$ samples/cli/sample-apps Basic getConfig \
    --configKey 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_config`
```sh
$ samples/cli/sample-apps Basic deleteConfig \
    --configKey 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_config`
```sh
$ samples/cli/sample-apps Basic updateConfig \
    --configKey 'string' \
    --namespace 'string' \
    --body '{"value": "string"}' \
    > result.txt
```

### Operation `get_namespace_context`
```sh
$ samples/cli/sample-apps Basic getNamespaceContext \
    --namespace 'string' \
    --refreshOnCacheMiss false \
    > result.txt
```

### Operation `generated_upload_url`
```sh
$ samples/cli/sample-apps Basic generatedUploadUrl \
    --folder 'string' \
    --namespace 'string' \
    --fileType 'string' \
    > result.txt
```

### Operation `get_game_namespaces`
```sh
$ samples/cli/sample-apps Basic getGameNamespaces \
    --namespace 'string' \
    --activeOnly false \
    > result.txt
```

### Operation `get_country_groups`
```sh
$ samples/cli/sample-apps Basic getCountryGroups \
    --namespace 'string' \
    --groupCode 'string' \
    > result.txt
```

### Operation `add_country_group`
```sh
$ samples/cli/sample-apps Basic addCountryGroup \
    --namespace 'string' \
    --body '{"countries": [{}], "countryGroupCode": "string", "countryGroupName": "string"}' \
    > result.txt
```

### Operation `update_country_group`
```sh
$ samples/cli/sample-apps Basic updateCountryGroup \
    --countryGroupCode 'string' \
    --namespace 'string' \
    --body '{"countries": [{}], "countryGroupName": "string"}' \
    > result.txt
```

### Operation `delete_country_group`
```sh
$ samples/cli/sample-apps Basic deleteCountryGroup \
    --countryGroupCode 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_languages`
```sh
$ samples/cli/sample-apps Basic getLanguages \
    --namespace 'string' \
    > result.txt
```

### Operation `get_time_zones`
```sh
$ samples/cli/sample-apps Basic getTimeZones \
    --namespace 'string' \
    > result.txt
```

### Operation `get_user_profile_info_by_public_id`
```sh
$ samples/cli/sample-apps Basic getUserProfileInfoByPublicId \
    --namespace 'string' \
    --publicId 'string' \
    > result.txt
```

### Operation `admin_get_user_profile_public_info_by_ids`
```sh
$ samples/cli/sample-apps Basic adminGetUserProfilePublicInfoByIds \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `get_namespace_publisher`
```sh
$ samples/cli/sample-apps Basic getNamespacePublisher \
    --namespace 'string' \
    > result.txt
```

### Operation `get_publisher_config`
```sh
$ samples/cli/sample-apps Basic getPublisherConfig \
    --configKey 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `change_namespace_status`
```sh
$ samples/cli/sample-apps Basic changeNamespaceStatus \
    --namespace 'string' \
    --body '{"status": "ACTIVE"}' \
    > result.txt
```

### Operation `anonymize_user_profile`
```sh
$ samples/cli/sample-apps Basic anonymizeUserProfile \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `generated_user_upload_content_url`
```sh
$ samples/cli/sample-apps Basic generatedUserUploadContentUrl \
    --namespace 'string' \
    --userId 'string' \
    --category 'string' \
    --fileType 'string' \
    > result.txt
```

### Operation `get_user_profile_info`
```sh
$ samples/cli/sample-apps Basic getUserProfileInfo \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_user_profile`
```sh
$ samples/cli/sample-apps Basic updateUserProfile \
    --namespace 'string' \
    --userId 'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "status": "ACTIVE", "timeZone": "string", "zipCode": "string"}' \
    > result.txt
```

### Operation `delete_user_profile`
```sh
$ samples/cli/sample-apps Basic deleteUserProfile \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_custom_attributes_info`
```sh
$ samples/cli/sample-apps Basic getCustomAttributesInfo \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_custom_attributes_partially`
```sh
$ samples/cli/sample-apps Basic updateCustomAttributesPartially \
    --namespace 'string' \
    --userId 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `get_private_custom_attributes_info`
```sh
$ samples/cli/sample-apps Basic getPrivateCustomAttributesInfo \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_private_custom_attributes_partially`
```sh
$ samples/cli/sample-apps Basic updatePrivateCustomAttributesPartially \
    --namespace 'string' \
    --userId 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `update_user_profile_status`
```sh
$ samples/cli/sample-apps Basic updateUserProfileStatus \
    --namespace 'string' \
    --userId 'string' \
    --body '{"status": "ACTIVE"}' \
    > result.txt
```

### Operation `public_get_time`
```sh
$ samples/cli/sample-apps Basic publicGetTime \
    > result.txt
```

### Operation `public_get_namespaces`
```sh
$ samples/cli/sample-apps Basic publicGetNamespaces \
    --activeOnly false \
    > result.txt
```

### Operation `get_namespace_1`
```sh
$ samples/cli/sample-apps Basic getNamespace1 \
    --namespace 'string' \
    > result.txt
```

### Operation `public_generated_upload_url`
```sh
$ samples/cli/sample-apps Basic publicGeneratedUploadUrl \
    --folder 'string' \
    --namespace 'string' \
    --fileType 'string' \
    > result.txt
```

### Operation `public_get_languages`
```sh
$ samples/cli/sample-apps Basic publicGetLanguages \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_time_zones`
```sh
$ samples/cli/sample-apps Basic publicGetTimeZones \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_user_profile_public_info_by_ids`
```sh
$ samples/cli/sample-apps Basic publicGetUserProfilePublicInfoByIds \
    --namespace 'string' \
    --userIds 'string' \
    > result.txt
```

### Operation `public_bulk_get_user_profile_public_info`
```sh
$ samples/cli/sample-apps Basic publicBulkGetUserProfilePublicInfo \
    --namespace 'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `public_get_user_profile_info_by_public_id`
```sh
$ samples/cli/sample-apps Basic publicGetUserProfileInfoByPublicId \
    --namespace 'string' \
    --publicId 'string' \
    > result.txt
```

### Operation `public_get_namespace_publisher`
```sh
$ samples/cli/sample-apps Basic publicGetNamespacePublisher \
    --namespace 'string' \
    > result.txt
```

### Operation `get_my_profile_info`
```sh
$ samples/cli/sample-apps Basic getMyProfileInfo \
    --namespace 'string' \
    > result.txt
```

### Operation `update_my_profile`
```sh
$ samples/cli/sample-apps Basic updateMyProfile \
    --namespace 'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "timeZone": "string", "zipCode": "string"}' \
    > result.txt
```

### Operation `create_my_profile`
```sh
$ samples/cli/sample-apps Basic createMyProfile \
    --namespace 'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "timeZone": "string"}' \
    > result.txt
```

### Operation `get_my_private_custom_attributes_info`
```sh
$ samples/cli/sample-apps Basic getMyPrivateCustomAttributesInfo \
    --namespace 'string' \
    > result.txt
```

### Operation `update_my_private_custom_attributes_partially`
```sh
$ samples/cli/sample-apps Basic updateMyPrivateCustomAttributesPartially \
    --namespace 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `get_my_zip_code`
```sh
$ samples/cli/sample-apps Basic getMyZipCode \
    --namespace 'string' \
    > result.txt
```

### Operation `update_my_zip_code`
```sh
$ samples/cli/sample-apps Basic updateMyZipCode \
    --namespace 'string' \
    --userZipCodeUpdate '{"zipCode": "string"}' \
    > result.txt
```

### Operation `public_generated_user_upload_content_url`
```sh
$ samples/cli/sample-apps Basic publicGeneratedUserUploadContentUrl \
    --namespace 'string' \
    --userId 'string' \
    --category 'string' \
    --fileType 'string' \
    > result.txt
```

### Operation `public_get_user_profile_info`
```sh
$ samples/cli/sample-apps Basic publicGetUserProfileInfo \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_update_user_profile`
```sh
$ samples/cli/sample-apps Basic publicUpdateUserProfile \
    --namespace 'string' \
    --userId 'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "timeZone": "string", "zipCode": "string"}' \
    > result.txt
```

### Operation `public_create_user_profile`
```sh
$ samples/cli/sample-apps Basic publicCreateUserProfile \
    --namespace 'string' \
    --userId 'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "timeZone": "string"}' \
    > result.txt
```

### Operation `public_get_custom_attributes_info`
```sh
$ samples/cli/sample-apps Basic publicGetCustomAttributesInfo \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_update_custom_attributes_partially`
```sh
$ samples/cli/sample-apps Basic publicUpdateCustomAttributesPartially \
    --namespace 'string' \
    --userId 'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `public_get_user_profile_public_info`
```sh
$ samples/cli/sample-apps Basic publicGetUserProfilePublicInfo \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_update_user_profile_status`
```sh
$ samples/cli/sample-apps Basic publicUpdateUserProfileStatus \
    --namespace 'string' \
    --userId 'string' \
    --body '{"status": "ACTIVE"}' \
    > result.txt
```

