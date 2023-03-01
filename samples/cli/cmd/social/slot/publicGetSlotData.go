// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

import (
	"bytes"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
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
		file, errFile := os.Create("file")
		logrus.Infof("Output %v", file)
		if errFile != nil {
			return errFile
		}
		writer := bytes.NewBuffer(nil)
		input := &slot.PublicGetSlotDataParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		ok, errOK := slotService.PublicGetSlotDataShort(input, writer)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetSlotDataCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetSlotDataCmd.MarkFlagRequired("namespace")
	PublicGetSlotDataCmd.Flags().String("slotId", "", "Slot id")
	_ = PublicGetSlotDataCmd.MarkFlagRequired("slotId")
	PublicGetSlotDataCmd.Flags().String("userId", "", "User id")
	_ = PublicGetSlotDataCmd.MarkFlagRequired("userId")
}
