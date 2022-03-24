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

// PublicGeneratePersonalDataURLCmd represents the PublicGeneratePersonalDataURL command
var PublicGeneratePersonalDataURLCmd = &cobra.Command{
	Use:   "publicGeneratePersonalDataURL",
	Short: "Public generate personal data URL",
	Long:  `Public generate personal data URL`,
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
		input := &data_retrieval.PublicGeneratePersonalDataURLParams{
			Password:    password,
			Namespace:   namespace,
			RequestDate: requestDate,
			UserID:      userId,
			HTTPClient:  httpClient,
		}
		ok, err := dataRetrievalService.PublicGeneratePersonalDataURLShort(input)
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
	PublicGeneratePersonalDataURLCmd.Flags().StringP("password", "", "", "Password")
	_ = PublicGeneratePersonalDataURLCmd.MarkFlagRequired("password")
	PublicGeneratePersonalDataURLCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGeneratePersonalDataURLCmd.MarkFlagRequired("namespace")
	PublicGeneratePersonalDataURLCmd.Flags().StringP("requestDate", "", "", "Request date")
	_ = PublicGeneratePersonalDataURLCmd.MarkFlagRequired("requestDate")
	PublicGeneratePersonalDataURLCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGeneratePersonalDataURLCmd.MarkFlagRequired("userId")
}
