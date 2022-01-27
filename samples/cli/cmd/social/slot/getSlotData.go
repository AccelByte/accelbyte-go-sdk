// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slot

import (
	"bytes"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"io"
	"os"
)

// getSlotDataCmd represents the getSlotData command
var getSlotDataCmd = &cobra.Command{
	Use:   "getSlotData",
	Short: "Get slot data",
	Long:  `Get slot data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		userId, _ := cmd.Flags().GetString("userId")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		writer := bytes.NewBuffer(nil)
		input := &slot.GetSlotDataParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotService.GetSlotData(input, writer)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		_, err = io.Copy(file, writer)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getSlotDataCmd)
	getSlotDataCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getSlotDataCmd.MarkFlagRequired("namespace")
	getSlotDataCmd.Flags().StringP("slotId", "sd", " ", "Slot id")
	_ = getSlotDataCmd.MarkFlagRequired("slotId")
	getSlotDataCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = getSlotDataCmd.MarkFlagRequired("userId")
}
