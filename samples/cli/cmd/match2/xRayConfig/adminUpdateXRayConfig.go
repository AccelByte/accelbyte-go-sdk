// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRayConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/x_ray_config"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateXRayConfigCmd represents the AdminUpdateXRayConfig command
var AdminUpdateXRayConfigCmd = &cobra.Command{
	Use:   "adminUpdateXRayConfig",
	Short: "Admin update X ray config",
	Long:  `Admin update X ray config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayConfigService := &match2.XRayConfigService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.ModelsXRayConfigHTTPUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &x_ray_config.AdminUpdateXRayConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := xRayConfigService.AdminUpdateXRayConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateXRayConfigCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateXRayConfigCmd.MarkFlagRequired("body")
	AdminUpdateXRayConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateXRayConfigCmd.MarkFlagRequired("namespace")
}
