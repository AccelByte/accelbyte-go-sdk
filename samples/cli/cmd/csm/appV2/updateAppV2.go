// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package appV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateAppV2Cmd represents the UpdateAppV2 command
var UpdateAppV2Cmd = &cobra.Command{
	Use:   "updateAppV2",
	Short: "Update app V2",
	Long:  `Update app V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelUpdateAppV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.UpdateAppV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appV2Service.UpdateAppV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateAppV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateAppV2Cmd.MarkFlagRequired("body")
	UpdateAppV2Cmd.Flags().String("app", "", "App")
	_ = UpdateAppV2Cmd.MarkFlagRequired("app")
	UpdateAppV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppV2Cmd.MarkFlagRequired("namespace")
}
