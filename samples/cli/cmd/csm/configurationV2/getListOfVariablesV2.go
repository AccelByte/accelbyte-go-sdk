// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration_v2"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetListOfVariablesV2Cmd represents the GetListOfVariablesV2 command
var GetListOfVariablesV2Cmd = &cobra.Command{
	Use:   "getListOfVariablesV2",
	Short: "Get list of variables V2",
	Long:  `Get list of variables V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationV2Service := &csm.ConfigurationV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &configuration_v2.GetListOfVariablesV2Params{
			App:       app,
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := configurationV2Service.GetListOfVariablesV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetListOfVariablesV2Cmd.Flags().String("app", "", "App")
	_ = GetListOfVariablesV2Cmd.MarkFlagRequired("app")
	GetListOfVariablesV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetListOfVariablesV2Cmd.MarkFlagRequired("namespace")
	GetListOfVariablesV2Cmd.Flags().Int64("limit", 20, "Limit")
	GetListOfVariablesV2Cmd.Flags().Int64("offset", 0, "Offset")
}
