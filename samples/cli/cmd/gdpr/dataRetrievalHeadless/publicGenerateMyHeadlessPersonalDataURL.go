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

// PublicGenerateMyHeadlessPersonalDataURLCmd represents the PublicGenerateMyHeadlessPersonalDataURL command
var PublicGenerateMyHeadlessPersonalDataURLCmd = &cobra.Command{
	Use:   "publicGenerateMyHeadlessPersonalDataURL",
	Short: "Public generate my headless personal data URL",
	Long:  `Public generate my headless personal data URL`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalHeadlessService := &gdpr.DataRetrievalHeadlessService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		requestDate, _ := cmd.Flags().GetString("requestDate")
		input := &data_retrieval_headless.PublicGenerateMyHeadlessPersonalDataURLParams{
			RequestDate: requestDate,
		}
		ok, errOK := dataRetrievalHeadlessService.PublicGenerateMyHeadlessPersonalDataURLShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGenerateMyHeadlessPersonalDataURLCmd.Flags().String("requestDate", "", "Request date")
	_ = PublicGenerateMyHeadlessPersonalDataURLCmd.MarkFlagRequired("requestDate")
}
