// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// initiateGroupConfigCmd represents the initiateGroupConfig command
var initiateGroupConfigCmd = &cobra.Command{
	Use:   "initiateGroupConfig",
	Short: "Initiate group config",
	Long:  `Initiate group config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("initiateGroupConfig called")
		namespace := cmd.Flag("namespace").Value.String()
		input := &configuration.InitiateGroupConfigurationAdminV1Params{
			Namespace: namespace,
		}
		groupConfigService := &group.ConfigurationService{
			Client:          factory.NewgroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupConfigService.InitiateGroupConfigurationAdminV1(input)
		if err != nil {
			logrus.Error(err)
			return err
		}
		marshal, err := json.Marshal(ok)
		if err != nil {
			return err
		}
		logrus.Info(string(marshal))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(initiateGroupConfigCmd)
	initiateGroupConfigCmd.Flags().StringP("namespace", "n", "", "Namespace")
	_ = initiateGroupConfigCmd.MarkFlagRequired("namespace")
}
