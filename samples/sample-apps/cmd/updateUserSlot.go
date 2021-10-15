// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"os"

	"github.com/spf13/cobra"
)

// updateUserSlotCmd represents the updateUserSlot command
var updateUserSlotCmd = &cobra.Command{
	Use:   "updateUserSlot",
	Short: "Update user slot",
	Long:  `Update user slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("updateUserSlot called")
		socialService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		slotId := cmd.Flag("slotId").Value.String()
		filePath := cmd.Flag("filePath").Value.String()
		file, err := os.Open(filePath)
		if err != nil {
			return err
		}
		input := &slot.PublicUpdateUserNamespaceSlotParams{
			Checksum:        nil,
			CustomAttribute: nil,
			File:            file,
			Label:           nil,
			Namespace:       namespace,
			SlotID:          slotId,
			Tags:            nil,
			UserID:          userId,
		}
		slots, err := socialService.PublicUpdateUserNamespaceSlot(input)
		response, err := json.MarshalIndent(slots, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateUserSlotCmd)
	updateUserSlotCmd.Flags().StringP("namespace", "n", "", "User namespace")
	updateUserSlotCmd.MarkFlagRequired("namespace")
	updateUserSlotCmd.Flags().StringP("userId", "u", "", "User ID")
	updateUserSlotCmd.MarkFlagRequired("userId")
	updateUserSlotCmd.Flags().StringP("slotId", "s", "", "Slot ID")
	updateUserSlotCmd.MarkFlagRequired("slotId")
	updateUserSlotCmd.Flags().StringP("filePath", "f", "", "Uploaded file absolute path. example: /home/user/file.jpg")
	updateUserSlotCmd.MarkFlagRequired("filePath")
}
