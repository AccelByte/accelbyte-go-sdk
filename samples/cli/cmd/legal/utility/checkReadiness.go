// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/utility"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// checkReadinessCmd represents the checkReadiness command
var checkReadinessCmd = &cobra.Command{
	Use:   "checkReadiness",
	Short: "Check readiness",
	Long:  `Check readiness`,
	RunE: func(cmd *cobra.Command, args []string) error {
		utilityService := &legal.UtilityService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &utility.CheckReadinessParams{}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := utilityService.CheckReadiness(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(checkReadinessCmd)
}
