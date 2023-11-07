// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package amsQoS

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/a_m_s_qo_s"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QoSRegionsGetCmd represents the QoSRegionsGet command
var QoSRegionsGetCmd = &cobra.Command{
	Use:   "qoSRegionsGet",
	Short: "Qo S regions get",
	Long:  `Qo S regions get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsQoSService := &ams.AMSQoSService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		status, _ := cmd.Flags().GetString("status")
		input := &a_m_s_qo_s.QoSRegionsGetParams{
			Namespace: namespace,
			Status:    &status,
		}
		ok, errOK := amsQoSService.QoSRegionsGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	QoSRegionsGetCmd.Flags().String("namespace", "", "Namespace")
	_ = QoSRegionsGetCmd.MarkFlagRequired("namespace")
	QoSRegionsGetCmd.Flags().String("status", "", "Status")
}
