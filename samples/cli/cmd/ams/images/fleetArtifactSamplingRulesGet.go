// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package images

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FleetArtifactSamplingRulesGetCmd represents the FleetArtifactSamplingRulesGet command
var FleetArtifactSamplingRulesGetCmd = &cobra.Command{
	Use:   "fleetArtifactSamplingRulesGet",
	Short: "Fleet artifact sampling rules get",
	Long:  `Fleet artifact sampling rules get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		imagesService := &ams.ImagesService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &images.FleetArtifactSamplingRulesGetParams{
			FleetID:   fleetID,
			Namespace: namespace,
		}
		ok, errOK := imagesService.FleetArtifactSamplingRulesGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FleetArtifactSamplingRulesGetCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetArtifactSamplingRulesGetCmd.MarkFlagRequired("fleetID")
	FleetArtifactSamplingRulesGetCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetArtifactSamplingRulesGetCmd.MarkFlagRequired("namespace")
}
