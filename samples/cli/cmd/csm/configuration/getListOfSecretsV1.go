// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetListOfSecretsV1Cmd represents the GetListOfSecretsV1 command
var GetListOfSecretsV1Cmd = &cobra.Command{
	Use:   "getListOfSecretsV1",
	Short: "Get list of secrets V1",
	Long:  `Get list of secrets V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &csm.ConfigurationService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &configuration.GetListOfSecretsV1Params{
			App:       app,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := configurationService.GetListOfSecretsV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetListOfSecretsV1Cmd.Flags().String("app", "", "App")
	_ = GetListOfSecretsV1Cmd.MarkFlagRequired("app")
	GetListOfSecretsV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetListOfSecretsV1Cmd.MarkFlagRequired("namespace")
	GetListOfSecretsV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetListOfSecretsV1Cmd.Flags().Int64("offset", 0, "Offset")
}
