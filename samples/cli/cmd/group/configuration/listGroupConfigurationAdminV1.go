// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListGroupConfigurationAdminV1Cmd represents the ListGroupConfigurationAdminV1 command
var ListGroupConfigurationAdminV1Cmd = &cobra.Command{
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
		ok, errOK := configurationService.ListGroupConfigurationAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListGroupConfigurationAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = ListGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
	ListGroupConfigurationAdminV1Cmd.Flags().Int64("limit", 20, "Limit")
	ListGroupConfigurationAdminV1Cmd.Flags().Int64("offset", 0, "Offset")
}
