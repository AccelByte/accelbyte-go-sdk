// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appV4

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_v4"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateAppDebugModeV4Cmd represents the UpdateAppDebugModeV4 command
var UpdateAppDebugModeV4Cmd = &cobra.Command{
	Use:   "updateAppDebugModeV4",
	Short: "Update app debug mode V4",
	Long:  `Update app debug mode V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV4Service := &csm.AppV4Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelUpdateDebugModeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v4.UpdateAppDebugModeV4Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appV4Service.UpdateAppDebugModeV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateAppDebugModeV4Cmd.Flags().String("body", "", "Body")
	_ = UpdateAppDebugModeV4Cmd.MarkFlagRequired("body")
	UpdateAppDebugModeV4Cmd.Flags().String("app", "", "App")
	_ = UpdateAppDebugModeV4Cmd.MarkFlagRequired("app")
	UpdateAppDebugModeV4Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppDebugModeV4Cmd.MarkFlagRequired("namespace")
}
