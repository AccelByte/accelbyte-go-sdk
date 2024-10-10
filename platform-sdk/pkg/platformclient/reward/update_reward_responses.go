// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reward

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// UpdateRewardReader is a Reader for the UpdateReward structure.
type UpdateRewardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateRewardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateRewardOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateRewardBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateRewardNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateRewardConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateRewardOK creates a UpdateRewardOK with default headers values
func NewUpdateRewardOK() *UpdateRewardOK {
	return &UpdateRewardOK{}
}

/*UpdateRewardOK handles this case with default header values.

  successful operation
*/
type UpdateRewardOK struct {
	Payload *platformclientmodels.RewardInfo
}

func (o *UpdateRewardOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] updateRewardOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateRewardOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateRewardOK) GetPayload() *platformclientmodels.RewardInfo {
	return o.Payload
}

func (o *UpdateRewardOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RewardInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRewardBadRequest creates a UpdateRewardBadRequest with default headers values
func NewUpdateRewardBadRequest() *UpdateRewardBadRequest {
	return &UpdateRewardBadRequest{}
}

/*UpdateRewardBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34023</td><td>Reward Item [{itemId}] with item type [{itemType}] is not supported for duration or endDate</td></tr><tr><td>34027</td><td>Reward Item [{sku}] with item type [{itemType}] is not supported for duration or endDate</td></tr></table>
*/
type UpdateRewardBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateRewardBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] updateRewardBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateRewardBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateRewardBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateRewardBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRewardNotFound creates a UpdateRewardNotFound with default headers values
func NewUpdateRewardNotFound() *UpdateRewardNotFound {
	return &UpdateRewardNotFound{}
}

/*UpdateRewardNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34041</td><td>Reward [{rewardId}] does not exist in namespace [{namespace}]</td></tr><tr><td>34042</td><td>Reward item [{itemId}] does not exist in namespace [{namespace}]</td></tr><tr><td>34044</td><td>Reward item [{sku}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateRewardNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateRewardNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] updateRewardNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateRewardNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateRewardNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateRewardNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRewardConflict creates a UpdateRewardConflict with default headers values
func NewUpdateRewardConflict() *UpdateRewardConflict {
	return &UpdateRewardConflict{}
}

/*UpdateRewardConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34072</td><td>Duplicate reward condition [{rewardConditionName}] found in reward [{rewardCode}]</td></tr><tr><td>34074</td><td>Reward Item [{itemId}] duration and end date can’t be set at the same time</td></tr><tr><td>34076</td><td>Reward Item [{sku}] duration and end date can’t be set at the same time</td></tr></table>
*/
type UpdateRewardConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateRewardConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] updateRewardConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateRewardConflict) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateRewardConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateRewardConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
