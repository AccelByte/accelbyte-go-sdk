// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listGroupConfigurationAdminV1Cmd represents the listGroupConfigurationAdminV1 command
var listGroupConfigurationAdminV1Cmd = &cobra.Command{
	Use:   "listGroupConfigurationAdminV1",
	Short: "List group configuration admin V1",
	Long:  `List group configuration admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &group.ConfigurationService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &configuration.ListGroupConfigurationAdminV1Params{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configurationService.ListGroupConfigurationAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listGroupConfigurationAdminV1Cmd)
	listGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = listGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
	listGroupConfigurationAdminV1Cmd.Flags().Int64P("limit", "l", 20, "Limit")
	listGroupConfigurationAdminV1Cmd.Flags().Int64P("offset", "o", 0, "Offset")
}
