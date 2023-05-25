// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleets

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FleetServersCmd represents the FleetServers command
var FleetServersCmd = &cobra.Command{
	Use:   "fleetServers",
	Short: "Fleet servers",
	Long:  `Fleet servers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetServersParams{
			FleetID:   fleetID,
			Namespace: namespace,
		}
		ok, errOK := fleetsService.FleetServersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FleetServersCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetServersCmd.MarkFlagRequired("fleetID")
	FleetServersCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetServersCmd.MarkFlagRequired("namespace")
}
