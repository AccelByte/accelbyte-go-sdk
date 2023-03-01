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

// PublicGetUserNamespaceSlotsCmd represents the PublicGetUserNamespaceSlots command
var PublicGetUserNamespaceSlotsCmd = &cobra.Command{
	Use:   "publicGetUserNamespaceSlots",
	Short: "Public get user namespace slots",
	Long:  `Public get user namespace slots`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &slot.PublicGetUserNamespaceSlotsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := slotService.PublicGetUserNamespaceSlotsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserNamespaceSlotsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserNamespaceSlotsCmd.MarkFlagRequired("namespace")
	PublicGetUserNamespaceSlotsCmd.Flags().String("userId", "", "User id")
	_ = PublicGetUserNamespaceSlotsCmd.MarkFlagRequired("userId")
}
