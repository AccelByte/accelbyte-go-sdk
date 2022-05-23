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

// SingleAdminDeleteGroupCmd represents the SingleAdminDeleteGroup command
var SingleAdminDeleteGroupCmd = &cobra.Command{
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
		errInput := adminGroupService.SingleAdminDeleteGroupShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SingleAdminDeleteGroupCmd.Flags().String("groupId", "", "Group id")
	_ = SingleAdminDeleteGroupCmd.MarkFlagRequired("groupId")
	SingleAdminDeleteGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminDeleteGroupCmd.MarkFlagRequired("namespace")
}
