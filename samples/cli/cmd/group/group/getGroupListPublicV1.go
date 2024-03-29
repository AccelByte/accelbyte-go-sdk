// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupListPublicV1Cmd represents the GetGroupListPublicV1 command
var GetGroupListPublicV1Cmd = &cobra.Command{
	Use:   "getGroupListPublicV1",
	Short: "Get group list public V1",
	Long:  `Get group list public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		groupName, _ := cmd.Flags().GetString("groupName")
		groupRegion, _ := cmd.Flags().GetString("groupRegion")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &group_.GetGroupListPublicV1Params{
			Namespace:   namespace,
			GroupName:   &groupName,
			GroupRegion: &groupRegion,
			Limit:       &limit,
			Offset:      &offset,
		}
		ok, errOK := groupService.GetGroupListPublicV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGroupListPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupListPublicV1Cmd.MarkFlagRequired("namespace")
	GetGroupListPublicV1Cmd.Flags().String("groupName", "", "Group name")
	GetGroupListPublicV1Cmd.Flags().String("groupRegion", "", "Group region")
	GetGroupListPublicV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetGroupListPublicV1Cmd.Flags().Int64("offset", 0, "Offset")
}
