// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/d_l_c"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicSyncPsnDlcInventoryCmd represents the publicSyncPsnDlcInventory command
var publicSyncPsnDlcInventoryCmd = &cobra.Command{
	Use:   "publicSyncPsnDlcInventory",
	Short: "Public sync psn dlc inventory",
	Long:  `Public sync psn dlc inventory`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlayStationDLCSyncRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &d_l_c.PublicSyncPsnDlcInventoryParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := dlcService.PublicSyncPsnDlcInventory(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicSyncPsnDlcInventoryCmd)
	publicSyncPsnDlcInventoryCmd.Flags().StringP("body", "b", " ", "Body")
	publicSyncPsnDlcInventoryCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicSyncPsnDlcInventoryCmd.MarkFlagRequired("namespace")
	publicSyncPsnDlcInventoryCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicSyncPsnDlcInventoryCmd.MarkFlagRequired("userId")
}
