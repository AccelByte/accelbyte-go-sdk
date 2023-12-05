// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminConfig

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_config"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateConfigCmd represents the AdminUpdateConfig command
var AdminUpdateConfigCmd = &cobra.Command{
	Use:   "adminUpdateConfig",
	Short: "Admin update config",
	Long:  `Admin update config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConfigService := &ugc.AdminConfigService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsUpdateConfigRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_config.AdminUpdateConfigParams{
			Body:      body,
			Key:       key,
			Namespace: namespace,
		}
		errCreated := adminConfigService.AdminUpdateConfigShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminUpdateConfigCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateConfigCmd.MarkFlagRequired("body")
	AdminUpdateConfigCmd.Flags().String("key", "", "Key")
	_ = AdminUpdateConfigCmd.MarkFlagRequired("key")
	AdminUpdateConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateConfigCmd.MarkFlagRequired("namespace")
}
