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

// UpdateAppResourcesV2Cmd represents the UpdateAppResourcesV2 command
var UpdateAppResourcesV2Cmd = &cobra.Command{
	Use:   "updateAppResourcesV2",
	Short: "Update app resources V2",
	Long:  `Update app resources V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		appV2Service := &csm.AppV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelUpdateAppResourceRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &app_v2.UpdateAppResourcesV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := appV2Service.UpdateAppResourcesV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateAppResourcesV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateAppResourcesV2Cmd.MarkFlagRequired("body")
	UpdateAppResourcesV2Cmd.Flags().String("app", "", "App")
	_ = UpdateAppResourcesV2Cmd.MarkFlagRequired("app")
	UpdateAppResourcesV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateAppResourcesV2Cmd.MarkFlagRequired("namespace")
}
