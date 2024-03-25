// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/config"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPatchConfigV1Cmd represents the AdminPatchConfigV1 command
var AdminPatchConfigV1Cmd = &cobra.Command{
	Use:   "adminPatchConfigV1",
	Short: "Admin patch config V1",
	Long:  `Admin patch config V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &match2.ConfigService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIPatchNamespaceConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.AdminPatchConfigV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := configService.AdminPatchConfigV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPatchConfigV1Cmd.Flags().String("body", "", "Body")
	_ = AdminPatchConfigV1Cmd.MarkFlagRequired("body")
	AdminPatchConfigV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminPatchConfigV1Cmd.MarkFlagRequired("namespace")
}
