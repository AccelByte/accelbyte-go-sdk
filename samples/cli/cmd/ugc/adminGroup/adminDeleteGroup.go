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

// AdminDeleteGroupCmd represents the AdminDeleteGroup command
var AdminDeleteGroupCmd = &cobra.Command{
	Use:   "adminDeleteGroup",
	Short: "Admin delete group",
	Long:  `Admin delete group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_group.AdminDeleteGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := adminGroupService.AdminDeleteGroupShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteGroupCmd.Flags().StringP("groupId", "", "", "Group id")
	_ = AdminDeleteGroupCmd.MarkFlagRequired("groupId")
	AdminDeleteGroupCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteGroupCmd.MarkFlagRequired("namespace")
	AdminDeleteGroupCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeleteGroupCmd.MarkFlagRequired("userId")
}
