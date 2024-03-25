// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package development

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/development"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DevelopmentServerConfigurationGetCmd represents the DevelopmentServerConfigurationGet command
var DevelopmentServerConfigurationGetCmd = &cobra.Command{
	Use:   "developmentServerConfigurationGet",
	Short: "Development server configuration get",
	Long:  `Development server configuration get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		developmentService := &ams.DevelopmentService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		developmentServerConfigID, _ := cmd.Flags().GetString("developmentServerConfigID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &development.DevelopmentServerConfigurationGetParams{
			DevelopmentServerConfigID: developmentServerConfigID,
			Namespace:                 namespace,
		}
		ok, errOK := developmentService.DevelopmentServerConfigurationGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	DevelopmentServerConfigurationGetCmd.Flags().String("developmentServerConfigID", "", "Development server config ID")
	_ = DevelopmentServerConfigurationGetCmd.MarkFlagRequired("developmentServerConfigID")
	DevelopmentServerConfigurationGetCmd.Flags().String("namespace", "", "Namespace")
	_ = DevelopmentServerConfigurationGetCmd.MarkFlagRequired("namespace")
}
