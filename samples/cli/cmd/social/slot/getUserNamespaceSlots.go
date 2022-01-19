// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserNamespaceSlotsCmd represents the getUserNamespaceSlots command
var getUserNamespaceSlotsCmd = &cobra.Command{
	Use:   "getUserNamespaceSlots",
	Short: "Get user namespace slots",
	Long:  `Get user namespace slots`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &slot.GetUserNamespaceSlotsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotService.GetUserNamespaceSlots(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserNamespaceSlotsCmd)
	getUserNamespaceSlotsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserNamespaceSlotsCmd.MarkFlagRequired("namespace")
	getUserNamespaceSlotsCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserNamespaceSlotsCmd.MarkFlagRequired("userId")
}
