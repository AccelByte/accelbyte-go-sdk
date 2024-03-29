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

// SetServerAliasCmd represents the SetServerAlias command
var SetServerAliasCmd = &cobra.Command{
	Use:   "setServerAlias",
	Short: "Set server alias",
	Long:  `Set server alias`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &qosm.AdminService{
			Client:          factory.NewQosmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *qosmclientmodels.ModelsSetAliasRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		region, _ := cmd.Flags().GetString("region")
		input := &admin.SetServerAliasParams{
			Body:   body,
			Region: region,
		}
		errNoContent := adminService.SetServerAliasShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SetServerAliasCmd.Flags().String("body", "", "Body")
	_ = SetServerAliasCmd.MarkFlagRequired("body")
	SetServerAliasCmd.Flags().String("region", "", "Region")
	_ = SetServerAliasCmd.MarkFlagRequired("region")
}
