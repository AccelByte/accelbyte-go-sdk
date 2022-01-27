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
)

// PublicGetUserPersonalDataRequestsCmd represents the PublicGetUserPersonalDataRequests command
var PublicGetUserPersonalDataRequestsCmd = &cobra.Command{
	Use:   "PublicGetUserPersonalDataRequests",
	Short: "Public get user personal data requests",
	Long:  `Public get user personal data requests`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalService := &gdpr.DataRetrievalService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &data_retrieval.PublicGetUserPersonalDataRequestsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := dataRetrievalService.PublicGetUserPersonalDataRequests(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicGetUserPersonalDataRequestsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = PublicGetUserPersonalDataRequestsCmd.MarkFlagRequired("namespace")
	PublicGetUserPersonalDataRequestsCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = PublicGetUserPersonalDataRequestsCmd.MarkFlagRequired("userId")
	PublicGetUserPersonalDataRequestsCmd.Flags().Int64P("limit", "lt", 20, "Limit")
	PublicGetUserPersonalDataRequestsCmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
