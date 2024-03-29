// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrieval

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicCancelUserPersonalDataRequestCmd represents the PublicCancelUserPersonalDataRequest command
var PublicCancelUserPersonalDataRequestCmd = &cobra.Command{
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
		errNoContent := dataRetrievalService.PublicCancelUserPersonalDataRequestShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicCancelUserPersonalDataRequestCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCancelUserPersonalDataRequestCmd.MarkFlagRequired("namespace")
	PublicCancelUserPersonalDataRequestCmd.Flags().String("requestDate", "", "Request date")
	_ = PublicCancelUserPersonalDataRequestCmd.MarkFlagRequired("requestDate")
	PublicCancelUserPersonalDataRequestCmd.Flags().String("userId", "", "User id")
	_ = PublicCancelUserPersonalDataRequestCmd.MarkFlagRequired("userId")
}
