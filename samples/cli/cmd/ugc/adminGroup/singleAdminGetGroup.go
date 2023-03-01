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

// SingleAdminGetGroupCmd represents the SingleAdminGetGroup command
var SingleAdminGetGroupCmd = &cobra.Command{
	Use:   "singleAdminGetGroup",
	Short: "Single admin get group",
	Long:  `Single admin get group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminGroupService := &ugc.AdminGroupService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_group.SingleAdminGetGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := adminGroupService.SingleAdminGetGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SingleAdminGetGroupCmd.Flags().String("groupId", "", "Group id")
	_ = SingleAdminGetGroupCmd.MarkFlagRequired("groupId")
	SingleAdminGetGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminGetGroupCmd.MarkFlagRequired("namespace")
}
