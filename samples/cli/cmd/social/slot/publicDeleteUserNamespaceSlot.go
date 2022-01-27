// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slot

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicDeleteUserNamespaceSlotCmd represents the publicDeleteUserNamespaceSlot command
var publicDeleteUserNamespaceSlotCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := slotService.PublicDeleteUserNamespaceSlot(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicDeleteUserNamespaceSlotCmd)
	publicDeleteUserNamespaceSlotCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicDeleteUserNamespaceSlotCmd.MarkFlagRequired("namespace")
	publicDeleteUserNamespaceSlotCmd.Flags().StringP("slotId", "sd", " ", "Slot id")
	_ = publicDeleteUserNamespaceSlotCmd.MarkFlagRequired("slotId")
	publicDeleteUserNamespaceSlotCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = publicDeleteUserNamespaceSlotCmd.MarkFlagRequired("userId")
}
