// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package slot

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateUserNamespaceSlotMetadataCmd represents the PublicUpdateUserNamespaceSlotMetadata command
var PublicUpdateUserNamespaceSlotMetadataCmd = &cobra.Command{
	Use:   "publicUpdateUserNamespaceSlotMetadata",
	Short: "Public update user namespace slot metadata",
	Long:  `Public update user namespace slot metadata`,
	RunE: func(cmd *cobra.Command, args []string) error {
		slotService := &social.SlotService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		slotId, _ := cmd.Flags().GetString("slotId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.SlotMetadataUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &slot.PublicUpdateUserNamespaceSlotMetadataParams{
			Body:      body,
			Namespace: namespace,
			SlotID:    slotId,
			UserID:    userId,
		}
		ok, err := slotService.PublicUpdateUserNamespaceSlotMetadataShort(input)
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
	PublicUpdateUserNamespaceSlotMetadataCmd.Flags().String("body", "", "Body")
	PublicUpdateUserNamespaceSlotMetadataCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicUpdateUserNamespaceSlotMetadataCmd.MarkFlagRequired("namespace")
	PublicUpdateUserNamespaceSlotMetadataCmd.Flags().String("slotId", "", "Slot id")
	_ = PublicUpdateUserNamespaceSlotMetadataCmd.MarkFlagRequired("slotId")
	PublicUpdateUserNamespaceSlotMetadataCmd.Flags().String("userId", "", "User id")
	_ = PublicUpdateUserNamespaceSlotMetadataCmd.MarkFlagRequired("userId")
}
