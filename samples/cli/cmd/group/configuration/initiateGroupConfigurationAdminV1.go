// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// initiateGroupConfigurationAdminV1Cmd represents the initiateGroupConfigurationAdminV1 command
var initiateGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "initiateGroupConfigurationAdminV1",
	Short: "Initiate group configuration admin V1",
	Long:  `Initiate group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.InitiateGroupConfigurationAdminV1Params{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configurationService.InitiateGroupConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(initiateGroupConfigurationAdminV1Cmd)
	initiateGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = initiateGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
