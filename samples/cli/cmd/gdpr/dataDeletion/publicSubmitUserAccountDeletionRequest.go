// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataDeletion

import (
	"net/http"

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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &data_deletion.PublicSubmitUserAccountDeletionRequestParams{
			Password:   password,
			Namespace:  namespace,
			UserID:     userId,
			HTTPClient: httpClient,
		}
		ok, err := dataDeletionService.PublicSubmitUserAccountDeletionRequestShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicSubmitUserAccountDeletionRequestCmd.Flags().String("password", "", "Password")
	_ = PublicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("password")
	PublicSubmitUserAccountDeletionRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	PublicSubmitUserAccountDeletionRequestCmd.Flags().String("userId", "", "User id")
	_ = PublicSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
