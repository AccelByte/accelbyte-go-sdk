// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicCancelUserPersonalDataRequestCmd represents the publicCancelUserPersonalDataRequest command
var publicCancelUserPersonalDataRequestCmd = &cobra.Command{
	Use:   "publicCancelUserPersonalDataRequest",
	Short: "Public cancel user personal data request",
	Long:  `Public cancel user personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_retrieval.PublicCancelUserPersonalDataRequestParams{
			Namespace:   namespace,
			RequestDate: requestDate,
			UserID:      userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.PublicCancelUserPersonalDataRequest(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCancelUserPersonalDataRequestCmd)
	publicCancelUserPersonalDataRequestCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicCancelUserPersonalDataRequestCmd.MarkFlagRequired("namespace")
	publicCancelUserPersonalDataRequestCmd.Flags().StringP("requestDate", "re", " ", "Request date")
	_ = publicCancelUserPersonalDataRequestCmd.MarkFlagRequired("requestDate")
	publicCancelUserPersonalDataRequestCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicCancelUserPersonalDataRequestCmd.MarkFlagRequired("userId")
}
