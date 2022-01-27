// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "GetGroupListPublicV1",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupService.GetGroupListPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetGroupListPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetGroupListPublicV1Cmd.MarkFlagRequired("namespace")
	GetGroupListPublicV1Cmd.Flags().StringP("groupName", "ge", " ", "Group name")
	GetGroupListPublicV1Cmd.Flags().StringP("groupRegion", "gn", " ", "Group region")
	GetGroupListPublicV1Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	GetGroupListPublicV1Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
