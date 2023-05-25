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

// FleetGetCmd represents the FleetGet command
var FleetGetCmd = &cobra.Command{
	Use:   "fleetGet",
	Short: "Fleet get",
	Long:  `Fleet get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetGetParams{
			FleetID:   fleetID,
			Namespace: namespace,
		}
		ok, errOK := fleetsService.FleetGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FleetGetCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetGetCmd.MarkFlagRequired("fleetID")
	FleetGetCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetGetCmd.MarkFlagRequired("namespace")
}
