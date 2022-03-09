// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
)

// AdminRequestDataRetrievalCmd represents the AdminRequestDataRetrieval command
var AdminRequestDataRetrievalCmd = &cobra.Command{
	Use:   "adminRequestDataRetrieval",
	Short: "Admin request data retrieval",
	Long:  `Admin request data retrieval`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		password, _ := cmd.Flags().GetString("password")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &data_retrieval.AdminRequestDataRetrievalParams{
			Password:   &password,
			Namespace:  namespace,
			UserID:     userId,
			HTTPClient: httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.AdminRequestDataRetrieval(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	AdminRequestDataRetrievalCmd.Flags().StringP("password", "", "", "Password")
	AdminRequestDataRetrievalCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	AdminRequestDataRetrievalCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
