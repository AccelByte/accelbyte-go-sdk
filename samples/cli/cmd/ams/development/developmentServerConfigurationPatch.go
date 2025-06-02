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

// DevelopmentServerConfigurationPatchCmd represents the DevelopmentServerConfigurationPatch command
var DevelopmentServerConfigurationPatchCmd = &cobra.Command{
	Use:   "developmentServerConfigurationPatch",
	Short: "Development server configuration patch",
	Long:  `Development server configuration patch`,
	RunE: func(cmd *cobra.Command, args []string) error {
		developmentService := &ams.DevelopmentService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIDevelopmentServerConfigurationUpdateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		developmentServerConfigID, _ := cmd.Flags().GetString("developmentServerConfigID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &development.DevelopmentServerConfigurationPatchParams{
			Body:                      body,
			DevelopmentServerConfigID: developmentServerConfigID,
			Namespace:                 namespace,
		}
		errNoContent := developmentService.DevelopmentServerConfigurationPatchShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DevelopmentServerConfigurationPatchCmd.Flags().String("body", "", "Body")
	_ = DevelopmentServerConfigurationPatchCmd.MarkFlagRequired("body")
	DevelopmentServerConfigurationPatchCmd.Flags().String("developmentServerConfigID", "", "Development server config ID")
	_ = DevelopmentServerConfigurationPatchCmd.MarkFlagRequired("developmentServerConfigID")
	DevelopmentServerConfigurationPatchCmd.Flags().String("namespace", "", "Namespace")
	_ = DevelopmentServerConfigurationPatchCmd.MarkFlagRequired("namespace")
}
