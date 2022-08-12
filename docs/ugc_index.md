# Ugc Service Index

&nbsp;

## Operations

### Admin Channel Wrapper:  [AdminChannel](../services-api/pkg/service/ugc/adminChannel.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/admin/namespaces/{namespace}/channels` | GET | SingleAdminGetChannelShort | [SingleAdminGetChannelShort](../ugc-sdk/pkg/ugcclient/admin_channel/admin_channel_client.go) | [SingleAdminGetChannelShort](../services-api/pkg/service/ugc/adminChannel.go) | [SingleAdminGetChannelShort](../samples/cli/cmd/ugc/adminChannel/singleAdminGetChannel.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels` | POST | AdminCreateChannelShort | [AdminCreateChannelShort](../ugc-sdk/pkg/ugcclient/admin_channel/admin_channel_client.go) | [AdminCreateChannelShort](../services-api/pkg/service/ugc/adminChannel.go) | [AdminCreateChannelShort](../samples/cli/cmd/ugc/adminChannel/adminCreateChannel.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}` | PUT | SingleAdminUpdateChannelShort | [SingleAdminUpdateChannelShort](../ugc-sdk/pkg/ugcclient/admin_channel/admin_channel_client.go) | [SingleAdminUpdateChannelShort](../services-api/pkg/service/ugc/adminChannel.go) | [SingleAdminUpdateChannelShort](../samples/cli/cmd/ugc/adminChannel/singleAdminUpdateChannel.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}` | DELETE | SingleAdminDeleteChannelShort | [SingleAdminDeleteChannelShort](../ugc-sdk/pkg/ugcclient/admin_channel/admin_channel_client.go) | [SingleAdminDeleteChannelShort](../services-api/pkg/service/ugc/adminChannel.go) | [SingleAdminDeleteChannelShort](../samples/cli/cmd/ugc/adminChannel/singleAdminDeleteChannel.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels` | GET | AdminGetChannelShort | [AdminGetChannelShort](../ugc-sdk/pkg/ugcclient/admin_channel/admin_channel_client.go) | [AdminGetChannelShort](../services-api/pkg/service/ugc/adminChannel.go) | [AdminGetChannelShort](../samples/cli/cmd/ugc/adminChannel/adminGetChannel.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}` | PUT | AdminUpdateChannelShort | [AdminUpdateChannelShort](../ugc-sdk/pkg/ugcclient/admin_channel/admin_channel_client.go) | [AdminUpdateChannelShort](../services-api/pkg/service/ugc/adminChannel.go) | [AdminUpdateChannelShort](../samples/cli/cmd/ugc/adminChannel/adminUpdateChannel.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}` | DELETE | AdminDeleteChannelShort | [AdminDeleteChannelShort](../ugc-sdk/pkg/ugcclient/admin_channel/admin_channel_client.go) | [AdminDeleteChannelShort](../services-api/pkg/service/ugc/adminChannel.go) | [AdminDeleteChannelShort](../samples/cli/cmd/ugc/adminChannel/adminDeleteChannel.go) |

### Admin Content Wrapper:  [AdminContent](../services-api/pkg/service/ugc/adminContent.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents` | POST | AdminUploadContentDirectShort | [AdminUploadContentDirectShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminUploadContentDirectShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminUploadContentDirectShort](../samples/cli/cmd/ugc/adminContent/adminUploadContentDirect.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3` | POST | AdminUploadContentS3Short | [AdminUploadContentS3Short](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminUploadContentS3Short](../services-api/pkg/service/ugc/adminContent.go) | [AdminUploadContentS3Short](../samples/cli/cmd/ugc/adminContent/adminUploadContentS3.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/s3/{contentId}` | PUT | SingleAdminUpdateContentS3Short | [SingleAdminUpdateContentS3Short](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [SingleAdminUpdateContentS3Short](../services-api/pkg/service/ugc/adminContent.go) | [SingleAdminUpdateContentS3Short](../samples/cli/cmd/ugc/adminContent/singleAdminUpdateContentS3.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/search` | GET | AdminSearchChannelSpecificContentShort | [AdminSearchChannelSpecificContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminSearchChannelSpecificContentShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminSearchChannelSpecificContentShort](../samples/cli/cmd/ugc/adminContent/adminSearchChannelSpecificContent.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}` | PUT | SingleAdminUpdateContentDirectShort | [SingleAdminUpdateContentDirectShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [SingleAdminUpdateContentDirectShort](../services-api/pkg/service/ugc/adminContent.go) | [SingleAdminUpdateContentDirectShort](../samples/cli/cmd/ugc/adminContent/singleAdminUpdateContentDirect.go) |
| `/ugc/v1/admin/namespaces/{namespace}/channels/{channelId}/contents/{contentId}` | DELETE | SingleAdminDeleteContentShort | [SingleAdminDeleteContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [SingleAdminDeleteContentShort](../services-api/pkg/service/ugc/adminContent.go) | [SingleAdminDeleteContentShort](../samples/cli/cmd/ugc/adminContent/singleAdminDeleteContent.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents` | GET | SingleAdminGetContentShort | [SingleAdminGetContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [SingleAdminGetContentShort](../services-api/pkg/service/ugc/adminContent.go) | [SingleAdminGetContentShort](../samples/cli/cmd/ugc/adminContent/singleAdminGetContent.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents/search` | GET | AdminSearchContentShort | [AdminSearchContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminSearchContentShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminSearchContentShort](../samples/cli/cmd/ugc/adminContent/adminSearchContent.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents/sharecodes/{shareCode}` | GET | AdminGetUserContentByShareCodeShort | [AdminGetUserContentByShareCodeShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminGetUserContentByShareCodeShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminGetUserContentByShareCodeShort](../samples/cli/cmd/ugc/adminContent/adminGetUserContentByShareCode.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}` | GET | AdminGetSpecificContentShort | [AdminGetSpecificContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminGetSpecificContentShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminGetSpecificContentShort](../samples/cli/cmd/ugc/adminContent/adminGetSpecificContent.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/preview` | GET | AdminDownloadContentPreviewShort | [AdminDownloadContentPreviewShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminDownloadContentPreviewShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminDownloadContentPreviewShort](../samples/cli/cmd/ugc/adminContent/adminDownloadContentPreview.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots` | PUT | AdminUpdateScreenshotsShort | [AdminUpdateScreenshotsShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminUpdateScreenshotsShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminUpdateScreenshotsShort](../samples/cli/cmd/ugc/adminContent/adminUpdateScreenshots.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots` | POST | AdminUploadContentScreenshotShort | [AdminUploadContentScreenshotShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminUploadContentScreenshotShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminUploadContentScreenshotShort](../samples/cli/cmd/ugc/adminContent/adminUploadContentScreenshot.go) |
| `/ugc/v1/admin/namespaces/{namespace}/contents/{contentId}/screenshots/{screenshotId}` | DELETE | AdminDeleteContentScreenshotShort | [AdminDeleteContentScreenshotShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminDeleteContentScreenshotShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminDeleteContentScreenshotShort](../samples/cli/cmd/ugc/adminContent/adminDeleteContentScreenshot.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}` | PUT | AdminUpdateContentS3Short | [AdminUpdateContentS3Short](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminUpdateContentS3Short](../services-api/pkg/service/ugc/adminContent.go) | [AdminUpdateContentS3Short](../samples/cli/cmd/ugc/adminContent/adminUpdateContentS3.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}` | PUT | AdminUpdateContentDirectShort | [AdminUpdateContentDirectShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminUpdateContentDirectShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminUpdateContentDirectShort](../samples/cli/cmd/ugc/adminContent/adminUpdateContentDirect.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}` | DELETE | AdminDeleteContentShort | [AdminDeleteContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminDeleteContentShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminDeleteContentShort](../samples/cli/cmd/ugc/adminContent/adminDeleteContent.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents` | GET | AdminGetContentShort | [AdminGetContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminGetContentShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminGetContentShort](../samples/cli/cmd/ugc/adminContent/adminGetContent.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents/{contentId}/hide` | PUT | AdminHideUserContentShort | [AdminHideUserContentShort](../ugc-sdk/pkg/ugcclient/admin_content/admin_content_client.go) | [AdminHideUserContentShort](../services-api/pkg/service/ugc/adminContent.go) | [AdminHideUserContentShort](../samples/cli/cmd/ugc/adminContent/adminHideUserContent.go) |

### Admin Group Wrapper:  [AdminGroup](../services-api/pkg/service/ugc/adminGroup.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/admin/namespaces/{namespace}/groups` | GET | SingleAdminGetAllGroupsShort | [SingleAdminGetAllGroupsShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [SingleAdminGetAllGroupsShort](../services-api/pkg/service/ugc/adminGroup.go) | [SingleAdminGetAllGroupsShort](../samples/cli/cmd/ugc/adminGroup/singleAdminGetAllGroups.go) |
| `/ugc/v1/admin/namespaces/{namespace}/groups` | POST | AdminCreateGroupShort | [AdminCreateGroupShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [AdminCreateGroupShort](../services-api/pkg/service/ugc/adminGroup.go) | [AdminCreateGroupShort](../samples/cli/cmd/ugc/adminGroup/adminCreateGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}` | GET | SingleAdminGetGroupShort | [SingleAdminGetGroupShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [SingleAdminGetGroupShort](../services-api/pkg/service/ugc/adminGroup.go) | [SingleAdminGetGroupShort](../samples/cli/cmd/ugc/adminGroup/singleAdminGetGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}` | PUT | SingleAdminUpdateGroupShort | [SingleAdminUpdateGroupShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [SingleAdminUpdateGroupShort](../services-api/pkg/service/ugc/adminGroup.go) | [SingleAdminUpdateGroupShort](../samples/cli/cmd/ugc/adminGroup/singleAdminUpdateGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}` | DELETE | SingleAdminDeleteGroupShort | [SingleAdminDeleteGroupShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [SingleAdminDeleteGroupShort](../services-api/pkg/service/ugc/adminGroup.go) | [SingleAdminDeleteGroupShort](../samples/cli/cmd/ugc/adminGroup/singleAdminDeleteGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents` | GET | SingleAdminGetGroupContentsShort | [SingleAdminGetGroupContentsShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [SingleAdminGetGroupContentsShort](../services-api/pkg/service/ugc/adminGroup.go) | [SingleAdminGetGroupContentsShort](../samples/cli/cmd/ugc/adminGroup/singleAdminGetGroupContents.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups` | GET | AdminGetAllGroupsShort | [AdminGetAllGroupsShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [AdminGetAllGroupsShort](../services-api/pkg/service/ugc/adminGroup.go) | [AdminGetAllGroupsShort](../samples/cli/cmd/ugc/adminGroup/adminGetAllGroups.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}` | GET | AdminGetGroupShort | [AdminGetGroupShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [AdminGetGroupShort](../services-api/pkg/service/ugc/adminGroup.go) | [AdminGetGroupShort](../samples/cli/cmd/ugc/adminGroup/adminGetGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}` | PUT | AdminUpdateGroupShort | [AdminUpdateGroupShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [AdminUpdateGroupShort](../services-api/pkg/service/ugc/adminGroup.go) | [AdminUpdateGroupShort](../samples/cli/cmd/ugc/adminGroup/adminUpdateGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}` | DELETE | AdminDeleteGroupShort | [AdminDeleteGroupShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [AdminDeleteGroupShort](../services-api/pkg/service/ugc/adminGroup.go) | [AdminDeleteGroupShort](../samples/cli/cmd/ugc/adminGroup/adminDeleteGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents` | GET | AdminGetGroupContentsShort | [AdminGetGroupContentsShort](../ugc-sdk/pkg/ugcclient/admin_group/admin_group_client.go) | [AdminGetGroupContentsShort](../services-api/pkg/service/ugc/adminGroup.go) | [AdminGetGroupContentsShort](../samples/cli/cmd/ugc/adminGroup/adminGetGroupContents.go) |

### Admin Tag Wrapper:  [AdminTag](../services-api/pkg/service/ugc/adminTag.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/admin/namespaces/{namespace}/tags` | GET | AdminGetTagShort | [AdminGetTagShort](../ugc-sdk/pkg/ugcclient/admin_tag/admin_tag_client.go) | [AdminGetTagShort](../services-api/pkg/service/ugc/adminTag.go) | [AdminGetTagShort](../samples/cli/cmd/ugc/adminTag/adminGetTag.go) |
| `/ugc/v1/admin/namespaces/{namespace}/tags` | POST | AdminCreateTagShort | [AdminCreateTagShort](../ugc-sdk/pkg/ugcclient/admin_tag/admin_tag_client.go) | [AdminCreateTagShort](../services-api/pkg/service/ugc/adminTag.go) | [AdminCreateTagShort](../samples/cli/cmd/ugc/adminTag/adminCreateTag.go) |
| `/ugc/v1/admin/namespaces/{namespace}/tags/{tagId}` | PUT | AdminUpdateTagShort | [AdminUpdateTagShort](../ugc-sdk/pkg/ugcclient/admin_tag/admin_tag_client.go) | [AdminUpdateTagShort](../services-api/pkg/service/ugc/adminTag.go) | [AdminUpdateTagShort](../samples/cli/cmd/ugc/adminTag/adminUpdateTag.go) |
| `/ugc/v1/admin/namespaces/{namespace}/tags/{tagId}` | DELETE | AdminDeleteTagShort | [AdminDeleteTagShort](../ugc-sdk/pkg/ugcclient/admin_tag/admin_tag_client.go) | [AdminDeleteTagShort](../services-api/pkg/service/ugc/adminTag.go) | [AdminDeleteTagShort](../samples/cli/cmd/ugc/adminTag/adminDeleteTag.go) |

### Admin Type Wrapper:  [AdminType](../services-api/pkg/service/ugc/adminType.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/admin/namespaces/{namespace}/types` | GET | AdminGetTypeShort | [AdminGetTypeShort](../ugc-sdk/pkg/ugcclient/admin_type/admin_type_client.go) | [AdminGetTypeShort](../services-api/pkg/service/ugc/adminType.go) | [AdminGetTypeShort](../samples/cli/cmd/ugc/adminType/adminGetType.go) |
| `/ugc/v1/admin/namespaces/{namespace}/types` | POST | AdminCreateTypeShort | [AdminCreateTypeShort](../ugc-sdk/pkg/ugcclient/admin_type/admin_type_client.go) | [AdminCreateTypeShort](../services-api/pkg/service/ugc/adminType.go) | [AdminCreateTypeShort](../samples/cli/cmd/ugc/adminType/adminCreateType.go) |
| `/ugc/v1/admin/namespaces/{namespace}/types/{typeId}` | PUT | AdminUpdateTypeShort | [AdminUpdateTypeShort](../ugc-sdk/pkg/ugcclient/admin_type/admin_type_client.go) | [AdminUpdateTypeShort](../services-api/pkg/service/ugc/adminType.go) | [AdminUpdateTypeShort](../samples/cli/cmd/ugc/adminType/adminUpdateType.go) |
| `/ugc/v1/admin/namespaces/{namespace}/types/{typeId}` | DELETE | AdminDeleteTypeShort | [AdminDeleteTypeShort](../ugc-sdk/pkg/ugcclient/admin_type/admin_type_client.go) | [AdminDeleteTypeShort](../services-api/pkg/service/ugc/adminType.go) | [AdminDeleteTypeShort](../samples/cli/cmd/ugc/adminType/adminDeleteType.go) |

### Anonymization Wrapper:  [Anonymization](../services-api/pkg/service/ugc/anonymization.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels` | DELETE | AdminDeleteAllUserChannelsShort | [AdminDeleteAllUserChannelsShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [AdminDeleteAllUserChannelsShort](../services-api/pkg/service/ugc/anonymization.go) | [AdminDeleteAllUserChannelsShort](../samples/cli/cmd/ugc/anonymization/adminDeleteAllUserChannels.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/contents` | DELETE | AdminDeleteAllUserContentsShort | [AdminDeleteAllUserContentsShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [AdminDeleteAllUserContentsShort](../services-api/pkg/service/ugc/anonymization.go) | [AdminDeleteAllUserContentsShort](../samples/cli/cmd/ugc/anonymization/adminDeleteAllUserContents.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups` | DELETE | AdminDeleteAllUserGroupShort | [AdminDeleteAllUserGroupShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [AdminDeleteAllUserGroupShort](../services-api/pkg/service/ugc/anonymization.go) | [AdminDeleteAllUserGroupShort](../samples/cli/cmd/ugc/anonymization/adminDeleteAllUserGroup.go) |
| `/ugc/v1/admin/namespaces/{namespace}/users/{userId}/states` | DELETE | AdminDeleteAllUserStatesShort | [AdminDeleteAllUserStatesShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [AdminDeleteAllUserStatesShort](../services-api/pkg/service/ugc/anonymization.go) | [AdminDeleteAllUserStatesShort](../samples/cli/cmd/ugc/anonymization/adminDeleteAllUserStates.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels` | DELETE | DeleteAllUserChannelShort | [DeleteAllUserChannelShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [DeleteAllUserChannelShort](../services-api/pkg/service/ugc/anonymization.go) | [DeleteAllUserChannelShort](../samples/cli/cmd/ugc/anonymization/deleteAllUserChannel.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents` | DELETE | DeleteAllUserContentsShort | [DeleteAllUserContentsShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [DeleteAllUserContentsShort](../services-api/pkg/service/ugc/anonymization.go) | [DeleteAllUserContentsShort](../samples/cli/cmd/ugc/anonymization/deleteAllUserContents.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups` | DELETE | DeleteAllUserGroupShort | [DeleteAllUserGroupShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [DeleteAllUserGroupShort](../services-api/pkg/service/ugc/anonymization.go) | [DeleteAllUserGroupShort](../samples/cli/cmd/ugc/anonymization/deleteAllUserGroup.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/states` | DELETE | DeleteAllUserStatesShort | [DeleteAllUserStatesShort](../ugc-sdk/pkg/ugcclient/anonymization/anonymization_client.go) | [DeleteAllUserStatesShort](../services-api/pkg/service/ugc/anonymization.go) | [DeleteAllUserStatesShort](../samples/cli/cmd/ugc/anonymization/deleteAllUserStates.go) |

### Public Content Wrapper:  [PublicContent](../services-api/pkg/service/ugc/publicContent.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents` | GET | SearchChannelSpecificContentShort | [SearchChannelSpecificContentShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [SearchChannelSpecificContentShort](../services-api/pkg/service/ugc/publicContent.go) | [SearchChannelSpecificContentShort](../samples/cli/cmd/ugc/publicContent/searchChannelSpecificContent.go) |
| `/ugc/v1/public/namespaces/{namespace}/contents` | GET | PublicSearchContentShort | [PublicSearchContentShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [PublicSearchContentShort](../services-api/pkg/service/ugc/publicContent.go) | [PublicSearchContentShort](../samples/cli/cmd/ugc/publicContent/publicSearchContent.go) |
| `/ugc/v1/public/namespaces/{namespace}/contents/bulk` | POST | PublicGetContentBulkShort | [PublicGetContentBulkShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [PublicGetContentBulkShort](../services-api/pkg/service/ugc/publicContent.go) | [PublicGetContentBulkShort](../samples/cli/cmd/ugc/publicContent/publicGetContentBulk.go) |
| `/ugc/v1/public/namespaces/{namespace}/contents/sharecodes/{shareCode}` | GET | PublicDownloadContentByShareCodeShort | [PublicDownloadContentByShareCodeShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [PublicDownloadContentByShareCodeShort](../services-api/pkg/service/ugc/publicContent.go) | [PublicDownloadContentByShareCodeShort](../samples/cli/cmd/ugc/publicContent/publicDownloadContentByShareCode.go) |
| `/ugc/v1/public/namespaces/{namespace}/contents/{contentId}` | GET | PublicDownloadContentByContentIDShort | [PublicDownloadContentByContentIDShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [PublicDownloadContentByContentIDShort](../services-api/pkg/service/ugc/publicContent.go) | [PublicDownloadContentByContentIDShort](../samples/cli/cmd/ugc/publicContent/publicDownloadContentByContentID.go) |
| `/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/preview` | GET | PublicDownloadContentPreviewShort | [PublicDownloadContentPreviewShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [PublicDownloadContentPreviewShort](../services-api/pkg/service/ugc/publicContent.go) | [PublicDownloadContentPreviewShort](../samples/cli/cmd/ugc/publicContent/publicDownloadContentPreview.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents` | POST | CreateContentDirectShort | [CreateContentDirectShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [CreateContentDirectShort](../services-api/pkg/service/ugc/publicContent.go) | [CreateContentDirectShort](../samples/cli/cmd/ugc/publicContent/createContentDirect.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3` | POST | CreateContentS3Short | [CreateContentS3Short](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [CreateContentS3Short](../services-api/pkg/service/ugc/publicContent.go) | [CreateContentS3Short](../samples/cli/cmd/ugc/publicContent/createContentS3.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/s3/{contentId}` | PUT | UpdateContentS3Short | [UpdateContentS3Short](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [UpdateContentS3Short](../services-api/pkg/service/ugc/publicContent.go) | [UpdateContentS3Short](../samples/cli/cmd/ugc/publicContent/updateContentS3.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}` | PUT | UpdateContentDirectShort | [UpdateContentDirectShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [UpdateContentDirectShort](../services-api/pkg/service/ugc/publicContent.go) | [UpdateContentDirectShort](../samples/cli/cmd/ugc/publicContent/updateContentDirect.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}/contents/{contentId}` | DELETE | DeleteContentShort | [DeleteContentShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [DeleteContentShort](../services-api/pkg/service/ugc/publicContent.go) | [DeleteContentShort](../samples/cli/cmd/ugc/publicContent/deleteContent.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents` | GET | PublicGetUserContentShort | [PublicGetUserContentShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [PublicGetUserContentShort](../services-api/pkg/service/ugc/publicContent.go) | [PublicGetUserContentShort](../samples/cli/cmd/ugc/publicContent/publicGetUserContent.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots` | PUT | UpdateScreenshotsShort | [UpdateScreenshotsShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [UpdateScreenshotsShort](../services-api/pkg/service/ugc/publicContent.go) | [UpdateScreenshotsShort](../samples/cli/cmd/ugc/publicContent/updateScreenshots.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots` | POST | UploadContentScreenshotShort | [UploadContentScreenshotShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [UploadContentScreenshotShort](../services-api/pkg/service/ugc/publicContent.go) | [UploadContentScreenshotShort](../samples/cli/cmd/ugc/publicContent/uploadContentScreenshot.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/contents/{contentId}/screenshots/{screenshotId}` | DELETE | DeleteContentScreenshotShort | [DeleteContentScreenshotShort](../ugc-sdk/pkg/ugcclient/public_content/public_content_client.go) | [DeleteContentScreenshotShort](../services-api/pkg/service/ugc/publicContent.go) | [DeleteContentScreenshotShort](../samples/cli/cmd/ugc/publicContent/deleteContentScreenshot.go) |

### Public Follow Wrapper:  [PublicFollow](../services-api/pkg/service/ugc/publicFollow.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/contents/followed` | GET | GetFollowedContentShort | [GetFollowedContentShort](../ugc-sdk/pkg/ugcclient/public_follow/public_follow_client.go) | [GetFollowedContentShort](../services-api/pkg/service/ugc/publicFollow.go) | [GetFollowedContentShort](../samples/cli/cmd/ugc/publicFollow/getFollowedContent.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/followed` | GET | GetFollowedUsersShort | [GetFollowedUsersShort](../ugc-sdk/pkg/ugcclient/public_follow/public_follow_client.go) | [GetFollowedUsersShort](../services-api/pkg/service/ugc/publicFollow.go) | [GetFollowedUsersShort](../samples/cli/cmd/ugc/publicFollow/getFollowedUsers.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/follow` | PUT | UpdateUserFollowStatusShort | [UpdateUserFollowStatusShort](../ugc-sdk/pkg/ugcclient/public_follow/public_follow_client.go) | [UpdateUserFollowStatusShort](../services-api/pkg/service/ugc/publicFollow.go) | [UpdateUserFollowStatusShort](../samples/cli/cmd/ugc/publicFollow/updateUserFollowStatus.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/followers` | GET | GetPublicFollowersShort | [GetPublicFollowersShort](../ugc-sdk/pkg/ugcclient/public_follow/public_follow_client.go) | [GetPublicFollowersShort](../services-api/pkg/service/ugc/publicFollow.go) | [GetPublicFollowersShort](../samples/cli/cmd/ugc/publicFollow/getPublicFollowers.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/following` | GET | GetPublicFollowingShort | [GetPublicFollowingShort](../ugc-sdk/pkg/ugcclient/public_follow/public_follow_client.go) | [GetPublicFollowingShort](../services-api/pkg/service/ugc/publicFollow.go) | [GetPublicFollowingShort](../samples/cli/cmd/ugc/publicFollow/getPublicFollowing.go) |

### Public Like Wrapper:  [PublicLike](../services-api/pkg/service/ugc/publicLike.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/contents/liked` | GET | GetLikedContentShort | [GetLikedContentShort](../ugc-sdk/pkg/ugcclient/public_like/public_like_client.go) | [GetLikedContentShort](../services-api/pkg/service/ugc/publicLike.go) | [GetLikedContentShort](../samples/cli/cmd/ugc/publicLike/getLikedContent.go) |
| `/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like` | PUT | UpdateContentLikeStatusShort | [UpdateContentLikeStatusShort](../ugc-sdk/pkg/ugcclient/public_like/public_like_client.go) | [UpdateContentLikeStatusShort](../services-api/pkg/service/ugc/publicLike.go) | [UpdateContentLikeStatusShort](../samples/cli/cmd/ugc/publicLike/updateContentLikeStatus.go) |

### Public Download Count Wrapper:  [PublicDownloadCount](../services-api/pkg/service/ugc/publicDownloadCount.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/contents/{contentId}/downloadcount` | POST | AddDownloadCountShort | [AddDownloadCountShort](../ugc-sdk/pkg/ugcclient/public_download_count/public_download_count_client.go) | [AddDownloadCountShort](../services-api/pkg/service/ugc/publicDownloadCount.go) | [AddDownloadCountShort](../samples/cli/cmd/ugc/publicDownloadCount/addDownloadCount.go) |

### Public Tag Wrapper:  [PublicTag](../services-api/pkg/service/ugc/publicTag.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/tags` | GET | GetTagShort | [GetTagShort](../ugc-sdk/pkg/ugcclient/public_tag/public_tag_client.go) | [GetTagShort](../services-api/pkg/service/ugc/publicTag.go) | [GetTagShort](../samples/cli/cmd/ugc/publicTag/getTag.go) |

### Public Type Wrapper:  [PublicType](../services-api/pkg/service/ugc/publicType.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/types` | GET | GetTypeShort | [GetTypeShort](../ugc-sdk/pkg/ugcclient/public_type/public_type_client.go) | [GetTypeShort](../services-api/pkg/service/ugc/publicType.go) | [GetTypeShort](../samples/cli/cmd/ugc/publicType/getType.go) |

### Public Creator Wrapper:  [PublicCreator](../services-api/pkg/service/ugc/publicCreator.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/users` | GET | PublicSearchCreatorShort | [PublicSearchCreatorShort](../ugc-sdk/pkg/ugcclient/public_creator/public_creator_client.go) | [PublicSearchCreatorShort](../services-api/pkg/service/ugc/publicCreator.go) | [PublicSearchCreatorShort](../samples/cli/cmd/ugc/publicCreator/publicSearchCreator.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}` | GET | PublicGetCreatorShort | [PublicGetCreatorShort](../ugc-sdk/pkg/ugcclient/public_creator/public_creator_client.go) | [PublicGetCreatorShort](../services-api/pkg/service/ugc/publicCreator.go) | [PublicGetCreatorShort](../samples/cli/cmd/ugc/publicCreator/publicGetCreator.go) |

### Public Channel Wrapper:  [PublicChannel](../services-api/pkg/service/ugc/publicChannel.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels` | GET | GetChannelsShort | [GetChannelsShort](../ugc-sdk/pkg/ugcclient/public_channel/public_channel_client.go) | [GetChannelsShort](../services-api/pkg/service/ugc/publicChannel.go) | [GetChannelsShort](../samples/cli/cmd/ugc/publicChannel/getChannels.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels` | POST | CreateChannelShort | [CreateChannelShort](../ugc-sdk/pkg/ugcclient/public_channel/public_channel_client.go) | [CreateChannelShort](../services-api/pkg/service/ugc/publicChannel.go) | [CreateChannelShort](../samples/cli/cmd/ugc/publicChannel/createChannel.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}` | PUT | UpdateChannelShort | [UpdateChannelShort](../ugc-sdk/pkg/ugcclient/public_channel/public_channel_client.go) | [UpdateChannelShort](../services-api/pkg/service/ugc/publicChannel.go) | [UpdateChannelShort](../samples/cli/cmd/ugc/publicChannel/updateChannel.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}` | DELETE | DeleteChannelShort | [DeleteChannelShort](../ugc-sdk/pkg/ugcclient/public_channel/public_channel_client.go) | [DeleteChannelShort](../services-api/pkg/service/ugc/publicChannel.go) | [DeleteChannelShort](../samples/cli/cmd/ugc/publicChannel/deleteChannel.go) |

### Public Group Wrapper:  [PublicGroup](../services-api/pkg/service/ugc/publicGroup.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups` | GET | GetGroupsShort | [GetGroupsShort](../ugc-sdk/pkg/ugcclient/public_group/public_group_client.go) | [GetGroupsShort](../services-api/pkg/service/ugc/publicGroup.go) | [GetGroupsShort](../samples/cli/cmd/ugc/publicGroup/getGroups.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups` | POST | CreateGroupShort | [CreateGroupShort](../ugc-sdk/pkg/ugcclient/public_group/public_group_client.go) | [CreateGroupShort](../services-api/pkg/service/ugc/publicGroup.go) | [CreateGroupShort](../samples/cli/cmd/ugc/publicGroup/createGroup.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}` | GET | GetGroupShort | [GetGroupShort](../ugc-sdk/pkg/ugcclient/public_group/public_group_client.go) | [GetGroupShort](../services-api/pkg/service/ugc/publicGroup.go) | [GetGroupShort](../samples/cli/cmd/ugc/publicGroup/getGroup.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}` | PUT | UpdateGroupShort | [UpdateGroupShort](../ugc-sdk/pkg/ugcclient/public_group/public_group_client.go) | [UpdateGroupShort](../services-api/pkg/service/ugc/publicGroup.go) | [UpdateGroupShort](../samples/cli/cmd/ugc/publicGroup/updateGroup.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}` | DELETE | DeleteGroupShort | [DeleteGroupShort](../ugc-sdk/pkg/ugcclient/public_group/public_group_client.go) | [DeleteGroupShort](../services-api/pkg/service/ugc/publicGroup.go) | [DeleteGroupShort](../samples/cli/cmd/ugc/publicGroup/deleteGroup.go) |
| `/ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents` | GET | GetGroupContentShort | [GetGroupContentShort](../ugc-sdk/pkg/ugcclient/public_group/public_group_client.go) | [GetGroupContentShort](../services-api/pkg/service/ugc/publicGroup.go) | [GetGroupContentShort](../samples/cli/cmd/ugc/publicGroup/getGroupContent.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.AddDownloadCountResponse` | [ModelsAddDownloadCountResponse ](../ugc-sdk/pkg/ugcclientmodels/models_add_download_count_response.go) |
| `models.ChannelRequest` | [ModelsChannelRequest ](../ugc-sdk/pkg/ugcclientmodels/models_channel_request.go) |
| `models.ChannelResponse` | [ModelsChannelResponse ](../ugc-sdk/pkg/ugcclientmodels/models_channel_response.go) |
| `models.ContentDownloadResponse` | [ModelsContentDownloadResponse ](../ugc-sdk/pkg/ugcclientmodels/models_content_download_response.go) |
| `models.ContentLikeRequest` | [ModelsContentLikeRequest ](../ugc-sdk/pkg/ugcclientmodels/models_content_like_request.go) |
| `models.ContentLikeResponse` | [ModelsContentLikeResponse ](../ugc-sdk/pkg/ugcclientmodels/models_content_like_response.go) |
| `models.CreateContentRequest` | [ModelsCreateContentRequest ](../ugc-sdk/pkg/ugcclientmodels/models_create_content_request.go) |
| `models.CreateContentRequestS3` | [ModelsCreateContentRequestS3 ](../ugc-sdk/pkg/ugcclientmodels/models_create_content_request_s3.go) |
| `models.CreateContentResponse` | [ModelsCreateContentResponse ](../ugc-sdk/pkg/ugcclientmodels/models_create_content_response.go) |
| `models.CreateGroupRequest` | [ModelsCreateGroupRequest ](../ugc-sdk/pkg/ugcclientmodels/models_create_group_request.go) |
| `models.CreateGroupResponse` | [ModelsCreateGroupResponse ](../ugc-sdk/pkg/ugcclientmodels/models_create_group_response.go) |
| `models.CreateScreenshotRequest` | [ModelsCreateScreenshotRequest ](../ugc-sdk/pkg/ugcclientmodels/models_create_screenshot_request.go) |
| `models.CreateScreenshotResponse` | [ModelsCreateScreenshotResponse ](../ugc-sdk/pkg/ugcclientmodels/models_create_screenshot_response.go) |
| `models.CreateTagRequest` | [ModelsCreateTagRequest ](../ugc-sdk/pkg/ugcclientmodels/models_create_tag_request.go) |
| `models.CreateTagResponse` | [ModelsCreateTagResponse ](../ugc-sdk/pkg/ugcclientmodels/models_create_tag_response.go) |
| `models.CreateTypeRequest` | [ModelsCreateTypeRequest ](../ugc-sdk/pkg/ugcclientmodels/models_create_type_request.go) |
| `models.CreateTypeResponse` | [ModelsCreateTypeResponse ](../ugc-sdk/pkg/ugcclientmodels/models_create_type_response.go) |
| `models.CreatorFollowState` | [ModelsCreatorFollowState ](../ugc-sdk/pkg/ugcclientmodels/models_creator_follow_state.go) |
| `models.CreatorOverviewResponse` | [ModelsCreatorOverviewResponse ](../ugc-sdk/pkg/ugcclientmodels/models_creator_overview_response.go) |
| `models.CreatorResponse` | [ModelsCreatorResponse ](../ugc-sdk/pkg/ugcclientmodels/models_creator_response.go) |
| `models.GetContentPreviewResponse` | [ModelsGetContentPreviewResponse ](../ugc-sdk/pkg/ugcclientmodels/models_get_content_preview_response.go) |
| `models.HideContentRequest` | [ModelsHideContentRequest ](../ugc-sdk/pkg/ugcclientmodels/models_hide_content_request.go) |
| `models.LikeState` | [ModelsLikeState ](../ugc-sdk/pkg/ugcclientmodels/models_like_state.go) |
| `models.PaginatedContentDownloadResponse` | [ModelsPaginatedContentDownloadResponse ](../ugc-sdk/pkg/ugcclientmodels/models_paginated_content_download_response.go) |
| `models.PaginatedCreatorOverviewResponse` | [ModelsPaginatedCreatorOverviewResponse ](../ugc-sdk/pkg/ugcclientmodels/models_paginated_creator_overview_response.go) |
| `models.PaginatedGetChannelResponse` | [ModelsPaginatedGetChannelResponse ](../ugc-sdk/pkg/ugcclientmodels/models_paginated_get_channel_response.go) |
| `models.PaginatedGetTagResponse` | [ModelsPaginatedGetTagResponse ](../ugc-sdk/pkg/ugcclientmodels/models_paginated_get_tag_response.go) |
| `models.PaginatedGetTypeResponse` | [ModelsPaginatedGetTypeResponse ](../ugc-sdk/pkg/ugcclientmodels/models_paginated_get_type_response.go) |
| `models.PaginatedGroupResponse` | [ModelsPaginatedGroupResponse ](../ugc-sdk/pkg/ugcclientmodels/models_paginated_group_response.go) |
| `models.PagingCursor` | [ModelsPagingCursor ](../ugc-sdk/pkg/ugcclientmodels/models_paging_cursor.go) |
| `models.PayloadURL` | [ModelsPayloadURL ](../ugc-sdk/pkg/ugcclientmodels/models_payload_url.go) |
| `models.PreviewURL` | [ModelsPreviewURL ](../ugc-sdk/pkg/ugcclientmodels/models_preview_url.go) |
| `models.PublicGetContentBulkRequest` | [ModelsPublicGetContentBulkRequest ](../ugc-sdk/pkg/ugcclientmodels/models_public_get_content_bulk_request.go) |
| `models.ScreenshotResponse` | [ModelsScreenshotResponse ](../ugc-sdk/pkg/ugcclientmodels/models_screenshot_response.go) |
| `models.UpdateScreenshotRequest` | [ModelsUpdateScreenshotRequest ](../ugc-sdk/pkg/ugcclientmodels/models_update_screenshot_request.go) |
| `models.UpdateScreenshotResponse` | [ModelsUpdateScreenshotResponse ](../ugc-sdk/pkg/ugcclientmodels/models_update_screenshot_response.go) |
| `models.UserFollowRequest` | [ModelsUserFollowRequest ](../ugc-sdk/pkg/ugcclientmodels/models_user_follow_request.go) |
| `models.UserFollowResponse` | [ModelsUserFollowResponse ](../ugc-sdk/pkg/ugcclientmodels/models_user_follow_response.go) |
| `models.createScreenshotRequestItem` | [ModelsCreateScreenshotRequestItem ](../ugc-sdk/pkg/ugcclientmodels/models_create_screenshot_request_item.go) |
| `models.previewMetadata` | [ModelsPreviewMetadata ](../ugc-sdk/pkg/ugcclientmodels/models_preview_metadata.go) |
| `models.updateScreenshot` | [ModelsUpdateScreenshot ](../ugc-sdk/pkg/ugcclientmodels/models_update_screenshot.go) |
| `response.Error` | [ResponseError ](../ugc-sdk/pkg/ugcclientmodels/response_error.go) |
