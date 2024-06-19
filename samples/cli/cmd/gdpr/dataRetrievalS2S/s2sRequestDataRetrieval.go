// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dataRetrievalS2S

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/data_retrieval_s2_s"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// S2SRequestDataRetrievalCmd represents the S2SRequestDataRetrieval command
var S2SRequestDataRetrievalCmd = &cobra.Command{
	Use:   "s2sRequestDataRetrieval",
	Short: "S2S request data retrieval",
	Long:  `S2S request data retrieval`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalS2SService := &gdpr.DataRetrievalS2SService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &data_retrieval_s2_s.S2SRequestDataRetrievalParams{
			Namespace: namespace,
			UserID:    userId,
		}
		created, errCreated := dataRetrievalS2SService.S2SRequestDataRetrievalShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	S2SRequestDataRetrievalCmd.Flags().String("namespace", "", "Namespace")
	_ = S2SRequestDataRetrievalCmd.MarkFlagRequired("namespace")
	S2SRequestDataRetrievalCmd.Flags().String("userId", "", "User id")
	_ = S2SRequestDataRetrievalCmd.MarkFlagRequired("userId")
}
