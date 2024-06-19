// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletionS2S

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_deletion_s2_s"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// S2SSubmitUserAccountDeletionRequestCmd represents the S2SSubmitUserAccountDeletionRequest command
var S2SSubmitUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "s2sSubmitUserAccountDeletionRequest",
	Short: "S2S submit user account deletion request",
	Long:  `S2S submit user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionS2SService := &gdpr.DataDeletionS2SService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_deletion_s2_s.S2SSubmitUserAccountDeletionRequestParams{
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := dataDeletionS2SService.S2SSubmitUserAccountDeletionRequestShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	S2SSubmitUserAccountDeletionRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = S2SSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	S2SSubmitUserAccountDeletionRequestCmd.Flags().String("userId", "", "User id")
	_ = S2SSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
