// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGroupListPublicV1Cmd represents the getGroupListPublicV1 command
var getGroupListPublicV1Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(getGroupListPublicV1Cmd)
	getGroupListPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getGroupListPublicV1Cmd.MarkFlagRequired("namespace")
	getGroupListPublicV1Cmd.Flags().StringP("groupName", "g", " ", "Group name")
	getGroupListPublicV1Cmd.Flags().StringP("groupRegion", "g", " ", "Group region")
	getGroupListPublicV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	getGroupListPublicV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}
