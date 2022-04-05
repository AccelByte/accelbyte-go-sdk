// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package iap

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/i_a_p"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncEpicGamesInventoryCmd represents the SyncEpicGamesInventory command
var SyncEpicGamesInventoryCmd = &cobra.Command{
	Use:   "syncEpicGamesInventory",
	Short: "Sync epic games inventory",
	Long:  `Sync epic games inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		iapService := &platform.IAPService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.EpicGamesReconcileRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &i_a_p.SyncEpicGamesInventoryParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := iapService.SyncEpicGamesInventoryShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	SyncEpicGamesInventoryCmd.Flags().StringP("body", "", "", "Body")
	SyncEpicGamesInventoryCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SyncEpicGamesInventoryCmd.MarkFlagRequired("namespace")
	SyncEpicGamesInventoryCmd.Flags().StringP("userId", "", "", "User id")
	_ = SyncEpicGamesInventoryCmd.MarkFlagRequired("userId")
}
