// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"os"

	"github.com/spf13/cobra"
)

// updateUserSlotDataCmd represents the updateUserSlotData command
var updateUserSlotDataCmd = &cobra.Command{
	Use:   "updateUserSlotData",
	Short: "Update user slot data",
	Long:  `Update user slot data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("updateUserSlotData called")
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
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		_, err = socialService.PublicUpdateUserNamespaceSlot(input)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateUserSlotDataCmd)
	updateUserSlotDataCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = updateUserSlotDataCmd.MarkFlagRequired("namespace")
	updateUserSlotDataCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = updateUserSlotDataCmd.MarkFlagRequired("userId")
	updateUserSlotDataCmd.Flags().StringP("slotId", "s", "", "Slot ID")
	_ = updateUserSlotDataCmd.MarkFlagRequired("slotId")
	updateUserSlotDataCmd.Flags().StringP("filePath", "f", "", "Uploaded file absolute path. example: /home/user/file.jpg")
	_ = updateUserSlotDataCmd.MarkFlagRequired("filePath")
}
