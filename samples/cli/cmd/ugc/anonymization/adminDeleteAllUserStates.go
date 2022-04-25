// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package anonymization

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteAllUserStatesCmd represents the AdminDeleteAllUserStates command
var AdminDeleteAllUserStatesCmd = &cobra.Command{
	Use:   "adminDeleteAllUserStates",
	Short: "Admin delete all user states",
	Long:  `Admin delete all user states`,
	RunE: func(cmd *cobra.Command, args []string) error {
		anonymizationService := &ugc.AnonymizationService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &anonymization.AdminDeleteAllUserStatesParams{
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := anonymizationService.AdminDeleteAllUserStatesShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteAllUserStatesCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteAllUserStatesCmd.MarkFlagRequired("namespace")
	AdminDeleteAllUserStatesCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeleteAllUserStatesCmd.MarkFlagRequired("userId")
}
