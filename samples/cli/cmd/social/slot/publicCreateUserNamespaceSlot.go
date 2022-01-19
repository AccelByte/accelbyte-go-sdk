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

// publicCreateUserNamespaceSlotCmd represents the publicCreateUserNamespaceSlot command
var publicCreateUserNamespaceSlotCmd = &cobra.Command{
	Use:   "publicCreateUserNamespaceSlot",
	Short: "Public create user namespace slot",
	Long:  `Public create user namespace slot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
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
		input := &slot.PublicCreateUserNamespaceSlotParams{
			Checksum:        &checksum,
			CustomAttribute: &customAttribute,
			File:            file,
			Namespace:       namespace,
			UserID:          userId,
			Label:           &label,
			Tags:            tags,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := slotService.PublicCreateUserNamespaceSlot(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCreateUserNamespaceSlotCmd)
	publicCreateUserNamespaceSlotCmd.Flags().StringP("checksum", "c", " ", "Checksum")
	publicCreateUserNamespaceSlotCmd.Flags().StringP("customAttribute", "c", " ", "Custom attribute")
	publicCreateUserNamespaceSlotCmd.Flags().StringP("file", "f", " ", "File")
	publicCreateUserNamespaceSlotCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicCreateUserNamespaceSlotCmd.MarkFlagRequired("namespace")
	publicCreateUserNamespaceSlotCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicCreateUserNamespaceSlotCmd.MarkFlagRequired("userId")
	publicCreateUserNamespaceSlotCmd.Flags().StringP("label", "l", " ", "Label")
	publicCreateUserNamespaceSlotCmd.Flags().StringP("tags", "t", " ", "Tags")
}
