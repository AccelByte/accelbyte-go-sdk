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
		input := &data_retrieval.PublicRequestDataRetrievalParams{
			Password:  password,
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := dataRetrievalService.PublicRequestDataRetrievalShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	PublicRequestDataRetrievalCmd.Flags().String("password", "", "Password")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("password")
	PublicRequestDataRetrievalCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	PublicRequestDataRetrievalCmd.Flags().String("userId", "", "User id")
	_ = PublicRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
