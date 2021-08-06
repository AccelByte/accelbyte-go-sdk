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

// updateUserSlotMetadataCmd represents the updateUserSlotMetadata command
var updateUserSlotMetadataCmd = &cobra.Command{
	Use:   "updateUserSlotMetadata",
	Short: "Update user slot data",
	Long:  `Update user slot data`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fmt.Println("updateUserSlotMetadata called")
		socialService := &service.SlotService{
			SocialServiceClient: factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository:     &repository.TokenRepositoryImpl{},
		}
		namespace := cmd.Flag("namespace").Value.String()
		userId := cmd.Flag("userId").Value.String()
		slotId := cmd.Flag("slotId").Value.String()
		contentString := cmd.Flag("content").Value.String()
		var content *socialclientmodels.SlotMetadataUpdate
		errContent := json.Unmarshal([]byte(contentString), &content)
		if errContent != nil {
			return errContent
		}
		slots, err := socialService.PublicUpdateUserNamespaceSlotMetadata(namespace, userId, slotId, content)
		response, err := json.MarshalIndent(slots, "", "    ")
		if err != nil {
			return err
		}
		logrus.Infof("Response %v", string(response))
		return nil
	},
}

func init() {
	rootCmd.AddCommand(updateUserSlotMetadataCmd)
	updateUserSlotMetadataCmd.Flags().StringP("namespace", "n", "", "User namespace")
	updateUserSlotMetadataCmd.MarkFlagRequired("namespace")
	updateUserSlotMetadataCmd.Flags().StringP("userId", "u", "", "User ID")
	updateUserSlotMetadataCmd.MarkFlagRequired("userId")
	updateUserSlotMetadataCmd.Flags().StringP("slotId", "s", "", "Slot ID")
	updateUserSlotMetadataCmd.MarkFlagRequired("slotId")
	updateUserSlotMetadataCmd.Flags().StringP("content", "c", "", "Slot Body. Example `{\"Key1\":\"Value1\",\"Key2\":\"Value2\"}'")
	updateUserSlotMetadataCmd.MarkFlagRequired("content")
}
