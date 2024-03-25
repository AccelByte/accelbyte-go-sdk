// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package development

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/development"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DevelopmentServerConfigurationCreateCmd represents the DevelopmentServerConfigurationCreate command
var DevelopmentServerConfigurationCreateCmd = &cobra.Command{
	Use:   "developmentServerConfigurationCreate",
	Short: "Development server configuration create",
	Long:  `Development server configuration create`,
	RunE: func(cmd *cobra.Command, args []string) error {
		developmentService := &ams.DevelopmentService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIDevelopmentServerConfigurationCreateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &development.DevelopmentServerConfigurationCreateParams{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := developmentService.DevelopmentServerConfigurationCreateShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	DevelopmentServerConfigurationCreateCmd.Flags().String("body", "", "Body")
	_ = DevelopmentServerConfigurationCreateCmd.MarkFlagRequired("body")
	DevelopmentServerConfigurationCreateCmd.Flags().String("namespace", "", "Namespace")
	_ = DevelopmentServerConfigurationCreateCmd.MarkFlagRequired("namespace")
}
