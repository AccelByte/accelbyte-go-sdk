// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fleets

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FleetClaimByIDCmd represents the FleetClaimByID command
var FleetClaimByIDCmd = &cobra.Command{
	Use:   "fleetClaimByID",
	Short: "Fleet claim by ID",
	Long:  `Fleet claim by ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIFleetClaimReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		fleetID, _ := cmd.Flags().GetString("fleetID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetClaimByIDParams{
			Body:      body,
			FleetID:   fleetID,
			Namespace: namespace,
		}
		ok, errOK := fleetsService.FleetClaimByIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FleetClaimByIDCmd.Flags().String("body", "", "Body")
	_ = FleetClaimByIDCmd.MarkFlagRequired("body")
	FleetClaimByIDCmd.Flags().String("fleetID", "", "Fleet ID")
	_ = FleetClaimByIDCmd.MarkFlagRequired("fleetID")
	FleetClaimByIDCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetClaimByIDCmd.MarkFlagRequired("namespace")
}
