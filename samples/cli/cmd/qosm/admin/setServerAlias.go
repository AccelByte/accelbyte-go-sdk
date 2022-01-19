// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// setServerAliasCmd represents the setServerAlias command
var setServerAliasCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminService.SetServerAlias(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(setServerAliasCmd)
	setServerAliasCmd.Flags().StringP("body", "b", " ", "Body")
	_ = setServerAliasCmd.MarkFlagRequired("body")
	setServerAliasCmd.Flags().StringP("region", "r", " ", "Region")
	_ = setServerAliasCmd.MarkFlagRequired("region")
}
