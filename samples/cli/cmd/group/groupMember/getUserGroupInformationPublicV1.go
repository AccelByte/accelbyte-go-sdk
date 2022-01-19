// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group_member"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserGroupInformationPublicV1Cmd represents the getUserGroupInformationPublicV1 command
var getUserGroupInformationPublicV1Cmd = &cobra.Command{
	Use:   "getUserGroupInformationPublicV1",
	Short: "Get user group information public V1",
	Long:  `Get user group information public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupMemberService := &group.GroupMemberService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &group_member.GetUserGroupInformationPublicV1Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupMemberService.GetUserGroupInformationPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserGroupInformationPublicV1Cmd)
	getUserGroupInformationPublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserGroupInformationPublicV1Cmd.MarkFlagRequired("namespace")
	getUserGroupInformationPublicV1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserGroupInformationPublicV1Cmd.MarkFlagRequired("userId")
}
