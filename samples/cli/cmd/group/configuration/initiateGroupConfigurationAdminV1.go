// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package configuration

import (
	"encoding/json"
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := configurationService.InitiateGroupConfigurationAdminV1(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	InitiateGroupConfigurationAdminV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = InitiateGroupConfigurationAdminV1Cmd.MarkFlagRequired("namespace")
}
