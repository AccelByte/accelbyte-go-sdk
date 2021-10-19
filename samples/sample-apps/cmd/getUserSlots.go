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
	"github.com/spf13/cobra"
)

// getUserSlotsCmd represents the getUserSlots command
var getUserSlotsCmd = &cobra.Command{
	Use:   "getUserSlots",
	Short: "Get user slots",
	Long:  `Get user slots namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getUserSlots called")
		socialService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &slot.GetUserNamespaceSlotsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		slots, err := socialService.GetUserNamespaceSlots(input)
		if err != nil {
			return err
		}
		response, err := json.MarshalIndent(slots, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getUserSlotsCmd)
	getUserSlotsCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getUserSlotsCmd.MarkFlagRequired("namespace")
	getUserSlotsCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = getUserSlotsCmd.MarkFlagRequired("userId")
}
