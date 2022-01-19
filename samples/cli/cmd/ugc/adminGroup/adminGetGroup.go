// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminGetGroupCmd represents the adminGetGroup command
var adminGetGroupCmd = &cobra.Command{
	Use:   "adminGetGroup",
	Short: "Admin get group",
	Long:  `Admin get group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_group.AdminGetGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminGroupService.AdminGetGroup(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminGetGroupCmd)
	adminGetGroupCmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = adminGetGroupCmd.MarkFlagRequired("groupId")
	adminGetGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminGetGroupCmd.MarkFlagRequired("namespace")
	adminGetGroupCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminGetGroupCmd.MarkFlagRequired("userId")
}
