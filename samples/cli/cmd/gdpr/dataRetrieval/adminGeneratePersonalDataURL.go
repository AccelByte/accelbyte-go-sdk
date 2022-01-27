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

// adminGeneratePersonalDataURLCmd represents the adminGeneratePersonalDataURL command
var adminGeneratePersonalDataURLCmd = &cobra.Command{
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
		input := &data_retrieval.AdminGeneratePersonalDataURLParams{
			Password:    password,
			Namespace:   namespace,
			RequestDate: requestDate,
			UserID:      userId,
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
	cmd.RootCmd.AddCommand(adminGeneratePersonalDataURLCmd)
	adminGeneratePersonalDataURLCmd.Flags().StringP("password", "pd", " ", "Password")
	_ = adminGeneratePersonalDataURLCmd.MarkFlagRequired("password")
	adminGeneratePersonalDataURLCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminGeneratePersonalDataURLCmd.MarkFlagRequired("namespace")
	adminGeneratePersonalDataURLCmd.Flags().StringP("requestDate", "re", " ", "Request date")
	_ = adminGeneratePersonalDataURLCmd.MarkFlagRequired("requestDate")
	adminGeneratePersonalDataURLCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminGeneratePersonalDataURLCmd.MarkFlagRequired("userId")
}
