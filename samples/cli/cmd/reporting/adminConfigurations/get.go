// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminConfigurations

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetCmd represents the Get command
var GetCmd = &cobra.Command{
	Use:   "get",
	Short: "Get",
	Long:  `Get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConfigurationsService := &reporting.AdminConfigurationsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		category, _ := cmd.Flags().GetString("category")
		input := &admin_configurations.GetParams{
			Namespace: namespace,
			Category:  &category,
		}
		ok, err := adminConfigurationsService.GetShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetCmd.Flags().String("namespace", "", "Namespace")
	_ = GetCmd.MarkFlagRequired("namespace")
	GetCmd.Flags().String("category", "", "Category")
}
