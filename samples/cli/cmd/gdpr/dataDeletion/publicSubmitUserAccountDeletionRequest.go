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

// PublicSubmitUserAccountDeletionRequestCmd represents the PublicSubmitUserAccountDeletionRequest command
var PublicSubmitUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "publicSubmitUserAccountDeletionRequest",
	Short: "Public submit user account deletion request",
	Long:  `Public submit user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		languageTag, _ := cmd.Flags().GetString("languageTag")
		input := &data_deletion.PublicSubmitUserAccountDeletionRequestParams{
			LanguageTag: &languageTag,
			Password:    password,
			Namespace:   namespace,
			UserID:      userId,
		}
		created, errCreated := dataDeletionService.PublicSubmitUserAccountDeletionRequestShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicSubmitUserAccountDeletionRequestCmd.Flags().String("languageTag", "", "Language tag")
	PublicSubmitUserAccountDeletionRequestCmd.Flags().String("password", "", "Password")
	_ = PublicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("password")
	PublicSubmitUserAccountDeletionRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	PublicSubmitUserAccountDeletionRequestCmd.Flags().String("userId", "", "User id")
	_ = PublicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
