// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/global_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateGlobalConfigurationCmd represents the AdminUpdateGlobalConfiguration command
var AdminUpdateGlobalConfigurationCmd = &cobra.Command{
	Use:   "adminUpdateGlobalConfiguration",
	Short: "Admin update global configuration",
	Long:  `Admin update global configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalConfigurationService := &session.GlobalConfigurationService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsPutGlobalConfigurationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &global_configuration.AdminUpdateGlobalConfigurationParams{
			Body: body,
		}
		ok, errOK := globalConfigurationService.AdminUpdateGlobalConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateGlobalConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateGlobalConfigurationCmd.MarkFlagRequired("body")
}
