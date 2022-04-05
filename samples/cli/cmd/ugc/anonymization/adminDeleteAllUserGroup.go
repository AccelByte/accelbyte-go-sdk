// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteAllUserGroupCmd represents the AdminDeleteAllUserGroup command
var AdminDeleteAllUserGroupCmd = &cobra.Command{
	Use:   "adminDeleteAllUserGroup",
	Short: "Admin delete all user group",
	Long:  `Admin delete all user group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminDeleteAllUserGroupParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := anonymizationService.AdminDeleteAllUserGroupShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteAllUserGroupCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteAllUserGroupCmd.MarkFlagRequired("namespace")
	AdminDeleteAllUserGroupCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeleteAllUserGroupCmd.MarkFlagRequired("userId")
}
