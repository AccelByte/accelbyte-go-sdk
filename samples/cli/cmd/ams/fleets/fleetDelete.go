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

// FleetDeleteCmd represents the FleetDelete command
var FleetDeleteCmd = &cobra.Command{
	Use:   "fleetDelete",
	Short: "Fleet delete",
	Long:  `Fleet delete`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetDeleteParams{
			FleetID:   fleetID,
			Namespace: namespace,
		}
		errNoContent := fleetsService.FleetDeleteShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	FleetDeleteCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetDeleteCmd.MarkFlagRequired("fleetID")
	FleetDeleteCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetDeleteCmd.MarkFlagRequired("namespace")
}
