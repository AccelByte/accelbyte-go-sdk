// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateServerConfigCmd represents the UpdateServerConfig command
var UpdateServerConfigCmd = &cobra.Command{
	Use:   "updateServerConfig",
	Short: "Update server config",
	Long:  `Update server config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &qosm.AdminService{
			Client:          factory.NewQosmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *qosmclientmodels.ModelsUpdateServerRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		region, _ := cmd.Flags().GetString("region")
		input := &admin.UpdateServerConfigParams{
			Body:      body,
			Namespace: namespace,
			Region:    region,
		}
		errNoContent := adminService.UpdateServerConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UpdateServerConfigCmd.Flags().String("body", "", "Body")
	_ = UpdateServerConfigCmd.MarkFlagRequired("body")
	UpdateServerConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateServerConfigCmd.MarkFlagRequired("namespace")
	UpdateServerConfigCmd.Flags().String("region", "", "Region")
	_ = UpdateServerConfigCmd.MarkFlagRequired("region")
}
