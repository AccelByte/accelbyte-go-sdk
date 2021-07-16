package service

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/slot"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/runtime/client"
	"github.com/sirupsen/logrus"
	"io"
)

type SlotService struct {
	SocialServiceClient *socialclient.JusticeSocialService
	TokenRepository     repository.TokenRepository
}

func (s *SlotService) GetSlotData(namespace, userId, slotId string, writer io.Writer) (io.Writer, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot.GetSlotDataParams{
		Namespace: namespace,
		SlotID:    slotId,
		UserID:    userId,
	}
	ok, notFound, err := s.SocialServiceClient.Slot.GetSlotData(params, client.BearerToken(*token.AccessToken), writer)
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) GetUserNamespaceSlots(namespace, userId string) ([]*socialclientmodels.SlotInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot.GetUserNamespaceSlotsParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.Slot.GetUserNamespaceSlots(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicGetSlotData(namespace, userId, slotId string, writer io.Writer) (io.Writer, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot.PublicGetSlotDataParams{
		Namespace: namespace,
		SlotID:    slotId,
		UserID:    userId,
	}
	ok, notFound, err := s.SocialServiceClient.Slot.PublicGetSlotData(params, client.BearerToken(*token.AccessToken), writer)
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicUpdateUserNamespaceSlot(namespace, userId, slotId string, checksum, customAttribute, label *string, tags []string, file runtime.NamedReadCloser) (*socialclientmodels.SlotInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot.PublicUpdateUserNamespaceSlotParams{
		Checksum:        checksum,
		CustomAttribute: customAttribute,
		File:            file,
		Label:           label,
		Namespace:       namespace,
		SlotID:          slotId,
		Tags:            tags,
		UserID:          userId,
	}
	ok, badRequest, notFound, err := s.SocialServiceClient.Slot.PublicUpdateUserNamespaceSlot(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, badRequest
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicDeleteUserNamespaceSlot(namespace, userId, slotId string) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &slot.PublicDeleteUserNamespaceSlotParams{
		Namespace: namespace,
		SlotID:    slotId,
		UserID:    userId,
	}
	_, notFound, err := s.SocialServiceClient.Slot.PublicDeleteUserNamespaceSlot(params, client.BearerToken(*token.AccessToken))
	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return notFound
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *SlotService) PublicGetUserNamespaceSlots(namespace, userId string) ([]*socialclientmodels.SlotInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot.PublicGetUserNamespaceSlotsParams{
		Namespace: namespace,
		UserID:    userId,
	}
	ok, err := s.SocialServiceClient.Slot.PublicGetUserNamespaceSlots(params, client.BearerToken(*token.AccessToken))
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}

func (s *SlotService) PublicCreateUserNamespaceSlot(namespace, userId string, checksum, customAttribute, label *string, tags []string, file runtime.NamedReadCloser) error {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return err
	}
	params := &slot.PublicCreateUserNamespaceSlotParams{
		Checksum:        checksum,
		CustomAttribute: customAttribute,
		File:            file,
		Label:           label,
		Namespace:       namespace,
		Tags:            tags,
		UserID:          userId,
	}
	_, badRequest, conflict, err := s.SocialServiceClient.Slot.PublicCreateUserNamespaceSlot(params, client.BearerToken(*token.AccessToken))
	if badRequest != nil {
		errorMsg, _ := json.Marshal(*badRequest.GetPayload())
		logrus.Error(string(errorMsg))
		return badRequest
	}
	if conflict != nil {
		errorMsg, _ := json.Marshal(*conflict.GetPayload())
		logrus.Error(string(errorMsg))
		return conflict
	}
	if err != nil {
		logrus.Error(err)
		return err
	}
	return nil
}

func (s *SlotService) PublicUpdateUserNamespaceSlotMetadata(namespace, userId, slotId string, content *socialclientmodels.SlotMetadataUpdate) (*socialclientmodels.SlotInfo, error) {
	token, err := s.TokenRepository.GetToken()
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	params := &slot.PublicUpdateUserNamespaceSlotMetadataParams{
		Body:      content,
		Namespace: namespace,
		SlotID:    slotId,
		UserID:    userId,
	}
	ok, notFound, err := s.SocialServiceClient.Slot.PublicUpdateUserNamespaceSlotMetadata(params, client.BearerToken(*token.AccessToken))

	if notFound != nil {
		errorMsg, _ := json.Marshal(*notFound.GetPayload())
		logrus.Error(string(errorMsg))
		return nil, notFound
	}
	if err != nil {
		logrus.Error(err)
		return nil, err
	}
	return ok.GetPayload(), nil
}
