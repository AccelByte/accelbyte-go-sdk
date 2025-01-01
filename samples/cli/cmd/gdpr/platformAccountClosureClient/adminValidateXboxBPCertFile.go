// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformAccountClosureClient

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/platform_account_closure_client"
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminValidateXboxBPCertFileCmd represents the AdminValidateXboxBPCertFile command
var AdminValidateXboxBPCertFileCmd = &cobra.Command{
	Use:   "adminValidateXboxBPCertFile",
	Short: "Admin validate xbox BP cert file",
	Long:  `Admin validate xbox BP cert file`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAccountClosureClientService := &gdpr.PlatformAccountClosureClientService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *gdprclientmodels.DTOXboxBPCertValidationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_account_closure_client.AdminValidateXboxBPCertFileParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := platformAccountClosureClientService.AdminValidateXboxBPCertFileShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminValidateXboxBPCertFileCmd.Flags().String("body", "", "Body")
	_ = AdminValidateXboxBPCertFileCmd.MarkFlagRequired("body")
	AdminValidateXboxBPCertFileCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminValidateXboxBPCertFileCmd.MarkFlagRequired("namespace")
}
