// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slot

import (
	"bytes"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"io"
	"os"
)

// PublicGetSlotDataCmd represents the PublicGetSlotData command
var PublicGetSlotDataCmd = &cobra.Command{
	Use:   "publicGetSlotData",
	Short: "Public get slot data",
	Long:  `Public get slot data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		userId, _ := cmd.Flags().GetString("userId")
		file, err := os.Create("file")
		logrus.Infof("Output %v", file)
		if err != nil {
			return err
		}
		writer := bytes.NewBuffer(nil)
		input := &slot.PublicGetSlotDataParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotService.PublicGetSlotData(input, writer)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		_, err = io.Copy(file, writer)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	PublicGetSlotDataCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetSlotDataCmd.MarkFlagRequired("namespace")
	PublicGetSlotDataCmd.Flags().StringP("slotId", "", "", "Slot id")
	_ = PublicGetSlotDataCmd.MarkFlagRequired("slotId")
	PublicGetSlotDataCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetSlotDataCmd.MarkFlagRequired("userId")
}
