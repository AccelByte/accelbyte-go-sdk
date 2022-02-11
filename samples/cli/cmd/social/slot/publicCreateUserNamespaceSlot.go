// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package slot

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
	"os"
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
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &slot.PublicCreateUserNamespaceSlotParams{
			Checksum:        &checksum,
			CustomAttribute: &customAttribute,
			File:            file,
			Namespace:       namespace,
			UserID:          userId,
			Label:           &label,
			Tags:            tags,
			HTTPClient:      httpClient,
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
	PublicCreateUserNamespaceSlotCmd.Flags().StringP("checksum", "", "", "Checksum")
	PublicCreateUserNamespaceSlotCmd.Flags().StringP("customAttribute", "", "", "Custom attribute")
	PublicCreateUserNamespaceSlotCmd.Flags().StringP("file", "", "", "File")
	PublicCreateUserNamespaceSlotCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicCreateUserNamespaceSlotCmd.MarkFlagRequired("namespace")
	PublicCreateUserNamespaceSlotCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicCreateUserNamespaceSlotCmd.MarkFlagRequired("userId")
	PublicCreateUserNamespaceSlotCmd.Flags().StringP("label", "", "", "Label")
	PublicCreateUserNamespaceSlotCmd.Flags().StringP("tags", "", "", "Tags")
}
