// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gameProfile

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/game_profile"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicUpdateAttributeCmd represents the PublicUpdateAttribute command
var PublicUpdateAttributeCmd = &cobra.Command{
	Use:   "publicUpdateAttribute",
	Short: "Public update attribute",
	Long:  `Public update attribute`,
	RunE: func(cmd *cobra.Command, args []string) error {
		gameProfileService := &social.GameProfileService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		attributeName, _ := cmd.Flags().GetString("attributeName")
		namespace, _ := cmd.Flags().GetString("namespace")
		profileId, _ := cmd.Flags().GetString("profileId")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.Attribute
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &game_profile.PublicUpdateAttributeParams{
			Body:          body,
			AttributeName: attributeName,
			Namespace:     namespace,
			ProfileID:     profileId,
			UserID:        userId,
		}
		ok, err := gameProfileService.PublicUpdateAttributeShort(input)
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
	PublicUpdateAttributeCmd.Flags().StringP("body", "", "", "Body")
	PublicUpdateAttributeCmd.Flags().StringP("attributeName", "", "", "Attribute name")
	_ = PublicUpdateAttributeCmd.MarkFlagRequired("attributeName")
	PublicUpdateAttributeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicUpdateAttributeCmd.MarkFlagRequired("namespace")
	PublicUpdateAttributeCmd.Flags().StringP("profileId", "", "", "Profile id")
	_ = PublicUpdateAttributeCmd.MarkFlagRequired("profileId")
	PublicUpdateAttributeCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicUpdateAttributeCmd.MarkFlagRequired("userId")
}
