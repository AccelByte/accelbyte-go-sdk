// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package artifacts

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/artifacts"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FleetArtifactSamplingRulesSetCmd represents the FleetArtifactSamplingRulesSet command
var FleetArtifactSamplingRulesSetCmd = &cobra.Command{
	Use:   "fleetArtifactSamplingRulesSet",
	Short: "Fleet artifact sampling rules set",
	Long:  `Fleet artifact sampling rules set`,
	RunE: func(cmd *cobra.Command, args []string) error {
		artifactsService := &ams.ArtifactsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIFleetArtifactsSampleRules
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &artifacts.FleetArtifactSamplingRulesSetParams{
			Body:      body,
			FleetID:   fleetID,
			Namespace: namespace,
		}
		noContent, errNoContent := artifactsService.FleetArtifactSamplingRulesSetShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success: %+v", noContent)

		return nil
	},
}

func init() {
	FleetArtifactSamplingRulesSetCmd.Flags().String("body", "", "Body")
	_ = FleetArtifactSamplingRulesSetCmd.MarkFlagRequired("body")
	FleetArtifactSamplingRulesSetCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetArtifactSamplingRulesSetCmd.MarkFlagRequired("fleetID")
	FleetArtifactSamplingRulesSetCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetArtifactSamplingRulesSetCmd.MarkFlagRequired("namespace")
}
