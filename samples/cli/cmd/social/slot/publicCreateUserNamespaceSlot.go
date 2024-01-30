// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

import (
	"encoding/json"
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicCreateUserNamespaceSlotCmd represents the PublicCreateUserNamespaceSlot command
var PublicCreateUserNamespaceSlotCmd = &cobra.Command{
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
		outputFile := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", outputFile)
		file, err := os.Open(outputFile)
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
		errCreated := slotService.PublicCreateUserNamespaceSlotShort(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicCreateUserNamespaceSlotCmd.Flags().String("checksum", "", "Checksum")
	PublicCreateUserNamespaceSlotCmd.Flags().String("customAttribute", "", "Custom attribute")
	PublicCreateUserNamespaceSlotCmd.Flags().String("file", "", "File")
	PublicCreateUserNamespaceSlotCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicCreateUserNamespaceSlotCmd.MarkFlagRequired("namespace")
	PublicCreateUserNamespaceSlotCmd.Flags().String("userId", "", "User id")
	_ = PublicCreateUserNamespaceSlotCmd.MarkFlagRequired("userId")
	PublicCreateUserNamespaceSlotCmd.Flags().String("label", "", "Label")
	PublicCreateUserNamespaceSlotCmd.Flags().String("tags", "", "Tags")
}
