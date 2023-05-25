// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package servers

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/servers"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FleetServerHistoryCmd represents the FleetServerHistory command
var FleetServerHistoryCmd = &cobra.Command{
	Use:   "fleetServerHistory",
	Short: "Fleet server history",
	Long:  `Fleet server history`,
	RunE: func(cmd *cobra.Command, args []string) error {
		serversService := &ams.ServersService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &servers.FleetServerHistoryParams{
			FleetID:   fleetID,
			Namespace: namespace,
		}
		ok, errOK := serversService.FleetServerHistoryShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FleetServerHistoryCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetServerHistoryCmd.MarkFlagRequired("fleetID")
	FleetServerHistoryCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetServerHistoryCmd.MarkFlagRequired("namespace")
}
