// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleetCommander

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/fleet_commander"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// Func3Cmd represents the Func3 command
var Func3Cmd = &cobra.Command{
	Use:   "func3",
	Short: "Func3",
	Long:  `Func3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetCommanderService := &ams.FleetCommanderService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &fleet_commander.Func3Params{}
		errOK := fleetCommanderService.Func3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
