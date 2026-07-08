// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrievalHeadless

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval_headless"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicCancelMyPersonalDataRequestCmd represents the PublicCancelMyPersonalDataRequest command
var PublicCancelMyPersonalDataRequestCmd = &cobra.Command{
	Use:   "publicCancelMyPersonalDataRequest",
	Short: "Public cancel my personal data request",
	Long:  `Public cancel my personal data request`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalHeadlessService := &gdpr.DataRetrievalHeadlessService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		requestDate, _ := cmd.Flags().GetString("requestDate")
		input := &data_retrieval_headless.PublicCancelMyPersonalDataRequestParams{
			RequestDate: requestDate,
		}
		errNoContent := dataRetrievalHeadlessService.PublicCancelMyPersonalDataRequestShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicCancelMyPersonalDataRequestCmd.Flags().String("requestDate", "", "Request date")
	_ = PublicCancelMyPersonalDataRequestCmd.MarkFlagRequired("requestDate")
}
