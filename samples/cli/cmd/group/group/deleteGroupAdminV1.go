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

// deleteGroupAdminV1Cmd represents the deleteGroupAdminV1 command
var deleteGroupAdminV1Cmd = &cobra.Command{
	Use:   "deleteGroupAdminV1",
	Short: "Delete group admin V1",
	Long:  `Delete group admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.DeleteGroupAdminV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := groupService.DeleteGroupAdminV1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteGroupAdminV1Cmd)
	deleteGroupAdminV1Cmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = deleteGroupAdminV1Cmd.MarkFlagRequired("groupId")
	deleteGroupAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteGroupAdminV1Cmd.MarkFlagRequired("namespace")
}
