// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ugc

import (
	"github.com/AccelByte/sample-apps/cmd/ugc/adminChannel"
	"github.com/AccelByte/sample-apps/cmd/ugc/adminContent"
	"github.com/AccelByte/sample-apps/cmd/ugc/adminGroup"
	"github.com/AccelByte/sample-apps/cmd/ugc/adminTag"
	"github.com/AccelByte/sample-apps/cmd/ugc/adminType"
	"github.com/AccelByte/sample-apps/cmd/ugc/anonymization"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicChannel"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicContent"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicCreator"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicDownloadCount"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicFollow"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicGroup"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicLike"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicTag"
	"github.com/AccelByte/sample-apps/cmd/ugc/publicType"
	"github.com/spf13/cobra"
)

// UgcCmd represents the service's child command
var UgcCmd = &cobra.Command{
	Use:   "Ugc",
	Short: "Ugc to get all the commands",
}

func init() {
	UgcCmd.AddCommand(adminChannel.SingleAdminGetChannelCmd)
	UgcCmd.AddCommand(adminChannel.AdminCreateChannelCmd)
	UgcCmd.AddCommand(adminChannel.SingleAdminUpdateChannelCmd)
	UgcCmd.AddCommand(adminChannel.SingleAdminDeleteChannelCmd)
	UgcCmd.AddCommand(adminContent.AdminUploadContentDirectCmd)
	UgcCmd.AddCommand(adminContent.AdminUploadContentS3Cmd)
	UgcCmd.AddCommand(adminContent.SingleAdminUpdateContentS3Cmd)
	UgcCmd.AddCommand(adminContent.AdminSearchChannelSpecificContentCmd)
	UgcCmd.AddCommand(adminContent.SingleAdminUpdateContentDirectCmd)
	UgcCmd.AddCommand(adminContent.SingleAdminDeleteContentCmd)
	UgcCmd.AddCommand(adminContent.SingleAdminGetContentCmd)
	UgcCmd.AddCommand(adminContent.AdminGetContentBulkCmd)
	UgcCmd.AddCommand(adminContent.AdminSearchContentCmd)
	UgcCmd.AddCommand(adminContent.AdminGetContentBulkByShareCodesCmd)
	UgcCmd.AddCommand(adminContent.AdminGetUserContentByShareCodeCmd)
	UgcCmd.AddCommand(adminContent.AdminGetSpecificContentCmd)
	UgcCmd.AddCommand(adminContent.AdminDownloadContentPreviewCmd)
	UgcCmd.AddCommand(adminContent.RollbackContentVersionCmd)
	UgcCmd.AddCommand(adminContent.AdminUpdateScreenshotsCmd)
	UgcCmd.AddCommand(adminContent.AdminUploadContentScreenshotCmd)
	UgcCmd.AddCommand(adminContent.AdminDeleteContentScreenshotCmd)
	UgcCmd.AddCommand(adminContent.ListContentVersionsCmd)
	UgcCmd.AddCommand(adminGroup.SingleAdminGetAllGroupsCmd)
	UgcCmd.AddCommand(adminGroup.AdminCreateGroupCmd)
	UgcCmd.AddCommand(adminGroup.SingleAdminGetGroupCmd)
	UgcCmd.AddCommand(adminGroup.SingleAdminUpdateGroupCmd)
	UgcCmd.AddCommand(adminGroup.SingleAdminDeleteGroupCmd)
	UgcCmd.AddCommand(adminGroup.SingleAdminGetGroupContentsCmd)
	UgcCmd.AddCommand(adminTag.AdminGetTagCmd)
	UgcCmd.AddCommand(adminTag.AdminCreateTagCmd)
	UgcCmd.AddCommand(adminTag.AdminUpdateTagCmd)
	UgcCmd.AddCommand(adminTag.AdminDeleteTagCmd)
	UgcCmd.AddCommand(adminType.AdminGetTypeCmd)
	UgcCmd.AddCommand(adminType.AdminCreateTypeCmd)
	UgcCmd.AddCommand(adminType.AdminUpdateTypeCmd)
	UgcCmd.AddCommand(adminType.AdminDeleteTypeCmd)
	UgcCmd.AddCommand(adminChannel.AdminGetChannelCmd)
	UgcCmd.AddCommand(anonymization.AdminDeleteAllUserChannelsCmd)
	UgcCmd.AddCommand(adminChannel.AdminUpdateChannelCmd)
	UgcCmd.AddCommand(adminChannel.AdminDeleteChannelCmd)
	UgcCmd.AddCommand(adminContent.AdminUpdateContentS3ByShareCodeCmd)
	UgcCmd.AddCommand(adminContent.AdminUpdateContentS3Cmd)
	UgcCmd.AddCommand(adminContent.DeleteContentByShareCodeCmd)
	UgcCmd.AddCommand(adminContent.AdminUpdateContentDirectCmd)
	UgcCmd.AddCommand(adminContent.AdminDeleteContentCmd)
	UgcCmd.AddCommand(adminContent.AdminGetContentCmd)
	UgcCmd.AddCommand(anonymization.AdminDeleteAllUserContentsCmd)
	UgcCmd.AddCommand(adminContent.AdminHideUserContentCmd)
	UgcCmd.AddCommand(adminGroup.AdminGetAllGroupsCmd)
	UgcCmd.AddCommand(anonymization.AdminDeleteAllUserGroupCmd)
	UgcCmd.AddCommand(adminGroup.AdminGetGroupCmd)
	UgcCmd.AddCommand(adminGroup.AdminUpdateGroupCmd)
	UgcCmd.AddCommand(adminGroup.AdminDeleteGroupCmd)
	UgcCmd.AddCommand(adminGroup.AdminGetGroupContentsCmd)
	UgcCmd.AddCommand(anonymization.AdminDeleteAllUserStatesCmd)
	UgcCmd.AddCommand(publicContent.SearchChannelSpecificContentCmd)
	UgcCmd.AddCommand(publicContent.PublicSearchContentCmd)
	UgcCmd.AddCommand(publicContent.PublicGetContentBulkCmd)
	UgcCmd.AddCommand(publicFollow.GetFollowedContentCmd)
	UgcCmd.AddCommand(publicLike.GetLikedContentCmd)
	UgcCmd.AddCommand(publicContent.PublicDownloadContentByShareCodeCmd)
	UgcCmd.AddCommand(publicContent.PublicDownloadContentByContentIDCmd)
	UgcCmd.AddCommand(publicDownloadCount.AddDownloadCountCmd)
	UgcCmd.AddCommand(publicLike.UpdateContentLikeStatusCmd)
	UgcCmd.AddCommand(publicContent.PublicDownloadContentPreviewCmd)
	UgcCmd.AddCommand(publicTag.GetTagCmd)
	UgcCmd.AddCommand(publicType.GetTypeCmd)
	UgcCmd.AddCommand(publicCreator.PublicSearchCreatorCmd)
	UgcCmd.AddCommand(publicFollow.GetFollowedUsersCmd)
	UgcCmd.AddCommand(publicCreator.PublicGetCreatorCmd)
	UgcCmd.AddCommand(publicChannel.GetChannelsCmd)
	UgcCmd.AddCommand(publicChannel.PublicCreateChannelCmd)
	UgcCmd.AddCommand(anonymization.DeleteAllUserChannelCmd)
	UgcCmd.AddCommand(publicChannel.UpdateChannelCmd)
	UgcCmd.AddCommand(publicChannel.DeleteChannelCmd)
	UgcCmd.AddCommand(publicContent.CreateContentDirectCmd)
	UgcCmd.AddCommand(publicContent.CreateContentS3Cmd)
	UgcCmd.AddCommand(publicContent.UpdateContentS3Cmd)
	UgcCmd.AddCommand(publicContent.UpdateContentDirectCmd)
	UgcCmd.AddCommand(publicContent.DeleteContentCmd)
	UgcCmd.AddCommand(publicContent.PublicGetUserContentCmd)
	UgcCmd.AddCommand(anonymization.DeleteAllUserContentsCmd)
	UgcCmd.AddCommand(publicContent.UpdateScreenshotsCmd)
	UgcCmd.AddCommand(publicContent.UploadContentScreenshotCmd)
	UgcCmd.AddCommand(publicContent.DeleteContentScreenshotCmd)
	UgcCmd.AddCommand(publicFollow.UpdateUserFollowStatusCmd)
	UgcCmd.AddCommand(publicFollow.GetPublicFollowersCmd)
	UgcCmd.AddCommand(publicFollow.GetPublicFollowingCmd)
	UgcCmd.AddCommand(publicGroup.GetGroupsCmd)
	UgcCmd.AddCommand(publicGroup.CreateGroupCmd)
	UgcCmd.AddCommand(anonymization.DeleteAllUserGroupCmd)
	UgcCmd.AddCommand(publicGroup.GetGroupCmd)
	UgcCmd.AddCommand(publicGroup.UpdateGroupCmd)
	UgcCmd.AddCommand(publicGroup.DeleteGroupCmd)
	UgcCmd.AddCommand(publicGroup.GetGroupContentCmd)
	UgcCmd.AddCommand(anonymization.DeleteAllUserStatesCmd)
}
