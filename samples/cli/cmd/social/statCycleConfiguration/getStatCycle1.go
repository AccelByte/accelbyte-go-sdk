// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package statCycleConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/stat_cycle_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetStatCycle1Cmd represents the GetStatCycle1 command
var GetStatCycle1Cmd = &cobra.Command{
	Use:   "getStatCycle1",
	Short: "Get stat cycle 1",
	Long:  `Get stat cycle 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		cycleId, _ := cmd.Flags().GetString("cycleId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &stat_cycle_configuration.GetStatCycle1Params{
			CycleID:   cycleId,
			Namespace: namespace,
		}
		ok, errOK := statCycleConfigurationService.GetStatCycle1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetStatCycle1Cmd.Flags().String("cycleId", "", "Cycle id")
	_ = GetStatCycle1Cmd.MarkFlagRequired("cycleId")
	GetStatCycle1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetStatCycle1Cmd.MarkFlagRequired("namespace")
}
