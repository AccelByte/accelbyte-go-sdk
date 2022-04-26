// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

import (
	"bytes"
	"io"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSlotDataCmd represents the GetSlotData command
var GetSlotDataCmd = &cobra.Command{
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
		file, err := os.Create("file")
		logrus.Infof("Output %v", file)
		if err != nil {
			return err
		}
		writer := bytes.NewBuffer(nil)
		input := &slot.GetSlotDataParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		ok, err := slotService.GetSlotDataShort(input, writer)
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
	GetSlotDataCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetSlotDataCmd.MarkFlagRequired("namespace")
	GetSlotDataCmd.Flags().StringP("slotId", "", "", "Slot id")
	_ = GetSlotDataCmd.MarkFlagRequired("slotId")
	GetSlotDataCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetSlotDataCmd.MarkFlagRequired("userId")
}
