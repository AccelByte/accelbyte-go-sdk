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
		namespace, _ := cmd.Flags().GetString("namespace")
		requestDate, _ := cmd.Flags().GetString("requestDate")
		userId, _ := cmd.Flags().GetString("userId")
		password, _ := cmd.Flags().GetString("password")
		input := &data_retrieval.AdminGeneratePersonalDataURLParams{
			Password:    &password,
			Namespace:   namespace,
			RequestDate: requestDate,
			UserID:      userId,
		}
		ok, errOK := dataRetrievalService.AdminGeneratePersonalDataURLShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGeneratePersonalDataURLCmd.Flags().String("password", "", "Password")
	AdminGeneratePersonalDataURLCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGeneratePersonalDataURLCmd.MarkFlagRequired("namespace")
	AdminGeneratePersonalDataURLCmd.Flags().String("requestDate", "", "Request date")
	_ = AdminGeneratePersonalDataURLCmd.MarkFlagRequired("requestDate")
	AdminGeneratePersonalDataURLCmd.Flags().String("userId", "", "User id")
	_ = AdminGeneratePersonalDataURLCmd.MarkFlagRequired("userId")
}
