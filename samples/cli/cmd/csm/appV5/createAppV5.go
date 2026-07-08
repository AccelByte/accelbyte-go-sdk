// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appV5

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_v5"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateAppV5Cmd represents the CreateAppV5 command
var CreateAppV5Cmd = &cobra.Command{
	Use:   "createAppV5",
	Short: "Create app V5",
	Long:  `Create app V5`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV5Service := &csm.AppV5Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelCreateAppV5Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v5.CreateAppV5Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appV5Service.CreateAppV5Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreateAppV5Cmd.Flags().String("body", "", "Body")
	_ = CreateAppV5Cmd.MarkFlagRequired("body")
	CreateAppV5Cmd.Flags().String("app", "", "App")
	_ = CreateAppV5Cmd.MarkFlagRequired("app")
	CreateAppV5Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateAppV5Cmd.MarkFlagRequired("namespace")
}
