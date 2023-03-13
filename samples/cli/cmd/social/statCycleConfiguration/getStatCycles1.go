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

// GetStatCycles1Cmd represents the GetStatCycles1 command
var GetStatCycles1Cmd = &cobra.Command{
	Use:   "getStatCycles1",
	Short: "Get stat cycles 1",
	Long:  `Get stat cycles 1`,
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
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &stat_cycle_configuration.GetStatCycles1Params{
			Namespace: namespace,
			CycleType: &cycleType,
			Limit:     &limit,
			Name:      &name,
			Offset:    &offset,
			SortBy:    &sortBy,
			Status:    &status,
		}
		ok, errOK := statCycleConfigurationService.GetStatCycles1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetStatCycles1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetStatCycles1Cmd.MarkFlagRequired("namespace")
	GetStatCycles1Cmd.Flags().String("cycleType", "", "Cycle type")
	GetStatCycles1Cmd.Flags().Int32("limit", 20, "Limit")
	GetStatCycles1Cmd.Flags().String("name", "", "Name")
	GetStatCycles1Cmd.Flags().Int32("offset", 0, "Offset")
	GetStatCycles1Cmd.Flags().String("sortBy", "", "Sort by")
	GetStatCycles1Cmd.Flags().String("status", "", "Status")
}
