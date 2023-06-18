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

// FleetClaimByKeysCmd represents the FleetClaimByKeys command
var FleetClaimByKeysCmd = &cobra.Command{
	Use:   "fleetClaimByKeys",
	Short: "Fleet claim by keys",
	Long:  `Fleet claim by keys`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fleetsService := &ams.FleetsService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *amsclientmodels.APIFleetClaimByKeysReq
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &fleets.FleetClaimByKeysParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := fleetsService.FleetClaimByKeysShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FleetClaimByKeysCmd.Flags().String("body", "", "Body")
	_ = FleetClaimByKeysCmd.MarkFlagRequired("body")
	FleetClaimByKeysCmd.Flags().String("namespace", "", "Namespace")
	_ = FleetClaimByKeysCmd.MarkFlagRequired("namespace")
}
