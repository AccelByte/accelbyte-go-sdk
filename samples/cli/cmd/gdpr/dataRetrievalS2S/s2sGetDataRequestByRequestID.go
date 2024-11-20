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

// S2SGetDataRequestByRequestIDCmd represents the S2SGetDataRequestByRequestID command
var S2SGetDataRequestByRequestIDCmd = &cobra.Command{
	Use:   "s2sGetDataRequestByRequestID",
	Short: "S2S get data request by request ID",
	Long:  `S2S get data request by request ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dataRetrievalS2SService := &gdpr.DataRetrievalS2SService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		requestId, _ := cmd.Flags().GetString("requestId")
		input := &data_retrieval_s2_s.S2SGetDataRequestByRequestIDParams{
			Namespace: namespace,
			RequestID: requestId,
		}
		ok, errOK := dataRetrievalS2SService.S2SGetDataRequestByRequestIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	S2SGetDataRequestByRequestIDCmd.Flags().String("namespace", "", "Namespace")
	_ = S2SGetDataRequestByRequestIDCmd.MarkFlagRequired("namespace")
	S2SGetDataRequestByRequestIDCmd.Flags().String("requestId", "", "Request id")
	_ = S2SGetDataRequestByRequestIDCmd.MarkFlagRequired("requestId")
}
