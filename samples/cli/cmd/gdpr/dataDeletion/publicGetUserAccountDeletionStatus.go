// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletion

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserAccountDeletionStatusCmd represents the PublicGetUserAccountDeletionStatus command
var PublicGetUserAccountDeletionStatusCmd = &cobra.Command{
	Use:   "publicGetUserAccountDeletionStatus",
	Short: "Public get user account deletion status",
	Long:  `Public get user account deletion status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion.PublicGetUserAccountDeletionStatusParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := dataDeletionService.PublicGetUserAccountDeletionStatusShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserAccountDeletionStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserAccountDeletionStatusCmd.MarkFlagRequired("namespace")
	PublicGetUserAccountDeletionStatusCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserAccountDeletionStatusCmd.MarkFlagRequired("userId")
}
