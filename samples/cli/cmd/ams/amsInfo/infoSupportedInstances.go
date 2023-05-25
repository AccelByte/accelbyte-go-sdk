// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package amsInfo

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/a_m_s_info"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// InfoSupportedInstancesCmd represents the InfoSupportedInstances command
var InfoSupportedInstancesCmd = &cobra.Command{
	Use:   "infoSupportedInstances",
	Short: "Info supported instances",
	Long:  `Info supported instances`,
	RunE: func(cmd *cobra.Command, args []string) error {
		amsInfoService := &ams.AMSInfoService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &a_m_s_info.InfoSupportedInstancesParams{
			Namespace: namespace,
		}
		ok, errOK := amsInfoService.InfoSupportedInstancesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	InfoSupportedInstancesCmd.Flags().String("namespace", "", "Namespace")
	_ = InfoSupportedInstancesCmd.MarkFlagRequired("namespace")
}
