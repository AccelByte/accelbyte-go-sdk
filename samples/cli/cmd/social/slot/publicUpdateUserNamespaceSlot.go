// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"os"
)

// publicUpdateUserNamespaceSlotCmd represents the publicUpdateUserNamespaceSlot command
var publicUpdateUserNamespaceSlotCmd = &cobra.Command{
	Use:   "publicUpdateUserNamespaceSlot",
	Short: "Public update user namespace slot",
	Long:  `Public update user namespace slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		userId, _ := cmd.Flags().GetString("userId")
		checksum, _ := cmd.Flags().GetString("checksum")
		customAttribute, _ := cmd.Flags().GetString("customAttribute")
		output := cmd.Flag("outputFilePath").Value.String()
		logrus.Infof("Output %v", output)
		file, err := os.Create(output)
		if err != nil {
			return err
		}
		label, _ := cmd.Flags().GetString("label")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &slot.PublicUpdateUserNamespaceSlotParams{
			Checksum:        &checksum,
			CustomAttribute: &customAttribute,
			File:            file,
			Namespace:       namespace,
			SlotID:          slotId,
			UserID:          userId,
			Label:           &label,
			Tags:            tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := slotService.PublicUpdateUserNamespaceSlot(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicUpdateUserNamespaceSlotCmd)
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("checksum", "c", " ", "Checksum")
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("customAttribute", "c", " ", "Custom attribute")
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("file", "f", " ", "File")
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicUpdateUserNamespaceSlotCmd.MarkFlagRequired("namespace")
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("slotId", "s", " ", "Slot id")
	_ = publicUpdateUserNamespaceSlotCmd.MarkFlagRequired("slotId")
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicUpdateUserNamespaceSlotCmd.MarkFlagRequired("userId")
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("label", "l", " ", "Label")
	publicUpdateUserNamespaceSlotCmd.Flags().StringP("tags", "t", " ", "Tags")
}
