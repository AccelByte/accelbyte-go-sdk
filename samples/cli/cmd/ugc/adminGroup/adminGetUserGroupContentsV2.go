// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUserGroupContentsV2Cmd represents the AdminGetUserGroupContentsV2 command
var AdminGetUserGroupContentsV2Cmd = &cobra.Command{
	Use:   "adminGetUserGroupContentsV2",
	Short: "Admin get user group contents V2",
	Long:  `Admin get user group contents V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_group.AdminGetUserGroupContentsV2Params{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminGroupService.AdminGetUserGroupContentsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetUserGroupContentsV2Cmd.Flags().String("groupId", "", "Group id")
	_ = AdminGetUserGroupContentsV2Cmd.MarkFlagRequired("groupId")
	AdminGetUserGroupContentsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserGroupContentsV2Cmd.MarkFlagRequired("namespace")
	AdminGetUserGroupContentsV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserGroupContentsV2Cmd.MarkFlagRequired("userId")
	AdminGetUserGroupContentsV2Cmd.Flags().Int64("limit", 20, "Limit")
	AdminGetUserGroupContentsV2Cmd.Flags().Int64("offset", 0, "Offset")
}
