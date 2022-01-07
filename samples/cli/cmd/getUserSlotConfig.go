// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserSlotConfigCmd represents the getUserSlotConfig command
var getUserSlotConfigCmd = &cobra.Command{
	Use:   "getUserSlotConfig",
	Short: "Get user slots",
	Long:  `Get user slots namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("getUserSlotConfig called")
		socialService := &social.SlotConfigService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		input := &slot_config.GetUserSlotConfigParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		slots, err := socialService.GetUserSlotConfig(input)
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
	rootCmd.AddCommand(getUserSlotConfigCmd)
	getUserSlotConfigCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = getUserSlotConfigCmd.MarkFlagRequired("namespace")
	getUserSlotConfigCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = getUserSlotConfigCmd.MarkFlagRequired("userId")
}
