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

// GetUserNamespaceSlotsCmd represents the GetUserNamespaceSlots command
var GetUserNamespaceSlotsCmd = &cobra.Command{
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
		ok, err := slotService.GetUserNamespaceSlotsShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetUserNamespaceSlotsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserNamespaceSlotsCmd.MarkFlagRequired("namespace")
	GetUserNamespaceSlotsCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserNamespaceSlotsCmd.MarkFlagRequired("userId")
}
