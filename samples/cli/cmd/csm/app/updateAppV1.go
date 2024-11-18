// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package app

import (
	"encoding/json"

	app_ "github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateAppV1Cmd represents the UpdateAppV1 command
var UpdateAppV1Cmd = &cobra.Command{
	Use:   "updateAppV1",
	Short: "Update app V1",
	Long:  `Update app V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appService := &csm.AppService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedUpdateAppV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_.UpdateAppV1Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appService.UpdateAppV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateAppV1Cmd.Flags().String("body", "", "Body")
	_ = UpdateAppV1Cmd.MarkFlagRequired("body")
	UpdateAppV1Cmd.Flags().String("app", "", "App")
	_ = UpdateAppV1Cmd.MarkFlagRequired("app")
	UpdateAppV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppV1Cmd.MarkFlagRequired("namespace")
}
