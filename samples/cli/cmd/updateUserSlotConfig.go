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
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"

	"github.com/spf13/cobra"
)

// updateUserSlotConfigCmd represents the updateUserSlotConfig command
var updateUserSlotConfigCmd = &cobra.Command{
	Use:   "updateUserSlotConfig",
	Short: "Update user slot config",
	Long:  `Update user slot config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("updateUserSlotConfig called")
		socialService := &social.SlotConfigService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		contentString := cmd.Flag("content").Value.String()
		var body *socialclientmodels.SlotConfigUpdate
		errContent := json.Unmarshal([]byte(contentString), &body)
		if errContent != nil {
			return errContent
		}
		input := &slot_config.UpdateUserSlotConfigParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		slots, err := socialService.UpdateUserSlotConfig(input)
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
	RootCmd.AddCommand(updateUserSlotConfigCmd)
	updateUserSlotConfigCmd.Flags().StringP("namespace", "n", "", "User namespace")
	_ = updateUserSlotConfigCmd.MarkFlagRequired("namespace")
	updateUserSlotConfigCmd.Flags().StringP("userId", "u", "", "User ID")
	_ = updateUserSlotConfigCmd.MarkFlagRequired("userId")
	updateUserSlotConfigCmd.Flags().StringP("content", "c", "", "Slot Body. Example `{\"Key1\":\"Value1\",\"Key2\":\"Value2\"}'")
	_ = updateUserSlotConfigCmd.MarkFlagRequired("content")
}
