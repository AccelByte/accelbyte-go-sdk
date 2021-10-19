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
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteUserSlotCmd represents the deleteUserSlot command
var deleteUserSlotCmd = &cobra.Command{
	Use:   "deleteUserSlot",
	Short: "Delete user slot",
	Long:  `Delete user slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("deleteUserSlot called")
		socialService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		slotId := cmd.Flag("slotId").Value.String()
		input := &slot.PublicDeleteUserNamespaceSlotParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		err := socialService.PublicDeleteUserNamespaceSlot(input)
		if err != nil {
			logrus.Error(err)
			return err
		}
		logrus.Info("Slot deletion succeed")
		return nil
	},
}

func init() {
	rootCmd.AddCommand(deleteUserSlotCmd)
	deleteUserSlotCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = deleteUserSlotCmd.MarkFlagRequired("namespace")
	deleteUserSlotCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = deleteUserSlotCmd.MarkFlagRequired("userId")
	deleteUserSlotCmd.Flags().StringP("slotId", "s", "", "Slot ID")
	_ = deleteUserSlotCmd.MarkFlagRequired("slotId")
}
