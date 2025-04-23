## Go Extend SDK CLI Sample App Operation Index for Ugc service.

### Operation `single_admin_get_channel`
```sh
$ samples/cli/sample-apps Ugc singleAdminGetChannel \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_channel`
```sh
$ samples/cli/sample-apps Ugc adminCreateChannel \
    --namespace 'string' \
    --body '{"id": "string", "name": "string"}' \
    > result.txt
```

### Operation `single_admin_update_channel`
```sh
$ samples/cli/sample-apps Ugc singleAdminUpdateChannel \
    --channelId 'string' \
    --namespace 'string' \
    --body '{"name": "string"}' \
    > result.txt
```

### Operation `single_admin_delete_channel`
```sh
$ samples/cli/sample-apps Ugc singleAdminDeleteChannel \
    --channelId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_upload_content_s3`
```sh
$ samples/cli/sample-apps Ugc adminUploadContentS3 \
    --channelId 'string' \
    --namespace 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `single_admin_update_content_s3`
```sh
$ samples/cli/sample-apps Ugc singleAdminUpdateContentS3 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    > result.txt
```

### Operation `admin_search_channel_specific_content`
```sh
$ samples/cli/sample-apps Ugc adminSearchChannelSpecificContent \
    --channelId 'string' \
    --namespace 'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `single_admin_delete_content`
```sh
$ samples/cli/sample-apps Ugc singleAdminDeleteContent \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `single_admin_get_content`
```sh
$ samples/cli/sample-apps Ugc singleAdminGetContent \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_content_bulk`
```sh
$ samples/cli/sample-apps Ugc adminGetContentBulk \
    --namespace 'string' \
    --body '{"contentIds": ["string"]}' \
    > result.txt
```

### Operation `admin_search_content`
```sh
$ samples/cli/sample-apps Ugc adminSearchContent \
    --namespace 'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_content_bulk_by_share_codes`
```sh
$ samples/cli/sample-apps Ugc adminGetContentBulkByShareCodes \
    --namespace 'string' \
    --body '{"shareCodes": ["string"]}' \
    > result.txt
```

### Operation `admin_get_user_content_by_share_code`
```sh
$ samples/cli/sample-apps Ugc adminGetUserContentByShareCode \
    --namespace 'string' \
    --shareCode 'string' \
    > result.txt
```

### Operation `admin_get_specific_content`
```sh
$ samples/cli/sample-apps Ugc adminGetSpecificContent \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_download_content_preview`
```sh
$ samples/cli/sample-apps Ugc adminDownloadContentPreview \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `rollback_content_version`
```sh
$ samples/cli/sample-apps Ugc rollbackContentVersion \
    --contentId 'string' \
    --namespace 'string' \
    --versionId 'string' \
    > result.txt
```

### Operation `admin_update_screenshots`
```sh
$ samples/cli/sample-apps Ugc adminUpdateScreenshots \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `admin_upload_content_screenshot`
```sh
$ samples/cli/sample-apps Ugc adminUploadContentScreenshot \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `admin_delete_content_screenshot`
```sh
$ samples/cli/sample-apps Ugc adminDeleteContentScreenshot \
    --contentId 'string' \
    --namespace 'string' \
    --screenshotId 'string' \
    > result.txt
```

### Operation `list_content_versions`
```sh
$ samples/cli/sample-apps Ugc listContentVersions \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `single_admin_get_all_groups`
```sh
$ samples/cli/sample-apps Ugc singleAdminGetAllGroups \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_group`
```sh
$ samples/cli/sample-apps Ugc adminCreateGroup \
    --namespace 'string' \
    --body '{"contents": ["string"], "name": "string"}' \
    > result.txt
```

### Operation `single_admin_get_group`
```sh
$ samples/cli/sample-apps Ugc singleAdminGetGroup \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `single_admin_update_group`
```sh
$ samples/cli/sample-apps Ugc singleAdminUpdateGroup \
    --groupId 'string' \
    --namespace 'string' \
    --body '{"contents": ["string"], "name": "string"}' \
    > result.txt
```

### Operation `single_admin_delete_group`
```sh
$ samples/cli/sample-apps Ugc singleAdminDeleteGroup \
    --groupId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `single_admin_get_group_contents`
```sh
$ samples/cli/sample-apps Ugc singleAdminGetGroupContents \
    --groupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_tag`
```sh
$ samples/cli/sample-apps Ugc adminGetTag \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_tag`
```sh
$ samples/cli/sample-apps Ugc adminCreateTag \
    --namespace 'string' \
    --body '{"tag": "string"}' \
    > result.txt
```

### Operation `admin_update_tag`
```sh
$ samples/cli/sample-apps Ugc adminUpdateTag \
    --namespace 'string' \
    --tagId 'string' \
    --body '{"tag": "string"}' \
    > result.txt
```

### Operation `admin_delete_tag`
```sh
$ samples/cli/sample-apps Ugc adminDeleteTag \
    --namespace 'string' \
    --tagId 'string' \
    > result.txt
```

### Operation `admin_get_type`
```sh
$ samples/cli/sample-apps Ugc adminGetType \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_create_type`
```sh
$ samples/cli/sample-apps Ugc adminCreateType \
    --namespace 'string' \
    --body '{"subtype": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_update_type`
```sh
$ samples/cli/sample-apps Ugc adminUpdateType \
    --namespace 'string' \
    --typeId 'string' \
    --body '{"subtype": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_delete_type`
```sh
$ samples/cli/sample-apps Ugc adminDeleteType \
    --namespace 'string' \
    --typeId 'string' \
    > result.txt
```

### Operation `admin_get_channel`
```sh
$ samples/cli/sample-apps Ugc adminGetChannel \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_channels`
```sh
$ samples/cli/sample-apps Ugc adminDeleteAllUserChannels \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_channel`
```sh
$ samples/cli/sample-apps Ugc adminUpdateChannel \
    --channelId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"name": "string"}' \
    > result.txt
```

### Operation `admin_delete_channel`
```sh
$ samples/cli/sample-apps Ugc adminDeleteChannel \
    --channelId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_content_s3_by_share_code`
```sh
$ samples/cli/sample-apps Ugc adminUpdateContentS3ByShareCode \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    > result.txt
```

### Operation `admin_update_content_s3`
```sh
$ samples/cli/sample-apps Ugc adminUpdateContentS3 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    > result.txt
```

### Operation `delete_content_by_share_code`
```sh
$ samples/cli/sample-apps Ugc deleteContentByShareCode \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_delete_content`
```sh
$ samples/cli/sample-apps Ugc adminDeleteContent \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_content`
```sh
$ samples/cli/sample-apps Ugc adminGetContent \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_contents`
```sh
$ samples/cli/sample-apps Ugc adminDeleteAllUserContents \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_hide_user_content`
```sh
$ samples/cli/sample-apps Ugc adminHideUserContent \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"isHidden": false}' \
    > result.txt
```

### Operation `admin_get_all_groups`
```sh
$ samples/cli/sample-apps Ugc adminGetAllGroups \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_group`
```sh
$ samples/cli/sample-apps Ugc adminDeleteAllUserGroup \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_group`
```sh
$ samples/cli/sample-apps Ugc adminGetGroup \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_group`
```sh
$ samples/cli/sample-apps Ugc adminUpdateGroup \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contents": ["string"], "name": "string"}' \
    > result.txt
```

### Operation `admin_delete_group`
```sh
$ samples/cli/sample-apps Ugc adminDeleteGroup \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_group_contents`
```sh
$ samples/cli/sample-apps Ugc adminGetGroupContents \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_delete_all_user_states`
```sh
$ samples/cli/sample-apps Ugc adminDeleteAllUserStates \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `search_channel_specific_content`
```sh
$ samples/cli/sample-apps Ugc searchChannelSpecificContent \
    --channelId 'string' \
    --namespace 'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_search_content`
```sh
$ samples/cli/sample-apps Ugc publicSearchContent \
    --namespace 'string' \
    --creator 'string' \
    --ishidden 'string' \
    --isofficial 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_content_bulk`
```sh
$ samples/cli/sample-apps Ugc publicGetContentBulk \
    --namespace 'string' \
    --body '{"contentIds": ["string"]}' \
    > result.txt
```

### Operation `get_followed_content`
```sh
$ samples/cli/sample-apps Ugc getFollowedContent \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_liked_content`
```sh
$ samples/cli/sample-apps Ugc getLikedContent \
    --namespace 'string' \
    --isofficial false \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    --subtype 'string' \
    --tags '["string"]' \
    --type 'string' \
    > result.txt
```

### Operation `public_get_content_bulk_by_share_codes`
```sh
$ samples/cli/sample-apps Ugc publicGetContentBulkByShareCodes \
    --namespace 'string' \
    --body '{"shareCodes": ["string"]}' \
    > result.txt
```

### Operation `public_download_content_by_share_code`
```sh
$ samples/cli/sample-apps Ugc publicDownloadContentByShareCode \
    --namespace 'string' \
    --shareCode 'string' \
    > result.txt
```

### Operation `public_download_content_by_content_id`
```sh
$ samples/cli/sample-apps Ugc publicDownloadContentByContentID \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `add_download_count`
```sh
$ samples/cli/sample-apps Ugc addDownloadCount \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_content_like_status`
```sh
$ samples/cli/sample-apps Ugc updateContentLikeStatus \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"likeStatus": false}' \
    > result.txt
```

### Operation `public_download_content_preview`
```sh
$ samples/cli/sample-apps Ugc publicDownloadContentPreview \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_tag`
```sh
$ samples/cli/sample-apps Ugc getTag \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_type`
```sh
$ samples/cli/sample-apps Ugc getType \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_search_creator`
```sh
$ samples/cli/sample-apps Ugc publicSearchCreator \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --orderby 'string' \
    --sortby 'string' \
    > result.txt
```

### Operation `get_followed_users`
```sh
$ samples/cli/sample-apps Ugc getFollowedUsers \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_creator`
```sh
$ samples/cli/sample-apps Ugc publicGetCreator \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_channels`
```sh
$ samples/cli/sample-apps Ugc getChannels \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `public_create_channel`
```sh
$ samples/cli/sample-apps Ugc publicCreateChannel \
    --namespace 'string' \
    --userId 'string' \
    --body '{"name": "string"}' \
    > result.txt
```

### Operation `delete_all_user_channel`
```sh
$ samples/cli/sample-apps Ugc deleteAllUserChannel \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_channel`
```sh
$ samples/cli/sample-apps Ugc updateChannel \
    --channelId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"name": "string"}' \
    > result.txt
```

### Operation `delete_channel`
```sh
$ samples/cli/sample-apps Ugc deleteChannel \
    --channelId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `create_content_s3`
```sh
$ samples/cli/sample-apps Ugc createContentS3 \
    --channelId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "preview": "string", "previewMetadata": {}, "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `public_update_content_by_share_code`
```sh
$ samples/cli/sample-apps Ugc publicUpdateContentByShareCode \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    > result.txt
```

### Operation `update_content_s3`
```sh
$ samples/cli/sample-apps Ugc updateContentS3 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "payload": "string", "preview": "string", "previewMetadata": {}, "subType": "string", "tags": ["string"], "type": "string", "updateContentFile": false}' \
    > result.txt
```

### Operation `public_delete_content_by_share_code`
```sh
$ samples/cli/sample-apps Ugc publicDeleteContentByShareCode \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `delete_content`
```sh
$ samples/cli/sample-apps Ugc deleteContent \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_content_share_code`
```sh
$ samples/cli/sample-apps Ugc updateContentShareCode \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"shareCode": "string"}' \
    > result.txt
```

### Operation `public_get_user_content`
```sh
$ samples/cli/sample-apps Ugc publicGetUserContent \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `delete_all_user_contents`
```sh
$ samples/cli/sample-apps Ugc deleteAllUserContents \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_screenshots`
```sh
$ samples/cli/sample-apps Ugc updateScreenshots \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `upload_content_screenshot`
```sh
$ samples/cli/sample-apps Ugc uploadContentScreenshot \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `delete_content_screenshot`
```sh
$ samples/cli/sample-apps Ugc deleteContentScreenshot \
    --contentId 'string' \
    --namespace 'string' \
    --screenshotId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_user_follow_status`
```sh
$ samples/cli/sample-apps Ugc updateUserFollowStatus \
    --namespace 'string' \
    --userId 'string' \
    --body '{"followStatus": false}' \
    > result.txt
```

### Operation `get_public_followers`
```sh
$ samples/cli/sample-apps Ugc getPublicFollowers \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_public_following`
```sh
$ samples/cli/sample-apps Ugc getPublicFollowing \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_groups`
```sh
$ samples/cli/sample-apps Ugc getGroups \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_group`
```sh
$ samples/cli/sample-apps Ugc createGroup \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contents": ["string"], "name": "string"}' \
    > result.txt
```

### Operation `delete_all_user_group`
```sh
$ samples/cli/sample-apps Ugc deleteAllUserGroup \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_group`
```sh
$ samples/cli/sample-apps Ugc getGroup \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_group`
```sh
$ samples/cli/sample-apps Ugc updateGroup \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contents": ["string"], "name": "string"}' \
    > result.txt
```

### Operation `delete_group`
```sh
$ samples/cli/sample-apps Ugc deleteGroup \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_group_content`
```sh
$ samples/cli/sample-apps Ugc getGroupContent \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `delete_all_user_states`
```sh
$ samples/cli/sample-apps Ugc deleteAllUserStates \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_get_content_by_channel_idv2`
```sh
$ samples/cli/sample-apps Ugc adminGetContentByChannelIDV2 \
    --channelId 'string' \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'string' \
    > result.txt
```

### Operation `admin_create_content_v2`
```sh
$ samples/cli/sample-apps Ugc adminCreateContentV2 \
    --channelId 'string' \
    --namespace 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_delete_official_content_v2`
```sh
$ samples/cli/sample-apps Ugc adminDeleteOfficialContentV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_official_content_v2`
```sh
$ samples/cli/sample-apps Ugc adminUpdateOfficialContentV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {"string": {}}, "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_copy_content`
```sh
$ samples/cli/sample-apps Ugc adminCopyContent \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"customAttributes": {"string": {}}, "name": "string", "subType": "string", "tags": ["string"], "targetChannelId": "string", "type": "string"}' \
    > result.txt
```

### Operation `admin_update_official_content_file_location`
```sh
$ samples/cli/sample-apps Ugc adminUpdateOfficialContentFileLocation \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"fileExtension": "string", "fileLocation": "string"}' \
    > result.txt
```

### Operation `admin_generate_official_content_upload_urlv2`
```sh
$ samples/cli/sample-apps Ugc adminGenerateOfficialContentUploadURLV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"contentType": "string", "fileExtension": "string"}' \
    > result.txt
```

### Operation `admin_get_configs`
```sh
$ samples/cli/sample-apps Ugc adminGetConfigs \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_update_config`
```sh
$ samples/cli/sample-apps Ugc adminUpdateConfig \
    --key 'string' \
    --namespace 'string' \
    --body '{"value": "string"}' \
    > result.txt
```

### Operation `admin_list_content_v2`
```sh
$ samples/cli/sample-apps Ugc adminListContentV2 \
    --namespace 'string' \
    --isOfficial false \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'string' \
    --subType 'string' \
    --tags '["string"]' \
    --type 'string' \
    > result.txt
```

### Operation `admin_bulk_get_content_by_i_ds_v2`
```sh
$ samples/cli/sample-apps Ugc adminBulkGetContentByIDsV2 \
    --namespace 'string' \
    --body '{"contentIds": ["string"]}' \
    > result.txt
```

### Operation `admin_get_content_bulk_by_share_codes_v2`
```sh
$ samples/cli/sample-apps Ugc adminGetContentBulkByShareCodesV2 \
    --namespace 'string' \
    --body '{"shareCodes": ["string"]}' \
    > result.txt
```

### Operation `admin_get_content_by_share_code_v2`
```sh
$ samples/cli/sample-apps Ugc adminGetContentByShareCodeV2 \
    --namespace 'string' \
    --shareCode 'string' \
    > result.txt
```

### Operation `admin_get_content_by_content_idv2`
```sh
$ samples/cli/sample-apps Ugc adminGetContentByContentIDV2 \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `rollback_content_version_v2`
```sh
$ samples/cli/sample-apps Ugc rollbackContentVersionV2 \
    --contentId 'string' \
    --namespace 'string' \
    --versionId 'string' \
    > result.txt
```

### Operation `admin_update_screenshots_v2`
```sh
$ samples/cli/sample-apps Ugc adminUpdateScreenshotsV2 \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `admin_upload_content_screenshot_v2`
```sh
$ samples/cli/sample-apps Ugc adminUploadContentScreenshotV2 \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `admin_delete_content_screenshot_v2`
```sh
$ samples/cli/sample-apps Ugc adminDeleteContentScreenshotV2 \
    --contentId 'string' \
    --namespace 'string' \
    --screenshotId 'string' \
    > result.txt
```

### Operation `list_content_versions_v2`
```sh
$ samples/cli/sample-apps Ugc listContentVersionsV2 \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_get_official_group_contents_v2`
```sh
$ samples/cli/sample-apps Ugc adminGetOfficialGroupContentsV2 \
    --groupId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_list_staging_contents`
```sh
$ samples/cli/sample-apps Ugc adminListStagingContents \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --status 'string' \
    > result.txt
```

### Operation `admin_get_staging_content_by_id`
```sh
$ samples/cli/sample-apps Ugc adminGetStagingContentByID \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_approve_staging_content`
```sh
$ samples/cli/sample-apps Ugc adminApproveStagingContent \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"approved": false, "note": "string"}' \
    > result.txt
```

### Operation `admin_update_content_by_share_code_v2`
```sh
$ samples/cli/sample-apps Ugc adminUpdateContentByShareCodeV2 \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    --body '{"customAttributes": {"string": {}}, "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_delete_content_by_share_code_v2`
```sh
$ samples/cli/sample-apps Ugc adminDeleteContentByShareCodeV2 \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_delete_user_content_v2`
```sh
$ samples/cli/sample-apps Ugc adminDeleteUserContentV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `admin_update_user_content_v2`
```sh
$ samples/cli/sample-apps Ugc adminUpdateUserContentV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"customAttributes": {"string": {}}, "name": "string", "shareCode": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `admin_update_user_content_file_location`
```sh
$ samples/cli/sample-apps Ugc adminUpdateUserContentFileLocation \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"fileExtension": "string", "fileLocation": "string"}' \
    > result.txt
```

### Operation `admin_generate_user_content_upload_urlv2`
```sh
$ samples/cli/sample-apps Ugc adminGenerateUserContentUploadURLV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "fileExtension": "string"}' \
    > result.txt
```

### Operation `admin_get_content_by_user_idv2`
```sh
$ samples/cli/sample-apps Ugc adminGetContentByUserIDV2 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    > result.txt
```

### Operation `admin_update_content_hide_status_v2`
```sh
$ samples/cli/sample-apps Ugc adminUpdateContentHideStatusV2 \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"isHidden": false}' \
    > result.txt
```

### Operation `admin_get_user_group_contents_v2`
```sh
$ samples/cli/sample-apps Ugc adminGetUserGroupContentsV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_list_user_staging_contents`
```sh
$ samples/cli/sample-apps Ugc adminListUserStagingContents \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --status 'string' \
    > result.txt
```

### Operation `public_get_content_by_channel_idv2`
```sh
$ samples/cli/sample-apps Ugc publicGetContentByChannelIDV2 \
    --channelId 'string' \
    --namespace 'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'string' \
    > result.txt
```

### Operation `public_list_content_v2`
```sh
$ samples/cli/sample-apps Ugc publicListContentV2 \
    --namespace 'string' \
    --isOfficial false \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sortBy 'string' \
    --subType 'string' \
    --tags '["string"]' \
    --type 'string' \
    > result.txt
```

### Operation `public_bulk_get_content_by_idv2`
```sh
$ samples/cli/sample-apps Ugc publicBulkGetContentByIDV2 \
    --namespace 'string' \
    --body '{"contentIds": ["string"]}' \
    > result.txt
```

### Operation `public_get_content_bulk_by_share_codes_v2`
```sh
$ samples/cli/sample-apps Ugc publicGetContentBulkByShareCodesV2 \
    --namespace 'string' \
    --body '{"shareCodes": ["string"]}' \
    > result.txt
```

### Operation `public_get_content_by_share_code_v2`
```sh
$ samples/cli/sample-apps Ugc publicGetContentByShareCodeV2 \
    --namespace 'string' \
    --shareCode 'string' \
    > result.txt
```

### Operation `public_get_content_by_idv2`
```sh
$ samples/cli/sample-apps Ugc publicGetContentByIDV2 \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_add_download_count_v2`
```sh
$ samples/cli/sample-apps Ugc publicAddDownloadCountV2 \
    --contentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_list_content_downloader_v2`
```sh
$ samples/cli/sample-apps Ugc publicListContentDownloaderV2 \
    --contentId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_list_content_like_v2`
```sh
$ samples/cli/sample-apps Ugc publicListContentLikeV2 \
    --contentId 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    > result.txt
```

### Operation `update_content_like_status_v2`
```sh
$ samples/cli/sample-apps Ugc updateContentLikeStatusV2 \
    --contentId 'string' \
    --namespace 'string' \
    --body '{"likeStatus": false}' \
    > result.txt
```

### Operation `public_create_content_v2`
```sh
$ samples/cli/sample-apps Ugc publicCreateContentV2 \
    --channelId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "customAttributes": {"string": {}}, "fileExtension": "string", "name": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `public_update_content_by_share_code_v2`
```sh
$ samples/cli/sample-apps Ugc publicUpdateContentByShareCodeV2 \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    --body '{"customAttributes": {"string": {}}, "name": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `public_delete_content_by_share_code_v2`
```sh
$ samples/cli/sample-apps Ugc publicDeleteContentByShareCodeV2 \
    --channelId 'string' \
    --namespace 'string' \
    --shareCode 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_delete_content_v2`
```sh
$ samples/cli/sample-apps Ugc publicDeleteContentV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_update_content_v2`
```sh
$ samples/cli/sample-apps Ugc publicUpdateContentV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"customAttributes": {"string": {}}, "name": "string", "subType": "string", "tags": ["string"], "type": "string"}' \
    > result.txt
```

### Operation `public_update_content_file_location`
```sh
$ samples/cli/sample-apps Ugc publicUpdateContentFileLocation \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"fileExtension": "string", "fileLocation": "string"}' \
    > result.txt
```

### Operation `update_content_share_code_v2`
```sh
$ samples/cli/sample-apps Ugc updateContentShareCodeV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"shareCode": "string"}' \
    > result.txt
```

### Operation `public_generate_content_upload_urlv2`
```sh
$ samples/cli/sample-apps Ugc publicGenerateContentUploadURLV2 \
    --channelId 'string' \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"contentType": "string", "fileExtension": "string"}' \
    > result.txt
```

### Operation `public_get_content_by_user_idv2`
```sh
$ samples/cli/sample-apps Ugc publicGetContentByUserIDV2 \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    > result.txt
```

### Operation `update_screenshots_v2`
```sh
$ samples/cli/sample-apps Ugc updateScreenshotsV2 \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `upload_content_screenshot_v2`
```sh
$ samples/cli/sample-apps Ugc uploadContentScreenshotV2 \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"screenshots": [{}]}' \
    > result.txt
```

### Operation `delete_content_screenshot_v2`
```sh
$ samples/cli/sample-apps Ugc deleteContentScreenshotV2 \
    --contentId 'string' \
    --namespace 'string' \
    --screenshotId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_group_contents_v2`
```sh
$ samples/cli/sample-apps Ugc publicGetGroupContentsV2 \
    --groupId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `list_user_staging_contents`
```sh
$ samples/cli/sample-apps Ugc listUserStagingContents \
    --namespace 'string' \
    --userId 'string' \
    --limit 1 \
    --offset 1 \
    --sortBy 'string' \
    --status 'string' \
    > result.txt
```

### Operation `get_user_staging_content_by_id`
```sh
$ samples/cli/sample-apps Ugc getUserStagingContentByID \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `update_staging_content`
```sh
$ samples/cli/sample-apps Ugc updateStagingContent \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    --body '{"fileExtension": "string", "fileLocation": "string"}' \
    > result.txt
```

### Operation `delete_user_staging_content_by_id`
```sh
$ samples/cli/sample-apps Ugc deleteUserStagingContentByID \
    --contentId 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

