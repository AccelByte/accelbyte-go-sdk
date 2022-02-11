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

// AdminGeneratePersonalDataURLCmd represents the AdminGeneratePersonalDataURL command
var AdminGeneratePersonalDataURLCmd = &cobra.Command{
	Use:   "adminGeneratePersonalDataURL",
	Short: "Admin generate personal data URL",
	Long:  `Admin generate personal data URL`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		userId, _ := cmd.Flags().GetString("userId")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &data_retrieval.AdminGeneratePersonalDataURLParams{
			Password:    password,
			Namespace:   namespace,
			RequestDate: requestDate,
			UserID:      userId,
			HTTPClient:  httpClient,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.AdminGeneratePersonalDataURL(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminGeneratePersonalDataURLCmd.Flags().StringP("password", "", "", "Password")
	_ = AdminGeneratePersonalDataURLCmd.MarkFlagRequired("password")
	AdminGeneratePersonalDataURLCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGeneratePersonalDataURLCmd.MarkFlagRequired("namespace")
	AdminGeneratePersonalDataURLCmd.Flags().StringP("requestDate", "", "", "Request date")
	_ = AdminGeneratePersonalDataURLCmd.MarkFlagRequired("requestDate")
	AdminGeneratePersonalDataURLCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGeneratePersonalDataURLCmd.MarkFlagRequired("userId")
}
