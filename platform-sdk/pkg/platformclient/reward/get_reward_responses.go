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

// GetRewardReader is a Reader for the GetReward structure.
type GetRewardReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRewardReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRewardOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRewardNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/rewards/{rewardId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRewardOK creates a GetRewardOK with default headers values
func NewGetRewardOK() *GetRewardOK {
	return &GetRewardOK{}
}

/*GetRewardOK handles this case with default header values.

  successful operation
*/
type GetRewardOK struct {
	Payload *platformclientmodels.RewardInfo
}

func (o *GetRewardOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] getRewardOK  %+v", 200, o.ToJSONString())
}

func (o *GetRewardOK) ToJSONString() string {
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

func (o *GetRewardOK) GetPayload() *platformclientmodels.RewardInfo {
	return o.Payload
}

func (o *GetRewardOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetRewardNotFound creates a GetRewardNotFound with default headers values
func NewGetRewardNotFound() *GetRewardNotFound {
	return &GetRewardNotFound{}
}

/*GetRewardNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>34041</td><td>Reward [{rewardId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type GetRewardNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *GetRewardNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/rewards/{rewardId}][%d] getRewardNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetRewardNotFound) ToJSONString() string {
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

func (o *GetRewardNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetRewardNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
