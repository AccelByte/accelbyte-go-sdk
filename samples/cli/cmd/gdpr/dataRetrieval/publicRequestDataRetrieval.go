// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataRetrieval

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicRequestDataRetrievalCmd represents the PublicRequestDataRetrieval command
var PublicRequestDataRetrievalCmd = &cobra.Command{
	Use:   "publicRequestDataRetrieval",
	Short: "Public request data retrieval",
	Long:  `Public request data retrieval`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
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
		input := &data_retrieval.PublicRequestDataRetrievalParams{
			Password:   password,
			Namespace:  namespace,
			UserID:     userId,
			HTTPClient: httpClient,
		}
		ok, err := dataRetrievalService.PublicRequestDataRetrievalShort(input)
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
	PublicRequestDataRetrievalCmd.Flags().StringP("password", "", "", "Password")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("password")
	PublicRequestDataRetrievalCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	PublicRequestDataRetrievalCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
