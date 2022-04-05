// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// AdminSubmitUserAccountDeletionRequestCmd represents the AdminSubmitUserAccountDeletionRequest command
var AdminSubmitUserAccountDeletionRequestCmd = &cobra.Command{
	Use:   "adminSubmitUserAccountDeletionRequest",
	Short: "Admin submit user account deletion request",
	Long:  `Admin submit user account deletion request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataDeletionService := &gdpr.DataDeletionService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &data_deletion.AdminSubmitUserAccountDeletionRequestParams{
			Namespace:  namespace,
			UserID:     userId,
			HTTPClient: httpClient,
		}
		ok, err := dataDeletionService.AdminSubmitUserAccountDeletionRequestShort(input)
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
	AdminSubmitUserAccountDeletionRequestCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("namespace")
	AdminSubmitUserAccountDeletionRequestCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminSubmitUserAccountDeletionRequestCmd.MarkFlagRequired("userId")
}
