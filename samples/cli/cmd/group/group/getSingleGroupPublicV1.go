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

// getSingleGroupPublicV1Cmd represents the getSingleGroupPublicV1 command
var getSingleGroupPublicV1Cmd = &cobra.Command{
	Use:   "getSingleGroupPublicV1",
	Short: "Get single group public V1",
	Long:  `Get single group public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.GetSingleGroupPublicV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupService.GetSingleGroupPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getSingleGroupPublicV1Cmd)
	getSingleGroupPublicV1Cmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = getSingleGroupPublicV1Cmd.MarkFlagRequired("groupId")
	getSingleGroupPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getSingleGroupPublicV1Cmd.MarkFlagRequired("namespace")
}
