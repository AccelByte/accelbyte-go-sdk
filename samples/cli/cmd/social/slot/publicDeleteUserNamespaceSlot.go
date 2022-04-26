// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDeleteUserNamespaceSlotCmd represents the PublicDeleteUserNamespaceSlot command
var PublicDeleteUserNamespaceSlotCmd = &cobra.Command{
	Use:   "publicDeleteUserNamespaceSlot",
	Short: "Public delete user namespace slot",
	Long:  `Public delete user namespace slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &slot.PublicDeleteUserNamespaceSlotParams{
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		errInput := slotService.PublicDeleteUserNamespaceSlotShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicDeleteUserNamespaceSlotCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicDeleteUserNamespaceSlotCmd.MarkFlagRequired("namespace")
	PublicDeleteUserNamespaceSlotCmd.Flags().StringP("slotId", "", "", "Slot id")
	_ = PublicDeleteUserNamespaceSlotCmd.MarkFlagRequired("slotId")
	PublicDeleteUserNamespaceSlotCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicDeleteUserNamespaceSlotCmd.MarkFlagRequired("userId")
}
