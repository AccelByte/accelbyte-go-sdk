// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.
package cmd

import (
	"encoding/json"
	"fmt"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service"
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
		socialService := &service.SlotConfigService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		contentString := cmd.Flag("content").Value.String()
		var content *socialclientmodels.SlotConfigUpdate
		errContent := json.Unmarshal([]byte(contentString), &content)
		if errContent != nil {
			return errContent
		}
		slots, err := socialService.UpdateUserSlotConfig(namespace, userId, content)
		response, err := json.MarshalIndent(slots, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateUserSlotConfigCmd)
	updateUserSlotConfigCmd.Flags().StringP("namespace", "n", "", "User namespace")
	updateUserSlotConfigCmd.MarkFlagRequired("namespace")
	updateUserSlotConfigCmd.Flags().StringP("userId", "u", "", "User ID")
	updateUserSlotConfigCmd.MarkFlagRequired("userId")
	updateUserSlotConfigCmd.Flags().StringP("content", "c", "", "Slot Body. Example `{\"Key1\":\"Value1\",\"Key2\":\"Value2\"}'")
	updateUserSlotConfigCmd.MarkFlagRequired("content")
}
