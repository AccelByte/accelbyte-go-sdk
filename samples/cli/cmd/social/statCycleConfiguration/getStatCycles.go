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

// GetStatCyclesCmd represents the GetStatCycles command
var GetStatCyclesCmd = &cobra.Command{
	Use:   "getStatCycles",
	Short: "Get stat cycles",
	Long:  `Get stat cycles`,
	RunE: func(cmd *cobra.Command, args []string) error {
		statCycleConfigurationService := &social.StatCycleConfigurationService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		cycleType, _ := cmd.Flags().GetString("cycleType")
		limit, _ := cmd.Flags().GetInt32("limit")
		name, _ := cmd.Flags().GetString("name")
		offset, _ := cmd.Flags().GetInt32("offset")
		status, _ := cmd.Flags().GetString("status")
		input := &stat_cycle_configuration.GetStatCyclesParams{
			Namespace: namespace,
			CycleType: &cycleType,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			Status:    &status,
		}
		ok, errOK := statCycleConfigurationService.GetStatCyclesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetStatCyclesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetStatCyclesCmd.MarkFlagRequired("namespace")
	GetStatCyclesCmd.Flags().String("cycleType", "", "Cycle type")
	GetStatCyclesCmd.Flags().Int32("limit", 20, "Limit")
	GetStatCyclesCmd.Flags().String("name", "", "Name")
	GetStatCyclesCmd.Flags().Int32("offset", 0, "Offset")
	GetStatCyclesCmd.Flags().String("status", "", "Status")
}
