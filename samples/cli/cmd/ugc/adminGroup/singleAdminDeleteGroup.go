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

// singleAdminDeleteGroupCmd represents the singleAdminDeleteGroup command
var singleAdminDeleteGroupCmd = &cobra.Command{
	Use:   "singleAdminDeleteGroup",
	Short: "Single admin delete group",
	Long:  `Single admin delete group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_group.SingleAdminDeleteGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminGroupService.SingleAdminDeleteGroup(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(singleAdminDeleteGroupCmd)
	singleAdminDeleteGroupCmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = singleAdminDeleteGroupCmd.MarkFlagRequired("groupId")
	singleAdminDeleteGroupCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = singleAdminDeleteGroupCmd.MarkFlagRequired("namespace")
}
