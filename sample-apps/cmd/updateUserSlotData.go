// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		socialService := &service.SlotService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		slotId := cmd.Flag("slotId").Value.String()
		filePath := cmd.Flag("filePath").Value.String()
		file, err := os.Open(filePath)
		if err != nil {
			return err
		}
		_, err = socialService.PublicUpdateUserNamespaceSlot(namespace, userId, slotId, nil, nil, nil, nil, file)
		if err != nil {
			return err
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateUserSlotDataCmd)
	updateUserSlotDataCmd.Flags().StringP("namespace", "n", "", "User namespace")
	updateUserSlotDataCmd.MarkFlagRequired("namespace")
	updateUserSlotDataCmd.Flags().StringP("userId", "u", "", "User ID")
	updateUserSlotDataCmd.MarkFlagRequired("userId")
	updateUserSlotDataCmd.Flags().StringP("slotId", "s", "", "Slot ID")
	updateUserSlotDataCmd.MarkFlagRequired("slotId")
	updateUserSlotDataCmd.Flags().StringP("filePath", "f", "", "Uploaded file absolute path. example: /home/user/file.jpg")
	updateUserSlotDataCmd.MarkFlagRequired("filePath")
}
