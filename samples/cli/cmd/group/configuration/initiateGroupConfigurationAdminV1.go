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

// InitiateGroupConfigurationAdminV1Cmd represents the InitiateGroupConfigurationAdminV1 command
var InitiateGroupConfigurationAdminV1Cmd = &cobra.Command{
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
		created, errCreated := configurationService.InitiateGroupConfigurationAdminV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	InitiateGroupConfigurationAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = InitiateGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
